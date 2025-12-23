# Equipment Sectioning Schema Analysis

## Comparison: Old Site Specs vs Current Database Schema

### MEGA-M250S Specifications from Old Site

| Parameter | Old Site Value | Current Schema Support | Status |
|-----------|---------------|----------------------|--------|
| **Cutting Wheel Diameter** | 250 mm (~10 inches) | `blade_size_mm`, `blade_size_inches` | ✅ Supported |
| **Arbor Size** | 32 mm | ❌ **MISSING** | ❌ |
| **Cutting Capacity (H x D)** | Maximum 50 x 100 mm (2 x 4 inches) | `max_cutting_capacity_mm`, `max_cutting_capacity_inches` (single value, not H x D) | ⚠️ Partial |
| **Max Cutting Diameter** | 65 mm (2.5 inches) | ❌ **MISSING** | ❌ |
| **Wheel Feed** | Manual | `automation_level` | ✅ Supported |
| **Vertical Movement (Z-axis)** | 82 mm (3.25 inches) | ❌ **MISSING** | ❌ |
| **T-slotted Table Dimensions** | 250 x 230 mm (9.75 x 9 inches) | ❌ **MISSING** | ❌ |
| **Motor Power** | 2.2 kW (3 hp) | `motor_power_watts` (needs conversion from kW) | ⚠️ Partial |
| **Motor Speed** | Variable (1000-3000 rpm) | `cutting_speed_rpm` (single value, not range) | ⚠️ Partial |
| **Electrical Specification** | 220V single phase, 380V or 480V, 3φ (50/60 Hz) | ❌ **MISSING** | ❌ |
| **Cutting Force (Current Settings)** | 15 amps (max) | ❌ **MISSING** | ❌ |
| **Cooling Unit** | 53 liters (14 gallons) | ❌ **MISSING** | ❌ |
| **Dimensions (WxDxH) - Hood Closed** | 750 x 685 x 720 mm | `dimensions_mm` (doesn't account for hood state) | ⚠️ Partial |
| **Dimensions (WxDxH) - Hood Open** | 750 x 685 x 990 mm | `dimensions_mm` (doesn't account for hood state) | ⚠️ Partial |
| **Weight** | 110 kg (240 lbs) | `weight_kg` | ✅ Supported |
| **Cutter Support Bench (Optional)** | MEGA-T2-BENCH | ❌ **MISSING** | ❌ |

---

## Missing Columns Analysis

### Critical Missing Fields

1. **`arbor_size_mm` / `arbor_size_inches`**
   - **Why needed:** Essential specification for blade compatibility
   - **Data type:** NUMERIC (mm) and NUMERIC (inches)
   - **Note:** Already exists in `consumables_sectioning` table, should be added to equipment

2. **`max_cutting_diameter_mm` / `max_cutting_diameter_inches`**
   - **Why needed:** Different from cutting capacity (H x D), this is the maximum diameter of a round sample
   - **Data type:** NUMERIC

3. **`cutting_capacity_height_mm` / `cutting_capacity_height_inches`**
   - **Why needed:** Current `max_cutting_capacity_mm` doesn't distinguish height vs depth
   - **Data type:** NUMERIC
   - **Alternative:** Use JSONB: `cutting_capacity_mm: {height, depth}`

4. **`cutting_capacity_depth_mm` / `cutting_capacity_depth_inches`**
   - **Why needed:** See above
   - **Data type:** NUMERIC

5. **`vertical_movement_mm` / `vertical_movement_inches`**
   - **Why needed:** Z-axis travel distance for sample positioning
   - **Data type:** NUMERIC

6. **`table_dimensions_mm` / `table_dimensions_inches`**
   - **Why needed:** T-slotted table size (work surface dimensions)
   - **Data type:** JSONB `{width, depth}` or separate columns

7. **`motor_speed_range_rpm`**
   - **Why needed:** Current `cutting_speed_rpm` is single value, but many machines have variable speed ranges
   - **Data type:** JSONB `{min, max}` or TEXT (e.g., "1000-3000")
   - **Alternative:** Keep `cutting_speed_rpm` for typical/default, add `motor_speed_range_rpm` for range

8. **`electrical_specification`**
   - **Why needed:** Voltage, phase, frequency requirements
   - **Data type:** TEXT or JSONB `{voltage, phase, frequency, notes}`
   - **Example:** "220V single phase, 380V or 480V, 3φ (50/60 Hz)"

9. **`cutting_force_amps` / `cutting_force_max_amps`**
   - **Why needed:** Current/amperage settings for cutting force control
   - **Data type:** NUMERIC

10. **`cooling_unit_capacity_liters` / `cooling_unit_capacity_gallons`**
    - **Why needed:** Cooling system reservoir capacity
    - **Data type:** NUMERIC

11. **`dimensions_hood_closed_mm` / `dimensions_hood_open_mm`**
    - **Why needed:** Many sectioning machines have hoods that change overall dimensions
    - **Data type:** JSONB `{width, depth, height}` for each state
    - **Alternative:** Single `dimensions_mm` with `dimensions_hood_state` field

12. **`optional_accessories` / `related_equipment`**
    - **Why needed:** Optional benches, fixtures, accessories
    - **Data type:** TEXT[] or JSONB array of `{item_id, name, description}`
    - **Example:** `['MEGA-T2-BENCH']` or `[{item_id: 'MEGA-T2-BENCH', name: 'Cutter Support Bench', description: 'Optional support bench'}]`

---

## Recommended Schema Changes

### Option 1: Add Missing Columns (Recommended)

```sql
ALTER TABLE equipment_sectioning
  -- Blade specifications
  ADD COLUMN arbor_size_mm NUMERIC,
  ADD COLUMN arbor_size_inches NUMERIC,
  
  -- Cutting capacity (more detailed)
  ADD COLUMN cutting_capacity_height_mm NUMERIC,
  ADD COLUMN cutting_capacity_height_inches NUMERIC,
  ADD COLUMN cutting_capacity_depth_mm NUMERIC,
  ADD COLUMN cutting_capacity_depth_inches NUMERIC,
  ADD COLUMN max_cutting_diameter_mm NUMERIC,
  ADD COLUMN max_cutting_diameter_inches NUMERIC,
  
  -- Machine movement
  ADD COLUMN vertical_movement_mm NUMERIC,
  ADD COLUMN vertical_movement_inches NUMERIC,
  
  -- Table/work surface
  ADD COLUMN table_dimensions_mm JSONB, -- {width, depth}
  ADD COLUMN table_dimensions_inches JSONB, -- {width, depth}
  
  -- Motor specifications
  ADD COLUMN motor_speed_range_rpm JSONB, -- {min, max} or TEXT for "1000-3000"
  ADD COLUMN motor_power_kw NUMERIC, -- Keep watts, add kW for convenience
  
  -- Electrical
  ADD COLUMN electrical_specification TEXT, -- "220V single phase, 380V or 480V, 3φ (50/60 Hz)"
  ADD COLUMN cutting_force_max_amps NUMERIC,
  
  -- Cooling system
  ADD COLUMN cooling_unit_capacity_liters NUMERIC,
  ADD COLUMN cooling_unit_capacity_gallons NUMERIC,
  
  -- Dimensions (hood states)
  ADD COLUMN dimensions_hood_closed_mm JSONB, -- {width, depth, height}
  ADD COLUMN dimensions_hood_open_mm JSONB, -- {width, depth, height}
  
  -- Optional accessories
  ADD COLUMN optional_accessories JSONB; -- [{item_id, name, description}]
```

### Option 2: Use JSONB for Flexible Specifications

For fields that vary significantly between equipment models, consider using JSONB:

```sql
ALTER TABLE equipment_sectioning
  ADD COLUMN additional_specifications JSONB;
```

Then store variable specs like:
```json
{
  "arbor_size_mm": 32,
  "max_cutting_diameter_mm": 65,
  "vertical_movement_mm": 82,
  "table_dimensions": {"width_mm": 250, "depth_mm": 230},
  "motor_speed_range": {"min_rpm": 1000, "max_rpm": 3000},
  "electrical": {
    "voltage_options": ["220V single phase", "380V 3φ", "480V 3φ"],
    "frequency": "50/60 Hz"
  },
  "cutting_force_max_amps": 15,
  "cooling_unit_capacity_liters": 53,
  "dimensions": {
    "hood_closed": {"width_mm": 750, "depth_mm": 685, "height_mm": 720},
    "hood_open": {"width_mm": 750, "depth_mm": 685, "height_mm": 990}
  },
  "optional_accessories": [
    {"item_id": "MEGA-T2-BENCH", "name": "Cutter Support Bench"}
  ]
}
```

**Pros:** Flexible, easy to add new fields without migrations  
**Cons:** Less queryable, harder to filter/search, no type safety

---

## Recommendation

**Use Option 1 (Add Missing Columns)** for the following reasons:

1. **Queryability:** Structured columns allow filtering, sorting, and searching
2. **Type Safety:** Database enforces data types
3. **Performance:** Indexed columns perform better than JSONB queries
4. **Clarity:** Schema documents what fields are available
5. **Validation:** Can add CHECK constraints for valid ranges

**Use JSONB (`additional_specifications`)** only for:
- Rarely used specifications
- Model-specific custom fields
- Specifications that vary too much between models to standardize

---

## Migration Strategy

1. **Phase 1:** Add all missing columns as nullable
2. **Phase 2:** Migrate existing data from old site/CSV
3. **Phase 3:** Update `SectioningSpecs.tsx` component to display new fields
4. **Phase 4:** Add validation constraints where appropriate

---

## Component Updates Needed

The `SectioningSpecs.tsx` component will need updates to:
1. Display new fields in organized sections
2. Handle JSONB fields (dimensions, table dimensions, speed ranges)
3. Show optional accessories
4. Display electrical specifications
5. Show both hood-closed and hood-open dimensions

---

## Summary

**Current Status:** ❌ The `equipment_sectioning` table is **missing approximately 12 critical specification fields** that are present on the old site.

**Recommendation:** Add the missing columns to maintain data completeness and ensure all technical specifications can be properly stored and displayed.

