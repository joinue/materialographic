-- ============================================================================
-- CONVERT SECTIONING NUMERIC FIELDS TO TEXT FOR FLEXIBILITY
-- ============================================================================
-- This migration converts numeric fields to TEXT to allow ranges, descriptive
-- values, and more flexible data entry. For example, cutting wheel diameters
-- might be "3-8 inches" rather than a single number.
-- ============================================================================

-- Drop the view first since it depends on these columns
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Convert blade size fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN blade_size_mm TYPE TEXT USING 
    CASE 
      WHEN blade_size_mm IS NULL THEN NULL
      ELSE blade_size_mm::TEXT
    END,
  ALTER COLUMN blade_size_inches TYPE TEXT USING
    CASE 
      WHEN blade_size_inches IS NULL THEN NULL
      ELSE blade_size_inches::TEXT
    END;

-- Convert arbor size fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN arbor_size_mm TYPE TEXT USING
    CASE 
      WHEN arbor_size_mm IS NULL THEN NULL
      ELSE arbor_size_mm::TEXT
    END,
  ALTER COLUMN arbor_size_inches TYPE TEXT USING
    CASE 
      WHEN arbor_size_inches IS NULL THEN NULL
      ELSE arbor_size_inches::TEXT
    END;

-- Convert cutting capacity fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN max_cutting_capacity_mm TYPE TEXT USING
    CASE 
      WHEN max_cutting_capacity_mm IS NULL THEN NULL
      ELSE max_cutting_capacity_mm::TEXT
    END,
  ALTER COLUMN max_cutting_capacity_inches TYPE TEXT USING
    CASE 
      WHEN max_cutting_capacity_inches IS NULL THEN NULL
      ELSE max_cutting_capacity_inches::TEXT
    END,
  ALTER COLUMN cutting_capacity_height_mm TYPE TEXT USING
    CASE 
      WHEN cutting_capacity_height_mm IS NULL THEN NULL
      ELSE cutting_capacity_height_mm::TEXT
    END,
  ALTER COLUMN cutting_capacity_height_inches TYPE TEXT USING
    CASE 
      WHEN cutting_capacity_height_inches IS NULL THEN NULL
      ELSE cutting_capacity_height_inches::TEXT
    END,
  ALTER COLUMN cutting_capacity_depth_mm TYPE TEXT USING
    CASE 
      WHEN cutting_capacity_depth_mm IS NULL THEN NULL
      ELSE cutting_capacity_depth_mm::TEXT
    END,
  ALTER COLUMN cutting_capacity_depth_inches TYPE TEXT USING
    CASE 
      WHEN cutting_capacity_depth_inches IS NULL THEN NULL
      ELSE cutting_capacity_depth_inches::TEXT
    END,
  ALTER COLUMN max_cutting_diameter_mm TYPE TEXT USING
    CASE 
      WHEN max_cutting_diameter_mm IS NULL THEN NULL
      ELSE max_cutting_diameter_mm::TEXT
    END,
  ALTER COLUMN max_cutting_diameter_inches TYPE TEXT USING
    CASE 
      WHEN max_cutting_diameter_inches IS NULL THEN NULL
      ELSE max_cutting_diameter_inches::TEXT
    END;

-- Convert movement and feed fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN vertical_movement_mm TYPE TEXT USING
    CASE 
      WHEN vertical_movement_mm IS NULL THEN NULL
      ELSE vertical_movement_mm::TEXT
    END,
  ALTER COLUMN vertical_movement_inches TYPE TEXT USING
    CASE 
      WHEN vertical_movement_inches IS NULL THEN NULL
      ELSE vertical_movement_inches::TEXT
    END,
  ALTER COLUMN cutting_speed_rpm TYPE TEXT USING
    CASE 
      WHEN cutting_speed_rpm IS NULL THEN NULL
      ELSE cutting_speed_rpm::TEXT
    END,
  ALTER COLUMN feed_rate_mm_per_min TYPE TEXT USING
    CASE 
      WHEN feed_rate_mm_per_min IS NULL THEN NULL
      ELSE feed_rate_mm_per_min::TEXT
    END;

-- Convert motor and electrical fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN motor_power_watts TYPE TEXT USING
    CASE 
      WHEN motor_power_watts IS NULL THEN NULL
      ELSE motor_power_watts::TEXT
    END,
  ALTER COLUMN motor_power_kw TYPE TEXT USING
    CASE 
      WHEN motor_power_kw IS NULL THEN NULL
      ELSE motor_power_kw::TEXT
    END,
  ALTER COLUMN motor_speed_range_rpm TYPE TEXT USING
    CASE 
      WHEN motor_speed_range_rpm IS NULL THEN NULL
      WHEN jsonb_typeof(motor_speed_range_rpm) = 'object' THEN 
        (motor_speed_range_rpm->>'min') || '-' || (motor_speed_range_rpm->>'max') || ' rpm'
      ELSE motor_speed_range_rpm::TEXT
    END,
  ALTER COLUMN cutting_force_max_amps TYPE TEXT USING
    CASE 
      WHEN cutting_force_max_amps IS NULL THEN NULL
      ELSE cutting_force_max_amps::TEXT
    END;

-- Convert cooling capacity fields to TEXT
ALTER TABLE equipment_sectioning
  ALTER COLUMN cooling_unit_capacity_liters TYPE TEXT USING
    CASE 
      WHEN cooling_unit_capacity_liters IS NULL THEN NULL
      ELSE cooling_unit_capacity_liters::TEXT
    END,
  ALTER COLUMN cooling_unit_capacity_gallons TYPE TEXT USING
    CASE 
      WHEN cooling_unit_capacity_gallons IS NULL THEN NULL
      ELSE cooling_unit_capacity_gallons::TEXT
    END;

-- Update comments to reflect TEXT type
COMMENT ON COLUMN equipment_sectioning.blade_size_mm IS 'Cutting wheel diameter in mm as text (e.g., "250 mm", "3-8 inches", "250")';
COMMENT ON COLUMN equipment_sectioning.blade_size_inches IS 'Cutting wheel diameter in inches as text (e.g., "10"", "3-8 inches")';
COMMENT ON COLUMN equipment_sectioning.arbor_size_mm IS 'Arbor size in mm as text (e.g., "32 mm", "12.7")';
COMMENT ON COLUMN equipment_sectioning.arbor_size_inches IS 'Arbor size in inches as text (e.g., "1.25"", "0.5")';
COMMENT ON COLUMN equipment_sectioning.max_cutting_capacity_mm IS 'Maximum cutting capacity in mm as text (e.g., "100 mm", "50-100")';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_height_mm IS 'Cutting capacity height in mm as text (e.g., "50 mm", "50")';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_depth_mm IS 'Cutting capacity depth in mm as text (e.g., "100 mm", "100")';
COMMENT ON COLUMN equipment_sectioning.max_cutting_diameter_mm IS 'Maximum cutting diameter in mm as text (e.g., "65 mm", "50")';
COMMENT ON COLUMN equipment_sectioning.vertical_movement_mm IS 'Vertical movement (Z-axis) in mm as text (e.g., "82 mm", "82")';
COMMENT ON COLUMN equipment_sectioning.cutting_speed_rpm IS 'Cutting speed in RPM as text (e.g., "1000-3000 rpm", "variable")';
COMMENT ON COLUMN equipment_sectioning.feed_rate_mm_per_min IS 'Feed rate in mm/min as text (e.g., "50 mm/min", "variable")';
COMMENT ON COLUMN equipment_sectioning.motor_power_watts IS 'Motor power in watts as text (e.g., "2200W", "125W", "2.2 kW")';
COMMENT ON COLUMN equipment_sectioning.motor_power_kw IS 'Motor power in kilowatts as text (e.g., "2.2 kW", "2.2")';
COMMENT ON COLUMN equipment_sectioning.motor_speed_range_rpm IS 'Motor speed range in RPM as text (e.g., "200-1500 rpm continuously adjustable", "1000-3000 rpm")';
COMMENT ON COLUMN equipment_sectioning.cutting_force_max_amps IS 'Maximum cutting force in amps as text (e.g., "15 amps (max)", "15A")';
COMMENT ON COLUMN equipment_sectioning.cooling_unit_capacity_liters IS 'Cooling unit capacity in liters as text (e.g., "53 liters", "53L")';
COMMENT ON COLUMN equipment_sectioning.cooling_unit_capacity_gallons IS 'Cooling unit capacity in gallons as text (e.g., "14 gallons", "14 gal")';

-- ============================================================================
-- RECREATE THE EQUIPMENT_WITH_DETAILS VIEW
-- ============================================================================
-- The view was dropped earlier because it depends on the columns we're altering.
-- Now we recreate it with the new TEXT column types.
-- ============================================================================

CREATE OR REPLACE VIEW equipment_with_details AS
SELECT 
  -- Base equipment columns (excluding deprecated ones)
  e.id,
  e.name,
  e.item_id,
  e.slug,
  e.description,
  e.category,
  e.subcategory,
  e.is_pace_product,
  e.product_url,
  e.image_url,
  e.suitable_for_material_types,
  e.suitable_for_hardness,
  e.suitable_for_sample_sizes,
  e.suitable_for_sample_shapes,
  e.suitable_for_throughput,
  e.suitable_for_applications,
  e.min_budget_level,
  e.tags,
  e.status,
  e.sort_order,
  e.created_at,
  e.updated_at,
  -- Deprecated columns from base table (kept for backward compatibility)
  e.blade_size_mm as deprecated_blade_size_mm,
  e.blade_size_inches as deprecated_blade_size_inches,
  e.automation_level as deprecated_automation_level,
  e.wheel_size_inches as deprecated_wheel_size_inches,
  e.max_cutting_capacity_mm as deprecated_max_cutting_capacity_mm,
  e.max_cutting_capacity_inches as deprecated_max_cutting_capacity_inches,
  -- Category-specific columns from equipment_sectioning (now TEXT types)
  s.blade_size_mm,
  s.blade_size_inches,
  s.blade_type,
  s.max_cutting_capacity_mm,
  s.max_cutting_capacity_inches,
  s.automation_level as sectioning_automation_level,
  s.cutting_speed_rpm,
  s.cooling_system as sectioning_cooling_system,
  -- Category-specific columns from equipment_mounting
  m.mounting_type,
  m.max_pressure_psi,
  m.max_temperature_celsius,
  m.chamber_size_mm,
  -- Category-specific columns from equipment_grinding_polishing
  gp.wheel_size_inches,
  gp.automation_level as grinding_automation_level,
  gp.speed_range_rpm,
  gp.number_of_stations,
  -- Category-specific columns from equipment_microscopy
  mic.microscope_type,
  mic.magnification_range,
  mic.camera_resolution,
  mic.image_analysis_capable,
  -- Category-specific columns from equipment_hardness_testing
  ht.test_methods,
  ht.load_range_n,
  ht.automation_level as hardness_automation_level,
  -- Category-specific columns from equipment_lab_furniture
  lf.furniture_type,
  lf.dimensions_mm as furniture_dimensions_mm,
  lf.weight_capacity_kg
FROM equipment e
LEFT JOIN equipment_sectioning s ON e.id = s.equipment_id
LEFT JOIN equipment_mounting m ON e.id = m.equipment_id
LEFT JOIN equipment_grinding_polishing gp ON e.id = gp.equipment_id
LEFT JOIN equipment_microscopy mic ON e.id = mic.equipment_id
LEFT JOIN equipment_hardness_testing ht ON e.id = ht.equipment_id
LEFT JOIN equipment_lab_furniture lf ON e.id = lf.equipment_id;

COMMENT ON VIEW equipment_with_details IS 'Combined view of equipment with all category-specific attributes for backward compatibility';

