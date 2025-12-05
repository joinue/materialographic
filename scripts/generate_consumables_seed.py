#!/usr/bin/env python3
"""
Generate SQL seed migration for consumables from pace-consumables.csv
"""

import csv
import re
import sys

def parse_size_from_description(description, item_id):
    """Extract size in mm and inches from description or item_id"""
    size_mm = None
    size_inches = None
    
    # First, try to extract from item_id patterns (most reliable)
    # MAX-XXX250, MAX-XXX300, etc. or DMAX-250, DMAX-305, etc.
    size_match = re.search(r'(\d{3,4})$', item_id)
    if size_match:
        size_num = int(size_match.group(1))
        if size_num in [250, 300, 350, 400, 305]:
            size_mm = size_num
            # Convert to inches (250mm = 10", 300mm = 12", 350mm = 14", 400mm = 16")
            if size_num == 250:
                size_inches = 10
            elif size_num == 300 or size_num == 305:
                size_inches = 12
            elif size_num == 350:
                size_inches = 14
            elif size_num == 400:
                size_inches = 16
    
    # Also try to extract from description (for items without size in item_id)
    if not size_inches:
        inch_match = re.search(r'(\d+)[\s-]?inch', description, re.IGNORECASE)
        if inch_match:
            size_inches = int(inch_match.group(1))
            # Convert to mm
            if not size_mm:
                size_mm = size_inches * 25  # Approximate conversion
    
    # For wafering blades, extract from description
    if 'wafering' in description.lower() and not size_inches:
        inch_match = re.search(r'(\d+)[\s-]?inch', description, re.IGNORECASE)
        if inch_match:
            size_inches = int(inch_match.group(1))
    
    return size_mm, size_inches

def parse_grit_size(description):
    """Extract grit size from description"""
    grit_patterns = [
        (r'(\d+)\s*grit', 'grit'),
        (r'P(\d+)', 'p-grit'),
        (r'(\d+)\s*μm', 'micron'),
        (r'(\d+)\s*um', 'micron'),
        (r'(\d+)\s*micron', 'micron'),
    ]
    
    for pattern, grit_type in grit_patterns:
        match = re.search(pattern, description, re.IGNORECASE)
        if match:
            return f"{match.group(1)} {grit_type}"
    
    # Check for coarse/medium/fine
    if re.search(r'coarse', description, re.IGNORECASE):
        return 'coarse'
    elif re.search(r'fine', description, re.IGNORECASE):
        return 'fine'
    elif re.search(r'medium', description, re.IGNORECASE):
        return 'medium'
    
    return None

def parse_material_composition(description, item_id):
    """Extract material composition from description"""
    composition = None
    
    if 'diamond' in description.lower():
        composition = 'diamond'
    elif 'silicon carbide' in description.lower() or 'sic' in description.lower() or 'SiC' in description:
        composition = 'silicon-carbide'
    elif 'alumina' in description.lower() or 'al2o3' in description.lower():
        composition = 'alumina'
    elif 'cbn' in description.lower():
        composition = 'cbn'
    elif 'zirconia' in description.lower():
        composition = 'zirconia'
    elif 'cerium' in description.lower():
        composition = 'cerium-oxide'
    elif 'colloidal silica' in description.lower():
        composition = 'colloidal-silica'
    
    return composition

def determine_type(category, subcategory, description):
    """Determine the type of consumable"""
    type_map = {
        'Sectioning': {
            'Abrasive Blades': 'abrasive-blade',
            'Abrasive Blades / Diamond': 'diamond-blade',
            'Wafering Blades': 'wafering-blade',
            'Cutting Fluids': 'cutting-fluid',
            'Dressing Sticks': 'dressing-stick',
        },
        'Mounting': {
            'Resins': 'mounting-resin',
            'Molds': 'mounting-mold',
            'Hardeners': 'hardener',
            'Mold Release': 'mold-release',
            'Cups': 'mounting-cup',
            'Specimen Clips': 'specimen-clip',
            'Accessories': 'mounting-accessory',
        },
        'Grinding & Polishing': {
            'Grinding Papers / SiC / PSA': 'grinding-paper-sic',
            'Grinding Papers / SiC / Plain Back': 'grinding-paper-sic',
            'Grinding Papers / Alumina / PSA': 'grinding-paper-alumina',
            'Grinding Papers / Alumina / Plain Back': 'grinding-paper-alumina',
            'Diamond Grinding Disks': 'diamond-grinding-disk',
            'Diamond Lapping Films': 'diamond-lapping-film',
            'Polishing Pads': 'polishing-pad',
            'Diamond Paste': 'diamond-paste',
            'Diamond Abrasive': 'diamond-abrasive',
            'Alumina Polishing Slurry': 'alumina-slurry',
            'Colloidal Silica': 'colloidal-silica',
        },
        'Etching': {
            'General-Purpose Etchants': 'etchant',
            'General Steel Etchants': 'etchant',
            'Stainless Steel Etchant': 'etchant',
            'Aluminum & Light Metal Etchants': 'etchant',
            'Titanium Etchants': 'etchant',
            'Copper & Brass Etchants': 'etchant',
            'Nickel & Nickel-Alloy Etchants': 'etchant',
        },
        'Cleaning': {
            'Ultrasonic Degreasing': 'cleaning-solution',
            'Anti-Corrosion Additive': 'anti-corrosion',
            'Protective Coating Spray': 'protective-coating',
        },
        'Hardness Testing': {
            'Rockwell': 'hardness-indenter',
            'Brinell': 'hardness-indenter',
            'Microhardness': 'hardness-indenter',
            'Anvils': 'hardness-anvil',
        },
    }
    
    return type_map.get(category, {}).get(subcategory, 'other')

def determine_suitability(category, subcategory, description, item_id):
    """Determine suitability attributes based on category and description"""
    suitable_for_material_types = []
    suitable_for_hardness = []
    compatible_with_equipment = []
    
    # Sectioning blades
    if category == 'Sectioning' and 'Blade' in subcategory:
        # Determine compatible equipment based on size
        size_mm, size_inches = parse_size_from_description(description, item_id)
        if size_mm:
            if size_mm == 250:
                compatible_with_equipment = ['MEGA-M250S', 'MEGA-T250S']
            elif size_mm == 300:
                compatible_with_equipment = ['MEGA-T300S', 'MEGA-T300A']
            elif size_mm == 350:
                compatible_with_equipment = ['MEGA-T350S', 'MEGA-T350A']
            elif size_mm == 400:
                compatible_with_equipment = ['MEGA-T400S', 'MEGA-T400A']
        
        # Material type suitability from description
        desc_lower = description.lower()
        if 'titanium' in desc_lower or 'zirconium' in desc_lower or 'nickel' in desc_lower:
            suitable_for_material_types = ['titanium', 'nickel-alloys', 'hard-non-ferrous']
            suitable_for_hardness = ['hard', 'very-hard']
        elif 'aluminum' in desc_lower or 'brass' in desc_lower or 'zinc' in desc_lower:
            suitable_for_material_types = ['aluminum', 'copper', 'brass', 'soft-non-ferrous']
            suitable_for_hardness = ['soft', 'medium']
        elif 'hardened' in desc_lower or 'vhs' in item_id.lower():
            suitable_for_material_types = ['steel', 'hardened-steel']
            suitable_for_hardness = ['hard', 'very-hard']
        elif 'general' in desc_lower or 'steel' in desc_lower:
            suitable_for_material_types = ['steel', 'ferrous']
            suitable_for_hardness = ['soft', 'medium', 'hard']
    
    # Mounting resins
    elif category == 'Mounting' and subcategory == 'Resins':
        compatible_with_equipment = ['TP-7100S', 'TP-7500S', 'TeraVAC', 'TeraVAC Pro', 'TeraUV']
        suitable_for_material_types = ['all']
    
    # Grinding papers
    elif category == 'Grinding & Polishing' and 'Grinding Papers' in subcategory:
        compatible_with_equipment = ['NANO-1000S', 'NANO-1200S', 'NANO-2000S', 'PENTA-5000A']
        if 'SiC' in subcategory:
            suitable_for_hardness = ['hard', 'very-hard']
        else:
            suitable_for_hardness = ['soft', 'medium', 'hard']
    
    # Polishing consumables
    elif category == 'Grinding & Polishing' and ('Polishing' in subcategory or 'Diamond' in subcategory):
        compatible_with_equipment = ['NANO-1000S', 'NANO-1200S', 'NANO-2000S', 'FEMTO-1100S', 'FEMTO-1500S', 'FEMTO-2200S', 'FEMTO-2500S', 'GIGA-S']
    
    return suitable_for_material_types, suitable_for_hardness, compatible_with_equipment

def escape_sql_string(s):
    """Escape single quotes for SQL"""
    if s is None:
        return 'NULL'
    return "'" + str(s).replace("'", "''") + "'"

def generate_sql():
    """Generate SQL INSERT statements from CSV"""
    
    sql_lines = [
        "-- Seed all consumables from pace-consumables.csv",
        "-- This migration adds all consumable items with proper categorization and attributes",
        "",
        "INSERT INTO consumables (item_id, name, sku, slug, description, category, subcategory, is_pace_product, list_price,",
        "  size_mm, size_inches, grit_size, material_composition, type,",
        "  suitable_for_material_types, suitable_for_hardness, compatible_with_equipment, tags, is_active, status)",
        "VALUES"
    ]
    
    values = []
    seen_item_ids = set()  # Track item_ids to avoid duplicates
    seen_slugs = {}  # Track slugs to ensure uniqueness
    
    with open('pace-consumables.csv', 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            if not row.get('is_active') or row.get('is_active', '').upper() != 'TRUE':
                continue
            
            item_id = row['item_id'].strip()
            
            # Skip duplicates - keep first occurrence
            if item_id in seen_item_ids:
                continue  # Silently skip duplicates
            
            seen_item_ids.add(item_id)
            
            name = row['name'].strip()
            sku = row.get('sku', '').strip() or None
            description = row['description'].strip()
            category = row['category'].strip().lower()
            subcategory = row['subcategory'].strip()
            list_price = row.get('list_price', '').strip()
            tags_str = row.get('tags', '').strip()
            
            # Map category names
            category_map = {
                'sectioning': 'sectioning',
                'mounting': 'mounting',
                'grinding & polishing': 'polishing',  # Note: using 'polishing' as main category
                'etching': 'etching',
                'cleaning': 'cleaning',
                'hardness testing': 'hardness',
            }
            category = category_map.get(category, category)
            
            # Generate slug - ensure uniqueness
            base_slug = item_id.lower().replace(' ', '-').replace('_', '-')
            slug = base_slug
            counter = 1
            while slug in seen_slugs:
                # If slug already exists, append counter to make it unique
                slug = f"{base_slug}-{counter}"
                counter += 1
            seen_slugs[slug] = item_id
            
            # Parse attributes
            size_mm, size_inches = parse_size_from_description(description, item_id)
            grit_size = parse_grit_size(description)
            material_composition = parse_material_composition(description, item_id)
            consumable_type = determine_type(row['category'], subcategory, description)
            
            # Determine suitability
            suitable_for_material_types, suitable_for_hardness, compatible_with_equipment = determine_suitability(
                row['category'], subcategory, description, item_id
            )
            
            # Parse tags
            tags = [t.strip() for t in tags_str.split(',')] if tags_str else []
            
            # Parse price
            try:
                price = float(list_price) if list_price else None
            except:
                price = None
            
            # Build SQL value
            value_parts = [
                escape_sql_string(item_id),
                escape_sql_string(name),
                escape_sql_string(sku),
                escape_sql_string(slug),
                escape_sql_string(description),
                escape_sql_string(category),
                escape_sql_string(subcategory),
                'true',  # is_pace_product
                str(price) if price else 'NULL',
                str(size_mm) if size_mm else 'NULL',
                str(size_inches) if size_inches else 'NULL',
                escape_sql_string(grit_size),
                escape_sql_string(material_composition),
                escape_sql_string(consumable_type),
                f"ARRAY[{', '.join([escape_sql_string(m) for m in suitable_for_material_types])}]" if suitable_for_material_types else 'ARRAY[]::TEXT[]',
                f"ARRAY[{', '.join([escape_sql_string(h) for h in suitable_for_hardness])}]" if suitable_for_hardness else 'ARRAY[]::TEXT[]',
                f"ARRAY[{', '.join([escape_sql_string(e) for e in compatible_with_equipment])}]" if compatible_with_equipment else 'ARRAY[]::TEXT[]',
                f"ARRAY[{', '.join([escape_sql_string(t) for t in tags])}]" if tags else 'ARRAY[]::TEXT[]',
                'true',  # is_active
                "'active'",  # status
            ]
            
            values.append(f"  ({', '.join(value_parts)})")
    
    # Join all values with commas
    for i, value in enumerate(values):
        if i < len(values) - 1:
            sql_lines.append(value + ',')
        else:
            sql_lines.append(value)
    sql_lines.append("")
    sql_lines.append("ON CONFLICT (item_id) DO UPDATE SET")
    sql_lines.append("  name = EXCLUDED.name,")
    sql_lines.append("  description = EXCLUDED.description,")
    sql_lines.append("  category = EXCLUDED.category,")
    sql_lines.append("  subcategory = EXCLUDED.subcategory,")
    sql_lines.append("  list_price = EXCLUDED.list_price,")
    sql_lines.append("  size_mm = EXCLUDED.size_mm,")
    sql_lines.append("  size_inches = EXCLUDED.size_inches,")
    sql_lines.append("  updated_at = NOW();")
    
    return '\n'.join(sql_lines)

if __name__ == '__main__':
    sql = generate_sql()
    print(sql)

