-- ============================================================================
-- UPDATE PICO-155P WITH PRECISION WAFERING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- ============================================================================

-- Drop the view first to allow column type alterations if needed
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Ensure ALL precision wafering fields are TEXT type
-- (They should be TEXT from migration 061, but ensure they are in case of conflicts)
DO $$
BEGIN
  -- List of precision wafering fields that must be TEXT
  DECLARE
    field_name TEXT;
    fields TEXT[] := ARRAY[
      'table_feed_range_mm',
      'table_feed_range_inches',
      'cutting_load_grams',
      'micrometer_feed_distance_mm',
      'micrometer_feed_distance_inches',
      'micrometer_accuracy_microns',
      'control_type',
      'control_description',
      'coolant_system_description'
    ];
  BEGIN
    FOREACH field_name IN ARRAY fields
    LOOP
      -- Check and convert each field to TEXT if needed
      IF EXISTS (
        SELECT 1 FROM information_schema.columns 
        WHERE table_name = 'equipment_sectioning' 
        AND column_name = field_name
        AND data_type != 'text'
      ) THEN
        EXECUTE format('
          ALTER TABLE equipment_sectioning
            ALTER COLUMN %I TYPE TEXT USING 
              CASE 
                WHEN %I IS NULL THEN NULL
                ELSE %I::TEXT
              END
        ', field_name, field_name, field_name);
      END IF;
    END LOOP;
  END;
END $$;

-- Ensure equipment_sectioning record exists for PICO-155P
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PICO-155P'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PICO-155P with precision wafering specifications
UPDATE equipment_sectioning
SET
  -- Control specifications
  control_type = 'analog-control',
  control_description = 'Analog Buttons and Speed Control',
  
  -- Cutting capacity
  max_cutting_diameter_mm = '50 mm (2 inches)',
  max_cutting_diameter_inches = '2 inches',
  
  -- Coolant system
  cooling_system = 'dual-nozzle-pump',
  coolant_system_description = 'Dual nozzle with pump',
  
  -- Table feed range
  table_feed_range_mm = '75 mm to 175 mm',
  table_feed_range_inches = '3 to 7 inches',
  
  -- Arbor size
  arbor_size_mm = '12.7 mm (0.5 inches)',
  arbor_size_inches = '0.5 inches',
  
  -- Motor specifications
  motor_speed_range_rpm = '200-1500 rpm continuously adjustable with LED speed display',
  motor_power_watts = '125W (24V)',
  
  -- Cutting load
  cutting_load_grams = '0-1500 gram load',
  
  -- Micrometer specifications
  micrometer_feed_distance_mm = '0 to 25 mm',
  micrometer_feed_distance_inches = '0 to 1 inch',
  micrometer_accuracy_microns = '2 microns',
  
  -- Electrical
  electrical_specification = '110V/220V (50/60 Hz) single phase',
  
  -- Specimen feed type (gravity feed for PICO-155P)
  specimen_feed_type = 'gravity-feed',
  automation_level = 'manual',
  
  -- Dimensions
  -- Hood closed: 480 x 580 x 370 mm (19 x 23 x 14 inches)
  dimensions_hood_closed_mm = '{"width": 480, "depth": 580, "height": 370}'::JSONB,
  
  -- Hood open: 480 x 740 x 370 mm (19 x 29 x 19 inches)
  -- Note: Height in inches (19") doesn't match mm (370mm = 14.6"), using mm value as provided
  dimensions_hood_open_mm = '{"width": 480, "depth": 740, "height": 370}'::JSONB,
  
  -- Weight
  weight_kg = 30,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PICO-155P'
);

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

