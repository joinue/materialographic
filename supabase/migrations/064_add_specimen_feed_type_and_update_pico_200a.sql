-- ============================================================================
-- ADD SPECIMEN_FEED_TYPE COLUMN AND UPDATE PICO-200A SPECIFICATIONS
-- ============================================================================
-- This migration:
-- 1. Adds specimen_feed_type column to distinguish between different feed mechanisms
--    for precision wafering equipment (e.g., "table feed" vs "gravity feed").
-- 2. Updates PICO-200A with complete precision wafering specifications.
-- 
-- Note: specimen_feed_type is different from table_feed_range_mm which specifies 
-- the adjustable range of table feed, whereas specimen_feed_type describes the
-- mechanism type itself.
-- ============================================================================

-- Drop the view first to allow column alterations
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Add specimen_feed_type column
ALTER TABLE equipment_sectioning
  ADD COLUMN IF NOT EXISTS specimen_feed_type TEXT; -- e.g., 'table-feed', 'gravity-feed', 'manual-feed'

-- Add comment for documentation
COMMENT ON COLUMN equipment_sectioning.specimen_feed_type IS 'Type of specimen feed mechanism for precision wafering equipment (e.g., "table-feed", "gravity-feed", "manual-feed"). This describes the mechanism type, not the range.';

-- Ensure equipment_sectioning record exists for PICO-200A
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PICO-200A'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PICO-200A with precision wafering specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '200 mm (8 inches)',
  blade_size_inches = '8 inches',
  
  -- Cutting capacity
  max_cutting_diameter_mm = '50 mm (2 inches)',
  max_cutting_diameter_inches = '2 inches',
  
  -- Specimen feed type
  specimen_feed_type = 'table-feed',
  automation_level = 'automated', -- PICO-200A is automated
  
  -- Coolant system
  cooling_unit_capacity_liters = '5 Liters',
  
  -- Arbor size
  arbor_size_mm = '12.7 mm (0.5-inch)',
  arbor_size_inches = '0.5-inch',
  
  -- Motor specifications
  motor_speed_range_rpm = '500-3000 rpm continuously adjustable',
  
  -- Electrical
  electrical_specification = '110V or 220V (50/60 Hz)',
  
  -- Dimensions (converted from inches to mm)
  -- Closed: 22.4 x 28.3 x 16-inch (570 x 717 x 405mm)
  dimensions_hood_closed_mm = '{"width": 570, "depth": 717, "height": 405}'::JSONB,
  
  -- Open: 22.4 x 28.3 x 35-inch (570 x 717 x 900mm)
  dimensions_hood_open_mm = '{"width": 570, "depth": 717, "height": 900}'::JSONB,
  
  -- Weight
  weight_kg = 63,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PICO-200A'
);

-- Update existing records based on subcategory and known specifications
-- PICO-200S is also a table feed precision cutter
UPDATE equipment_sectioning
SET specimen_feed_type = 'table-feed'
WHERE equipment_id IN (
  SELECT id FROM equipment 
  WHERE item_id = 'PICO-200S'
);

-- PICO-155P and PICO-155S are gravity feed precision cutters
UPDATE equipment_sectioning
SET specimen_feed_type = 'gravity-feed'
WHERE equipment_id IN (
  SELECT id FROM equipment 
  WHERE item_id IN ('PICO-155P', 'PICO-155S')
);

-- Recreate the view (matching structure from migration 062)
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

