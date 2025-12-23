# Equipment Sectioning Table Cleanup Guide

## Problem Explanation

The `equipment_sectioning` table was originally designed for **abrasive sectioning equipment** (like MEGA-M250S) but is also being used for **precision wafering equipment** (like PICO-155S). These two equipment types have fundamentally different specifications, which is why many fields appear blank or unused.

### Equipment Type Differences

#### Abrasive Sectioning Equipment (MEGA series)
- Uses large abrasive blades (250mm, 300mm, etc.)
- Has cutting capacity measured in height × depth
- Features vertical movement (Z-axis)
- Has T-slotted table dimensions
- Uses cutting force measured in amps
- Has large cooling unit reservoirs

**Key Fields Used:**
- `blade_size_mm`, `blade_size_inches`, `blade_type`
- `cutting_capacity_height_mm`, `cutting_capacity_depth_mm`
- `vertical_movement_mm`, `vertical_movement_inches`
- `table_dimensions_mm`, `table_dimensions_inches`
- `cutting_force_max_amps`
- `cooling_unit_capacity_liters`, `cooling_unit_capacity_gallons`

#### Precision Wafering Equipment (PICO series)
- Uses smaller precision blades (typically 3-8 inches)
- Has maximum cutting diameter (not height × depth)
- Features micrometer feed with precise accuracy
- Has table feed range (adjustable)
- Uses cutting load measured in grams
- Has dual nozzle coolant systems

**Key Fields Used:**
- `max_cutting_diameter_mm`, `max_cutting_diameter_inches`
- `control_type`, `control_description`
- `cutting_load_grams`, `cutting_load_range_grams`
- `micrometer_feed_distance_mm`, `micrometer_accuracy_microns`
- `table_feed_range_mm`, `table_feed_range_inches`
- `coolant_system_description`

#### Common Fields (Both Types)
- `arbor_size_mm`, `arbor_size_inches`
- `motor_power_watts`, `motor_power_kw`
- `motor_speed_range_rpm`
- `electrical_specification`
- `dimensions_hood_closed_mm`, `dimensions_hood_open_mm`
- `weight_kg`
- `automation_level`
- `cooling_system` (general type)

## Solution

### 1. Added Precision Wafering Fields

Migration `061_add_precision_wafering_fields_to_sectioning.sql` adds:
- `control_type` - Type of control interface
- `control_description` - Detailed control description
- `cutting_load_grams` - Maximum cutting load
- `cutting_load_range_grams` - Cutting load range (JSONB)
- `micrometer_feed_distance_mm/inches` - Micrometer feed distance
- `micrometer_accuracy_microns` - Micrometer accuracy
- `table_feed_range_mm/inches` - Table feed range (JSONB)
- `coolant_system_description` - Detailed coolant description

### 2. How to Clean Up the Table

#### Step 1: Identify Equipment Types
```sql
-- Find all sectioning equipment and their subcategories
SELECT 
  e.item_id,
  e.name,
  e.subcategory,
  CASE 
    WHEN e.item_id LIKE 'MEGA-%' THEN 'abrasive'
    WHEN e.item_id LIKE 'PICO-%' THEN 'precision-wafering'
    ELSE 'unknown'
  END as equipment_type
FROM equipment e
WHERE e.category = 'sectioning'
ORDER BY e.item_id;
```

#### Step 2: Review NULL Fields by Equipment Type
```sql
-- Check which fields are NULL for abrasive equipment
SELECT 
  e.item_id,
  es.blade_size_mm IS NULL as missing_blade_size,
  es.cutting_capacity_height_mm IS NULL as missing_cutting_capacity,
  es.vertical_movement_mm IS NULL as missing_vertical_movement
FROM equipment e
JOIN equipment_sectioning es ON es.equipment_id = e.id
WHERE e.category = 'sectioning'
  AND e.item_id LIKE 'MEGA-%';
```

```sql
-- Check which fields are NULL for precision wafering equipment
SELECT 
  e.item_id,
  es.max_cutting_diameter_mm IS NULL as missing_max_diameter,
  es.control_type IS NULL as missing_control_type,
  es.cutting_load_grams IS NULL as missing_cutting_load,
  es.micrometer_feed_distance_mm IS NULL as missing_micrometer
FROM equipment e
JOIN equipment_sectioning es ON es.equipment_id = e.id
WHERE e.category = 'sectioning'
  AND e.item_id LIKE 'PICO-%';
```

#### Step 3: Update Missing Data
Use the admin interface or direct SQL updates to populate missing fields based on equipment specifications from the old website or product documentation.

#### Step 4: Document Field Usage
The migration includes comments documenting which fields are used for which equipment types. This helps prevent confusion in the future.

## Recommendations

1. **Use Subcategory to Determine Field Usage**
   - Equipment in `precision-wafering` subcategory should use precision wafering fields
   - Equipment in `manual` or `automated` subcategories (abrasive) should use abrasive sectioning fields

2. **Update SectioningSpecs Component**
   - Conditionally render fields based on equipment subcategory
   - Show only relevant fields for each equipment type
   - This will reduce confusion and make the UI cleaner

3. **Consider Future Schema Changes**
   - If more equipment types are added with different specs, consider:
     - Creating separate tables (e.g., `equipment_precision_wafering`)
     - Using a more flexible JSONB structure for variable specs
     - Adding a `spec_type` field to indicate which fields are relevant

## Example: PICO-155S Data

After running migration 061, PICO-155S will have:
- ✅ Precision wafering fields populated
- ✅ Common fields populated (arbor_size, motor_power, dimensions, weight)
- ❌ Abrasive sectioning fields remain NULL (as expected)

This is correct behavior - NULL fields for precision wafering equipment are expected and should not be displayed in the UI.

