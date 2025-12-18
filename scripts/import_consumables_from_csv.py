#!/usr/bin/env python3
"""
Import consumables from CSV and generate SQL insert statements
"""
import csv
import re
from urllib.parse import quote

def clean_price(price_str):
    """Extract numeric price from string like '$295.00' or ' $1,350.00 '"""
    if not price_str:
        return None
    # Remove $, spaces, and commas
    cleaned = price_str.strip().replace('$', '').replace(',', '').strip()
    try:
        return float(cleaned)
    except ValueError:
        return None

def generate_slug(name):
    """Generate URL-friendly slug from name"""
    slug = name.lower()
    slug = re.sub(r'[^a-z0-9]+', '-', slug)
    slug = re.sub(r'^-+|-+$', '', slug)
    return slug

def extract_blade_size(description):
    """Extract blade size from description"""
    # Look for patterns like "10-inch", "12-inch", "250", "300", etc.
    # Try inches first
    inch_match = re.search(r'(\d+)[\s-]*inch', description, re.IGNORECASE)
    if inch_match:
        inches = int(inch_match.group(1))
        mm = inches * 25.4  # Convert to mm
        return int(mm), inches
    
    # Try mm
    mm_match = re.search(r'(\d+)[\s-]*mm', description, re.IGNORECASE)
    if mm_match:
        mm = int(mm_match.group(1))
        inches = round(mm / 25.4)
        return mm, inches
    
    # Try numeric codes like 250, 300, 350, 400 (common blade sizes)
    code_match = re.search(r'\b(250|300|350|400)\b', description)
    if code_match:
        mm = int(code_match.group(1))
        inches = round(mm / 25.4)
        return mm, inches
    
    return None, None

def extract_grit_size(description):
    """Extract grit size from description"""
    # Look for patterns like "180 grit", "P120", "0.5 micron", etc.
    grit_match = re.search(r'(\d+)\s*grit', description, re.IGNORECASE)
    if grit_match:
        return grit_match.group(1)
    
    p_match = re.search(r'P(\d+)', description, re.IGNORECASE)
    if p_match:
        return f"P{p_match.group(1)}"
    
    micron_match = re.search(r'(\d+\.?\d*)\s*micron', description, re.IGNORECASE)
    if micron_match:
        return f"{micron_match.group(1)} micron"
    
    return None

def extract_material_composition(description):
    """Extract material composition from description"""
    # Look for common patterns
    if 'alumina' in description.lower() and 'resin' in description.lower():
        if 'rubber' in description.lower():
            return 'alumina/resin-rubber'
        return 'alumina/resin'
    elif 'silicon carbide' in description.lower() or 'sic' in description.lower():
        if 'rubber' in description.lower():
            return 'silicon-carbide/resin-rubber'
        return 'silicon-carbide/resin'
    elif 'diamond' in description.lower():
        return 'diamond'
    elif 'cbn' in description.lower():
        return 'CBN'
    return None

def extract_size_inches(description):
    """Extract size in inches from description"""
    # Look for patterns like "8-inch", "10-inch", etc.
    match = re.search(r'(\d+)[\s-]*inch', description, re.IGNORECASE)
    if match:
        return int(match.group(1))
    return None

def escape_sql_string(s):
    """Escape single quotes for SQL"""
    if s is None:
        return 'NULL'
    return "'" + str(s).replace("'", "''") + "'"

def normalize_category(category):
    """Normalize category name to match database values"""
    category_map = {
        'Sectioning': 'sectioning',
        'Compression Mounting': 'mounting',
        'Castable Mounting': 'mounting',
        'Grinding & Polishing': 'grinding-polishing',
        'Etchants': 'etchants',
        'Cleaning': 'cleaning',
        'Hardness Testing': 'hardness-testing',
    }
    return category_map.get(category, category.lower().replace(' ', '-'))

def normalize_subcategory(subcategory):
    """Normalize subcategory name"""
    if not subcategory:
        return None
    return subcategory.strip()

def process_consumables_csv(filename):
    """Process CSV and generate SQL"""
    
    base_inserts = []
    sectioning_inserts = []
    mounting_inserts = []
    grinding_polishing_inserts = []
    etchants_inserts = []
    cleaning_inserts = []
    hardness_testing_inserts = []
    
    with open(filename, 'r', encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)
        
        for row in reader:
            # Handle BOM in column name
            name_key = 'name' if 'name' in row else '\ufeffname'
            name = row.get(name_key, '').strip()
            sku = row.get('sku', '').strip()
            description = row.get('description', '').strip()
            category = row.get('category', '').strip()
            subcategory = row.get('subcategory', '').strip()
            price_str = row.get(' price ', '').strip()
            
            # Skip empty rows
            if not name or not category:
                continue
            
            # Generate item_id and slug
            item_id = sku if sku else name
            slug = generate_slug(item_id)
            
            # Clean price
            price = clean_price(price_str)
            
            # Normalize category
            normalized_category = normalize_category(category)
            normalized_subcategory = normalize_subcategory(subcategory)
            
            # Generate base consumable insert
            base_insert = f"""INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  {escape_sql_string(name)},
  {escape_sql_string(item_id)},
  {escape_sql_string(sku) if sku else 'NULL'},
  {escape_sql_string(slug)},
  {escape_sql_string(description) if description else 'NULL'},
  {escape_sql_string(normalized_category)},
  {escape_sql_string(normalized_subcategory) if normalized_subcategory else 'NULL'},
  true,
  {price if price else 'NULL'},
  'active',
  true,
  NOW(),
  NOW()
);"""
            
            base_inserts.append(base_insert)
            
            # Generate category-specific inserts based on category
            if normalized_category == 'sectioning':
                blade_size_mm, blade_size_inches = extract_blade_size(description or name)
                grit_size = extract_grit_size(description or name)
                material_composition = extract_material_composition(description or name)
                
                # Determine blade type
                blade_type = None
                if 'wafering' in (description or name).lower():
                    blade_type = 'wafering'
                elif 'diamond' in (description or name).lower():
                    blade_type = 'diamond'
                elif 'abrasive' in (description or name).lower():
                    blade_type = 'abrasive'
                elif 'cutting fluid' in (description or name).lower():
                    blade_type = None  # Not a blade
                elif 'dressing' in (description or name).lower():
                    blade_type = None  # Not a blade
                
                # Determine if it's a fluid or dressing stick
                is_fluid = 'fluid' in (description or name).lower() or 'cutting fluid' in (description or name).lower()
                is_dressing = 'dressing' in (description or name).lower()
                
                if is_fluid:
                    # Extract volume
                    volume_match = re.search(r'(\d+)\s*(oz|ml)', (description or name), re.IGNORECASE)
                    volume_ml = None
                    volume_oz = None
                    if volume_match:
                        vol = int(volume_match.group(1))
                        unit = volume_match.group(2).lower()
                        if unit == 'oz':
                            volume_oz = vol
                            volume_ml = int(vol * 29.5735)
                        else:
                            volume_ml = vol
                            volume_oz = int(vol / 29.5735)
                    
                    sectioning_insert = f"""INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', {volume_ml if volume_ml else 'NULL'}, {volume_oz if volume_oz else 'NULL'}, 
  CASE WHEN {escape_sql_string(description or name)} ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                elif is_dressing:
                    stick_size_mm, stick_size_inches = extract_blade_size(description or name)
                    sectioning_insert = f"""INSERT INTO consumables_sectioning (
  consumable_id, stick_size_mm, stick_size_inches, stick_material
) SELECT id, {stick_size_mm if stick_size_mm else 'NULL'}, {stick_size_inches if stick_size_inches else 'NULL'}, 
  CASE 
    WHEN {escape_sql_string(description or name)} ILIKE '%aluminum%oxide%' THEN 'aluminum-oxide'
    WHEN {escape_sql_string(description or name)} ILIKE '%silicon%carbide%' THEN 'silicon-carbide'
    ELSE 'aluminum-oxide'
  END
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                elif blade_type:
                    sectioning_insert = f"""INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, {blade_size_mm if blade_size_mm else 'NULL'}, {blade_size_inches if blade_size_inches else 'NULL'}, 
  {escape_sql_string(blade_type)}, {escape_sql_string(grit_size) if grit_size else 'NULL'}, 
  {escape_sql_string(material_composition) if material_composition else 'NULL'}
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                else:
                    sectioning_insert = f"""INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                
                sectioning_inserts.append(sectioning_insert)
            
            elif normalized_category == 'mounting':
                # Determine mounting type
                mounting_type = 'compression' if 'compression' in category.lower() else 'castable'
                
                # Extract resin type
                resin_type = None
                if 'phenolic' in (description or name).lower():
                    resin_type = 'phenolic'
                elif 'epoxy' in (description or name).lower():
                    resin_type = 'epoxy'
                elif 'acrylic' in (description or name).lower():
                    resin_type = 'acrylic'
                elif 'diallyl' in (description or name).lower():
                    resin_type = 'diallyl-phthalate'
                elif 'conductive' in (description or name).lower():
                    resin_type = 'conductive'
                
                # Extract color
                resin_color = None
                if 'black' in (description or name).lower():
                    resin_color = 'black'
                elif 'red' in (description or name).lower():
                    resin_color = 'red'
                elif 'green' in (description or name).lower():
                    resin_color = 'green'
                elif 'transparent' in (description or name).lower() or 'clear' in (description or name).lower():
                    resin_color = 'transparent'
                elif 'blue' in (description or name).lower():
                    resin_color = 'blue'
                
                # Extract form
                resin_form = None
                if 'powder' in (description or name).lower():
                    resin_form = 'powder'
                elif 'liquid' in (description or name).lower():
                    resin_form = 'liquid'
                elif 'kit' in (description or name).lower():
                    resin_form = 'kit'
                
                # Extract weight/volume
                weight_match = re.search(r'(\d+\.?\d*)\s*(kg|lbs|lb)', (description or name), re.IGNORECASE)
                weight_kg = None
                weight_lbs = None
                if weight_match:
                    weight_val = float(weight_match.group(1))
                    unit = weight_match.group(2).lower()
                    if unit in ['kg', 'kg']:
                        weight_kg = weight_val
                        weight_lbs = weight_val * 2.20462
                    else:
                        weight_lbs = weight_val
                        weight_kg = weight_val / 2.20462
                
                volume_match = re.search(r'(\d+)\s*(ml|oz)', (description or name), re.IGNORECASE)
                volume_ml = None
                volume_oz = None
                if volume_match:
                    vol = int(volume_match.group(1))
                    unit = volume_match.group(2).lower()
                    if unit == 'oz':
                        volume_oz = vol
                        volume_ml = int(vol * 29.5735)
                    else:
                        volume_ml = vol
                        volume_oz = int(vol / 29.5735)
                
                # Check for special properties
                is_conductive = 'conductive' in (description or name).lower()
                is_transparent = 'transparent' in (description or name).lower() or 'clear' in (description or name).lower()
                is_glass_reinforced = 'glass' in (description or name).lower() and 'reinforced' in (description or name).lower()
                has_edge_retention = 'edge retention' in (description or name).lower()
                
                # Determine if it's mold release, mold, hardener, or clip
                is_mold_release = 'mold release' in (description or name).lower() or 'release' in subcategory.lower()
                is_mold = 'mold' in subcategory.lower() and 'release' not in subcategory.lower()
                is_hardener = 'hardener' in subcategory.lower()
                is_clip = 'clip' in subcategory.lower()
                
                if is_mold_release:
                    mounting_insert = f"""INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, {escape_sql_string(mounting_type)}, 'silicone', 'liquid'
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                elif is_mold:
                    mounting_insert = f"""INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, {escape_sql_string(mounting_type)}, 'round', 'steel'
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                elif is_hardener:
                    mounting_insert = f"""INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, {escape_sql_string(mounting_type)}, 'standard', {volume_ml if volume_ml else 'NULL'}, {volume_oz if volume_oz else 'NULL'}
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                elif is_clip:
                    mounting_insert = f"""INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, {escape_sql_string(mounting_type)}, 'standard', 'steel'
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                else:
                    mounting_insert = f"""INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, {escape_sql_string(mounting_type)}, 
  {escape_sql_string(resin_type) if resin_type else 'NULL'},
  {escape_sql_string(resin_color) if resin_color else 'NULL'},
  {escape_sql_string(resin_form) if resin_form else 'NULL'},
  {weight_kg if weight_kg else 'NULL'}, {weight_lbs if weight_lbs else 'NULL'},
  {volume_ml if volume_ml else 'NULL'}, {volume_oz if volume_oz else 'NULL'},
  {is_conductive}, {is_transparent}, {is_glass_reinforced}, {has_edge_retention}
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                
                mounting_inserts.append(mounting_insert)
            
            elif normalized_category == 'grinding-polishing':
                # Extract product type
                product_type = None
                if 'disk' in (description or name).lower() or 'disc' in (description or name).lower():
                    product_type = 'disk'
                elif 'paper' in (description or name).lower():
                    product_type = 'paper'
                elif 'film' in (description or name).lower():
                    product_type = 'film'
                elif 'pad' in (description or name).lower():
                    product_type = 'pad'
                elif 'powder' in (description or name).lower():
                    product_type = 'powder'
                elif 'paste' in (description or name).lower():
                    product_type = 'paste'
                elif 'slurry' in (description or name).lower():
                    product_type = 'slurry'
                elif 'belt' in (description or name).lower():
                    product_type = 'belt'
                elif 'roll' in (description or name).lower():
                    product_type = 'roll'
                else:
                    product_type = 'abrasive'
                
                # Extract size
                size_inches = extract_size_inches(description or name)
                grit_size = extract_grit_size(description or name)
                material_composition = extract_material_composition(description or name)
                
                # Extract abrasive type
                abrasive_type = None
                if 'alumina' in (description or name).lower():
                    abrasive_type = 'alumina'
                elif 'silicon carbide' in (description or name).lower() or 'sic' in (description or name).lower():
                    abrasive_type = 'silicon-carbide'
                elif 'diamond' in (description or name).lower():
                    abrasive_type = 'diamond'
                elif 'cerium' in (description or name).lower():
                    abrasive_type = 'cerium-oxide'
                elif 'colloidal silica' in (description or name).lower():
                    abrasive_type = 'colloidal-silica'
                elif 'zirconia' in (description or name).lower():
                    abrasive_type = 'zirconia'
                
                # Extract bond/backing type
                bond_type = None
                backing_type = None
                if 'psa' in (description or name).lower():
                    backing_type = 'PSA'
                elif 'magnetic' in (description or name).lower():
                    if 'stainless' in (description or name).lower() or 'ss' in (description or name).lower():
                        backing_type = 'magnetic-stainless-steel'
                    else:
                        backing_type = 'magnetic-rubber'
                elif 'plain' in (description or name).lower():
                    backing_type = 'plain-back'
                elif 'resin' in (description or name).lower():
                    bond_type = 'resin'
                elif 'metal' in (description or name).lower():
                    bond_type = 'metal'
                elif 'electroplated' in (description or name).lower():
                    bond_type = 'electroplated'
                
                # Extract form
                form = product_type
                if 'paste' in (description or name).lower():
                    form = 'paste'
                elif 'slurry' in (description or name).lower():
                    form = 'slurry'
                elif 'suspension' in (description or name).lower():
                    form = 'suspension'
                elif 'powder' in (description or name).lower():
                    form = 'powder'
                
                # Extract viscosity
                viscosity = None
                if 'low viscosity' in (description or name).lower():
                    viscosity = 'low'
                elif 'high viscosity' in (description or name).lower():
                    viscosity = 'high'
                elif 'water-based' in (description or name).lower():
                    viscosity = 'water-based'
                
                # Check special properties
                is_waterproof = 'waterproof' in (description or name).lower()
                is_electronics_grade = 'electronics' in (description or name).lower()
                is_deagglomerated = 'deagglomerated' in (description or name).lower()
                
                # Extract diamond type
                diamond_type = None
                if 'monocrystalline' in (description or name).lower():
                    diamond_type = 'monocrystalline'
                elif 'polycrystalline' in (description or name).lower():
                    diamond_type = 'polycrystalline'
                
                grinding_polishing_insert = f"""INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, {escape_sql_string(product_type)}, 
  {f'ARRAY[{size_inches}]' if size_inches else 'NULL'},
  {escape_sql_string(grit_size) if grit_size else 'NULL'},
  {escape_sql_string(abrasive_type) if abrasive_type else 'NULL'},
  {escape_sql_string(bond_type) if bond_type else 'NULL'},
  {escape_sql_string(backing_type) if backing_type else 'NULL'},
  {escape_sql_string(form) if form else 'NULL'},
  {escape_sql_string(viscosity) if viscosity else 'NULL'},
  {escape_sql_string(diamond_type) if diamond_type else 'NULL'},
  {is_waterproof}, {is_electronics_grade}, {is_deagglomerated}
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                
                grinding_polishing_inserts.append(grinding_polishing_insert)
            
            elif normalized_category == 'etchants':
                etchants_insert = f"""INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                etchants_inserts.append(etchants_insert)
            
            elif normalized_category == 'cleaning':
                cleaning_insert = f"""INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                cleaning_inserts.append(cleaning_insert)
            
            elif normalized_category == 'hardness-testing':
                # Extract product type
                product_type = None
                if 'indenter' in (description or name).lower():
                    product_type = 'indenter'
                elif 'anvil' in (description or name).lower():
                    product_type = 'anvil'
                elif 'test block' in (description or name).lower() or 'block' in (description or name).lower():
                    product_type = 'test-block'
                elif 'calibration' in (description or name).lower():
                    product_type = 'calibration-standard'
                else:
                    product_type = 'anvil'  # Default
                
                # Extract test type
                test_type = None
                if 'rockwell' in (description or name).lower():
                    test_type = 'rockwell'
                elif 'brinell' in (description or name).lower():
                    test_type = 'brinell'
                elif 'vickers' in (description or name).lower():
                    test_type = 'vickers'
                elif 'knoop' in (description or name).lower():
                    test_type = 'knoop'
                elif 'superficial' in (description or name).lower():
                    test_type = 'superficial'
                
                hardness_testing_insert = f"""INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, {escape_sql_string(product_type)}, {escape_sql_string(test_type) if test_type else 'NULL'}
FROM consumables WHERE item_id = {escape_sql_string(item_id)};"""
                
                hardness_testing_inserts.append(hardness_testing_insert)
    
    # Write SQL file
    with open('supabase/migrations/051_populate_consumables_from_csv.sql', 'w', encoding='utf-8') as f:
        f.write("-- ============================================================================\n")
        f.write("-- POPULATE CONSUMABLES FROM CSV\n")
        f.write("-- ============================================================================\n")
        f.write("-- This migration populates the consumables tables from the CSV data\n")
        f.write("-- ============================================================================\n\n")
        
        f.write("-- Base consumables\n")
        for insert in base_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Sectioning consumables\n")
        for insert in sectioning_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Mounting consumables\n")
        for insert in mounting_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Grinding & Polishing consumables\n")
        for insert in grinding_polishing_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Etchants consumables\n")
        for insert in etchants_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Cleaning consumables\n")
        for insert in cleaning_inserts:
            f.write(insert + "\n\n")
        
        f.write("-- Hardness Testing consumables\n")
        for insert in hardness_testing_inserts:
            f.write(insert + "\n\n")
    
    print(f"Generated SQL file with:")
    print(f"  - {len(base_inserts)} base consumables")
    print(f"  - {len(sectioning_inserts)} sectioning consumables")
    print(f"  - {len(mounting_inserts)} mounting consumables")
    print(f"  - {len(grinding_polishing_inserts)} grinding & polishing consumables")
    print(f"  - {len(etchants_inserts)} etchants")
    print(f"  - {len(cleaning_inserts)} cleaning consumables")
    print(f"  - {len(hardness_testing_inserts)} hardness testing consumables")

if __name__ == '__main__':
    process_consumables_csv('pace_consumables_2026.csv')


