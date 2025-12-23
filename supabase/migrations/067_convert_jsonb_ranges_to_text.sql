-- ============================================================================
-- CONVERT JSONB RANGE DATA TO TEXT FORMAT
-- ============================================================================
-- This migration converts any existing JSONB range data (like table_feed_range_mm)
-- to TEXT format for consistent display and editing.
-- ============================================================================

-- Drop the view first to allow column alterations
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Convert table_feed_range_mm from JSONB to TEXT if needed
-- Handle both JSONB and TEXT types safely
DO $$
DECLARE
  col_type TEXT;
BEGIN
  -- Get the column type
  SELECT data_type INTO col_type
  FROM information_schema.columns
  WHERE table_name = 'equipment_sectioning'
    AND column_name = 'table_feed_range_mm';
  
  -- Only convert if column is JSONB or if values look like JSONB
  IF col_type = 'jsonb' OR col_type = 'json' THEN
    UPDATE equipment_sectioning
    SET table_feed_range_mm = 
      CASE
        WHEN (table_feed_range_mm::jsonb->>'min') IS NOT NULL AND (table_feed_range_mm::jsonb->>'max') IS NOT NULL THEN
          (table_feed_range_mm::jsonb->>'min') || ' to ' || (table_feed_range_mm::jsonb->>'max') || ' mm'
        ELSE table_feed_range_mm::text
      END
    WHERE table_feed_range_mm IS NOT NULL;
  ELSIF col_type = 'text' THEN
    -- Convert any text values that look like JSONB objects
    UPDATE equipment_sectioning
    SET table_feed_range_mm = 
      CASE
        WHEN table_feed_range_mm LIKE '{%' THEN
          CASE
            WHEN (table_feed_range_mm::jsonb->>'min') IS NOT NULL AND (table_feed_range_mm::jsonb->>'max') IS NOT NULL THEN
              (table_feed_range_mm::jsonb->>'min') || ' to ' || (table_feed_range_mm::jsonb->>'max') || ' mm'
            ELSE table_feed_range_mm
          END
        ELSE table_feed_range_mm
      END
    WHERE table_feed_range_mm IS NOT NULL
      AND table_feed_range_mm LIKE '{%';
  END IF;
  
  -- Same for table_feed_range_inches
  SELECT data_type INTO col_type
  FROM information_schema.columns
  WHERE table_name = 'equipment_sectioning'
    AND column_name = 'table_feed_range_inches';
  
  IF col_type = 'jsonb' OR col_type = 'json' THEN
    UPDATE equipment_sectioning
    SET table_feed_range_inches = 
      CASE
        WHEN (table_feed_range_inches::jsonb->>'min') IS NOT NULL AND (table_feed_range_inches::jsonb->>'max') IS NOT NULL THEN
          (table_feed_range_inches::jsonb->>'min') || ' to ' || (table_feed_range_inches::jsonb->>'max') || ' inches'
        ELSE table_feed_range_inches::text
      END
    WHERE table_feed_range_inches IS NOT NULL;
  ELSIF col_type = 'text' THEN
    UPDATE equipment_sectioning
    SET table_feed_range_inches = 
      CASE
        WHEN table_feed_range_inches LIKE '{%' THEN
          CASE
            WHEN (table_feed_range_inches::jsonb->>'min') IS NOT NULL AND (table_feed_range_inches::jsonb->>'max') IS NOT NULL THEN
              (table_feed_range_inches::jsonb->>'min') || ' to ' || (table_feed_range_inches::jsonb->>'max') || ' inches'
            ELSE table_feed_range_inches
          END
        ELSE table_feed_range_inches
      END
    WHERE table_feed_range_inches IS NOT NULL
      AND table_feed_range_inches LIKE '{%';
  END IF;
END $$;

-- Ensure columns are TEXT type (they should be, but just in case)
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'equipment_sectioning' 
    AND column_name = 'table_feed_range_mm'
    AND data_type != 'text'
  ) THEN
    ALTER TABLE equipment_sectioning
      ALTER COLUMN table_feed_range_mm TYPE TEXT USING table_feed_range_mm::text;
  END IF;
  
  IF EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'equipment_sectioning' 
    AND column_name = 'table_feed_range_inches'
    AND data_type != 'text'
  ) THEN
    ALTER TABLE equipment_sectioning
      ALTER COLUMN table_feed_range_inches TYPE TEXT USING table_feed_range_inches::text;
  END IF;
END $$;

-- Recreate the view (matching structure from migration 064)
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
  s.arbor_size_mm,
  s.arbor_size_inches,
  s.max_cutting_capacity_mm,
  s.max_cutting_capacity_inches,
  s.cutting_capacity_height_mm,
  s.cutting_capacity_height_inches,
  s.cutting_capacity_depth_mm,
  s.cutting_capacity_depth_inches,
  s.max_cutting_diameter_mm,
  s.max_cutting_diameter_inches,
  s.automation_level as sectioning_automation_level,
  s.cutting_speed_rpm,
  s.feed_rate_mm_per_min,
  s.motor_speed_range_rpm,
  s.motor_power_watts,
  s.motor_power_kw,
  s.cooling_system as sectioning_cooling_system,
  s.cooling_unit_capacity_liters,
  s.cooling_unit_capacity_gallons,
  s.sample_holder_type,
  s.precision_level,
  s.vertical_movement_mm,
  s.vertical_movement_inches,
  s.table_dimensions_mm,
  s.table_dimensions_inches,
  s.electrical_specification,
  s.cutting_force_max_amps,
  s.dimensions_mm,
  s.dimensions_hood_closed_mm,
  s.dimensions_hood_open_mm,
  s.weight_kg,
  s.optional_accessories,
  s.control_type,
  s.control_description,
  s.cutting_load_grams,
  s.micrometer_feed_distance_mm,
  s.micrometer_feed_distance_inches,
  s.micrometer_accuracy_microns,
  s.table_feed_range_mm,
  s.table_feed_range_inches,
  s.coolant_system_description,
  s.specimen_feed_type,
  s.created_at as sectioning_created_at,
  s.updated_at as sectioning_updated_at,
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

