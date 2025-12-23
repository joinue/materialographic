# Sectioning Equipment Implementation Guide

This document explains the implementation approach for the sectioning equipment category, which can be used as a reference when implementing other equipment categories (mounting, grinding-polishing, microscopy, etc.).

## Overview

The sectioning equipment category includes two distinct types of equipment:
1. **Abrasive Sectioning Equipment** (MEGA series) - Large abrasive blades, cutting capacity measured in height × depth
2. **Precision Wafering Equipment** (PICO series) - Smaller precision blades, maximum cutting diameter, micrometer feed

## Database Schema

### Table Structure

The `equipment_sectioning` table stores all technical specifications for sectioning equipment. Key design decisions:

1. **TEXT fields for flexibility**: Many numeric fields were converted to TEXT to allow:
   - Ranges (e.g., "75 to 175 mm", "500-3000 rpm")
   - Descriptive values (e.g., "Variable (1000-3000 rpm)")
   - Units included in the value (e.g., "12.7 mm (0.5 inches)")

2. **JSONB for structured data**: Used for:
   - Dimensions: `dimensions_hood_closed_mm`, `dimensions_hood_open_mm` (stored as `{"width": 480, "depth": 580, "height": 370}`)
   - Table dimensions: `table_dimensions_mm`, `table_dimensions_inches`
   - Optional accessories: `optional_accessories` (array of objects)

3. **Category-specific fields**: Added precision wafering specific fields:
   - `control_type`, `control_description`
   - `cutting_load_grams`
   - `micrometer_feed_distance_mm`, `micrometer_feed_distance_inches`, `micrometer_accuracy_microns`
   - `table_feed_range_mm`, `table_feed_range_inches`
   - `specimen_feed_type` (e.g., 'table-feed', 'gravity-feed')
   - `coolant_system_description`

### Key Migrations

1. **059_add_missing_sectioning_specs_and_update_mega_m250s.sql**: Added initial missing columns for abrasive sectioning
2. **061_add_precision_wafering_fields_to_sectioning.sql**: Added precision wafering specific fields
3. **062_convert_sectioning_numeric_fields_to_text.sql**: Converted numeric fields to TEXT for flexibility
4. **064_add_specimen_feed_type_and_update_pico_200a.sql**: Added `specimen_feed_type` field
5. **067_convert_jsonb_ranges_to_text.sql**: Converted any existing JSONB range data to TEXT format

## Field Usage by Equipment Type

### Abrasive Sectioning (MEGA series)
- `blade_size_mm`, `blade_size_inches`, `blade_type`
- `cutting_capacity_height_mm`, `cutting_capacity_depth_mm`
- `vertical_movement_mm`, `vertical_movement_inches`
- `table_dimensions_mm`, `table_dimensions_inches`
- `cutting_force_max_amps`
- `cooling_unit_capacity_liters`, `cooling_unit_capacity_gallons`
- `motor_power_watts`, `motor_power_kw`
- `motor_speed_range_rpm`
- `electrical_specification`
- `dimensions_hood_closed_mm`, `dimensions_hood_open_mm`
- `weight_kg`
- `optional_accessories`

### Precision Wafering (PICO series)
- `max_cutting_diameter_mm`, `max_cutting_diameter_inches`
- `control_type`, `control_description`
- `cutting_load_grams`
- `micrometer_feed_distance_mm`, `micrometer_feed_distance_inches`
- `micrometer_accuracy_microns`
- `table_feed_range_mm`, `table_feed_range_inches`
- `specimen_feed_type` (e.g., 'table-feed', 'gravity-feed')
- `coolant_system_description`
- `motor_speed_range_rpm` (variable speed)
- `motor_power_watts`
- `electrical_specification`
- `dimensions_hood_closed_mm`, `dimensions_hood_open_mm`
- `weight_kg`

### Common Fields (Both Types)
- `arbor_size_mm`, `arbor_size_inches`
- `motor_power_watts`, `motor_power_kw`
- `motor_speed_range_rpm`
- `electrical_specification`
- `dimensions_hood_closed_mm`, `dimensions_hood_open_mm`
- `weight_kg`
- `automation_level`
- `cooling_system` (general type)

## Component Implementation

### SectioningSpecs Component

Location: `components/equipment/SectioningSpecs.tsx`

**Key Features:**
1. **Inline Editing**: Supports `editMode` prop to enable inline editing of all fields
2. **Local State Management**: Uses `useState` to manage editable data (`currentSpecs`)
3. **Field Change Handler**: `handleFieldChange` updates local state and calls `onChange` callback
4. **JSONB Handling**: Properly handles JSONB fields (dimensions) for editing
5. **Range Formatting**: Helper function `formatRangeValue` handles both TEXT and JSONB range formats

**Sections Organized:**
- Blade Specifications
- Cutting Capacity
- Machine Movement & Table
- Motor & Performance
- Electrical & Cooling
- Dimensions & Weight
- Features
- Optional Accessories

**Important Pattern:**
```typescript
const currentSpecs = editMode && editData ? editData : specs
```
This pattern ensures we use edited data when in edit mode, otherwise use the original specs.

## Inline Editing Implementation

### Equipment Page Integration

Location: `app/equipment/[category]/[subcategory]/[slug]/page.tsx`

**Key Features:**
1. **Edit Mode Toggle**: Button in breadcrumb row (only visible to admins)
2. **State Management**: 
   - `editData`: Stores edited equipment data
   - `editBrochureUrl`: Stores edited brochure URL
   - Separate state for images, specs, etc.
3. **Save Handler**: `handleSave` updates both base equipment table and category-specific table
4. **Specs Change Handler**: `handleSpecsChange` updates category-specific specs in edit data

**Save Pattern:**
```typescript
// 1. Update base equipment table
await supabase.from('equipment').update({...}).eq('id', equipment.id)

// 2. Update category-specific table
await supabase.from('equipment_sectioning').update({...}).eq('equipment_id', equipment.id)
```

## Brochure Management

### Storage Structure
- **Bucket**: `brochures`
- **File Path**: `{item_id}.pdf` (e.g., `mega-t400s.pdf`)
- **Clean URLs**: No timestamps or random strings in filenames

### Upload Implementation
1. **Validation**: PDF only, max 50MB
2. **Cleanup**: Deletes existing brochure with same `item_id` before uploading new one
3. **Storage**: Uses `upsert: true` to replace existing files
4. **URL Storage**: Stores full Supabase storage URL in `equipment.brochure_url`

### Inline Editing Features
- Add brochure button (when none exists)
- Change brochure button (when one exists)
- Remove brochure button (deletes from storage and clears URL)
- View brochure link (opens in new tab)

## Data Migration Strategy

### Populating Equipment Specifications

When migrating data from old site:

1. **Create migration file**: `0XX_update_{item_id}_specifications.sql`
2. **Ensure record exists**: 
   ```sql
   INSERT INTO equipment_sectioning (equipment_id)
   SELECT id FROM equipment WHERE item_id = 'ITEM-ID'
   ON CONFLICT (equipment_id) DO NOTHING;
   ```
3. **Update with specifications**: Use `UPDATE` with all field values
4. **Handle TEXT fields**: Store values as text with units (e.g., "50 mm (2 inches)")
5. **Handle JSONB fields**: Use `'{"width": 480, "depth": 580, "height": 370}'::JSONB`
6. **Handle ranges**: Store as text (e.g., "75 to 175 mm", "500-3000 rpm")

### Example Migration Pattern

```sql
UPDATE equipment_sectioning
SET
  blade_size_mm = '400 mm (16-inch)',
  blade_size_inches = '16-inch',
  arbor_size_mm = '32 mm',
  cutting_capacity_height_mm = '70 mm (3-inch)',
  cutting_capacity_depth_mm = '150 mm (6-inch)',
  max_cutting_diameter_mm = '150 mm (6-inch)',
  automation_level = 'manual',
  motor_speed_range_rpm = 'Variable (1000-3000 rpm)',
  dimensions_hood_closed_mm = '{"width": 1220, "depth": 1300, "height": 1610}'::JSONB,
  weight_kg = 412,
  updated_at = NOW()
WHERE equipment_id = (SELECT id FROM equipment WHERE item_id = 'MEGA-T400S');
```

## View Dependencies

**Important**: When altering columns used by the `equipment_with_details` view:

1. **Drop view first**: `DROP VIEW IF EXISTS equipment_with_details CASCADE;`
2. **Make column changes**
3. **Recreate view**: Include all columns from all category-specific tables

The view structure includes:
- Base equipment columns
- Deprecated columns (aliased)
- Category-specific columns from all tables (sectioning, mounting, grinding_polishing, etc.)

## Key Learnings

1. **TEXT over NUMERIC**: Using TEXT fields allows for ranges, descriptive values, and flexibility
2. **JSONB for structured data**: Use JSONB for dimensions, arrays, and nested objects
3. **View dependencies**: Always drop views before altering columns they depend on
4. **Clean filenames**: Use `item_id` as filename for storage files (no timestamps/random strings)
5. **Inline editing state**: Manage edited data separately from original data
6. **Category-specific tables**: Each category has its own table for specifications
7. **Common fields**: Some fields are shared across equipment types (motor, electrical, dimensions, weight)

## Next Steps for Other Categories

When implementing other equipment categories:

1. **Review existing schema**: Check if category-specific table already exists
2. **Identify unique fields**: Determine what fields are specific to that category
3. **Follow TEXT pattern**: Use TEXT for fields that might contain ranges or descriptive values
4. **Create spec component**: Similar to `SectioningSpecs.tsx` with inline editing support
5. **Update view**: Add new category columns to `equipment_with_details` view
6. **Implement inline editing**: Add to equipment page with proper state management
7. **Migrate data**: Create migrations for each equipment item in that category

## Files to Reference

- **Component**: `components/equipment/SectioningSpecs.tsx`
- **Page**: `app/equipment/[category]/[subcategory]/[slug]/page.tsx`
- **Storage Helper**: `lib/storage.ts` (brochure URL generation)
- **Type Definitions**: `lib/supabase.ts` (`EquipmentSectioning` interface)
- **Migrations**: `supabase/migrations/059-074_*.sql`

