-- ============================================================================
-- ADD PRECISION WAFERING SPECIFIC FIELDS TO EQUIPMENT_SECTIONING
-- ============================================================================
-- This migration adds fields specific to precision wafering equipment
-- (like PICO series) that are not applicable to abrasive sectioning equipment.
-- 
-- Field Usage Guide:
-- - Abrasive Sectioning (MEGA series): blade_size_mm, cutting_capacity_height_mm, 
--   cutting_capacity_depth_mm, table_dimensions_mm, vertical_movement_mm, etc.
-- - Precision Wafering (PICO series): control_type, cutting_load_grams, 
--   micrometer_feed_distance_mm, micrometer_accuracy_microns, table_feed_range_mm, etc.
-- - Common fields: arbor_size_mm, motor_power_watts, electrical_specification, 
--   dimensions_hood_closed_mm, dimensions_hood_open_mm, weight_kg
-- ============================================================================

-- Add precision wafering specific fields
-- Using TEXT for most fields to allow ranges, descriptive values, and flexibility
ALTER TABLE equipment_sectioning
  ADD COLUMN IF NOT EXISTS control_type TEXT, -- e.g., 'touchscreen', 'digital-display', 'manual-control'
  ADD COLUMN IF NOT EXISTS control_description TEXT, -- e.g., '5-inch Touchscreen with Digital LED Display'
  ADD COLUMN IF NOT EXISTS cutting_load_grams TEXT, -- Cutting load in grams (e.g., '0-1500', '1500', '0 to 1500 grams')
  ADD COLUMN IF NOT EXISTS micrometer_feed_distance_mm TEXT, -- Micrometer feed distance (e.g., '0 to 25 mm', '25 mm')
  ADD COLUMN IF NOT EXISTS micrometer_feed_distance_inches TEXT, -- Micrometer feed distance (e.g., '0 to 1 inch', '1"')
  ADD COLUMN IF NOT EXISTS micrometer_accuracy_microns TEXT, -- Micrometer accuracy (e.g., '2 microns', '±2 microns')
  ADD COLUMN IF NOT EXISTS table_feed_range_mm TEXT, -- Table feed range (e.g., '75 to 175 mm', '75-175 mm')
  ADD COLUMN IF NOT EXISTS table_feed_range_inches TEXT, -- Table feed range (e.g., '3 to 7 inches', '3-7"')
  ADD COLUMN IF NOT EXISTS coolant_system_description TEXT; -- Detailed coolant system description (e.g., 'Dual nozzle with pump')

-- Add comments for documentation
COMMENT ON COLUMN equipment_sectioning.control_type IS 'Control interface type for precision wafering equipment (e.g., touchscreen, digital-display)';
COMMENT ON COLUMN equipment_sectioning.control_description IS 'Detailed description of control interface (e.g., "5-inch Touchscreen with Digital LED Display")';
COMMENT ON COLUMN equipment_sectioning.cutting_load_grams IS 'Cutting load in grams as text (e.g., "0-1500", "1500", "0 to 1500 grams")';
COMMENT ON COLUMN equipment_sectioning.micrometer_feed_distance_mm IS 'Micrometer feed distance as text (e.g., "0 to 25 mm", "25 mm")';
COMMENT ON COLUMN equipment_sectioning.micrometer_feed_distance_inches IS 'Micrometer feed distance as text (e.g., "0 to 1 inch", "1"")';
COMMENT ON COLUMN equipment_sectioning.micrometer_accuracy_microns IS 'Micrometer accuracy as text (e.g., "2 microns", "±2 microns")';
COMMENT ON COLUMN equipment_sectioning.table_feed_range_mm IS 'Table feed range as text (e.g., "75 to 175 mm", "75-175 mm")';
COMMENT ON COLUMN equipment_sectioning.table_feed_range_inches IS 'Table feed range as text (e.g., "3 to 7 inches", "3-7"")';
COMMENT ON COLUMN equipment_sectioning.coolant_system_description IS 'Detailed coolant system description (e.g., "Dual nozzle with pump")';

-- ============================================================================
-- UPDATE PICO-155S WITH PRECISION WAFERING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- ============================================================================

-- Ensure equipment_sectioning record exists for PICO-155S
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PICO-155S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PICO-155S with precision wafering specifications
UPDATE equipment_sectioning
SET
  control_type = 'touchscreen',
  control_description = '5-inch Touchscreen with Digital LED Display',
  max_cutting_diameter_mm = COALESCE(max_cutting_diameter_mm, 50),
  max_cutting_diameter_inches = COALESCE(max_cutting_diameter_inches, 2),
  cooling_system = COALESCE(cooling_system, 'dual-nozzle-pump'),
  coolant_system_description = 'Dual nozzle with pump',
  table_feed_range_mm = '75 to 175 mm',
  table_feed_range_inches = '3 to 7 inches',
  arbor_size_mm = COALESCE(arbor_size_mm, 12.7),
  arbor_size_inches = COALESCE(arbor_size_inches, 0.5),
  motor_speed_range_rpm = '200-1500 rpm continuously adjustable with digital speed display',
  cutting_load_grams = '0-1500 gram load',
  micrometer_feed_distance_mm = '0 to 25 mm',
  micrometer_feed_distance_inches = '0 to 1 inch',
  micrometer_accuracy_microns = '2 microns',
  electrical_specification = COALESCE(electrical_specification, '110V/220V (50/60 Hz) single phase'),
  motor_power_watts = COALESCE(motor_power_watts, 125),
  dimensions_hood_closed_mm = COALESCE(dimensions_hood_closed_mm, '{"width": 480, "depth": 580, "height": 370}'::JSONB),
  dimensions_hood_open_mm = COALESCE(dimensions_hood_open_mm, '{"width": 480, "depth": 740, "height": 480}'::JSONB),
  weight_kg = COALESCE(weight_kg, 30),
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PICO-155S'
);

-- ============================================================================
-- DOCUMENTATION: FIELD USAGE BY EQUIPMENT TYPE
-- ============================================================================
-- 
-- ABRASIVE SECTIONING (MEGA series, manual/automated cutters):
--   - blade_size_mm, blade_size_inches, blade_type
--   - cutting_capacity_height_mm, cutting_capacity_depth_mm
--   - max_cutting_capacity_mm, max_cutting_capacity_inches
--   - vertical_movement_mm, vertical_movement_inches
--   - table_dimensions_mm, table_dimensions_inches
--   - cutting_force_max_amps
--   - cooling_unit_capacity_liters, cooling_unit_capacity_gallons
-- 
-- PRECISION WAFERING (PICO series):
--   - control_type, control_description
--   - max_cutting_diameter_mm, max_cutting_diameter_inches
--   - cutting_load_grams, cutting_load_range_grams
--   - micrometer_feed_distance_mm, micrometer_feed_distance_inches
--   - micrometer_accuracy_microns
--   - table_feed_range_mm, table_feed_range_inches
--   - coolant_system_description
--   - motor_speed_range_rpm (variable speed)
-- 
-- COMMON FIELDS (both types):
--   - arbor_size_mm, arbor_size_inches
--   - motor_power_watts, motor_power_kw
--   - electrical_specification
--   - dimensions_hood_closed_mm, dimensions_hood_open_mm
--   - weight_kg
--   - automation_level
--   - cooling_system (general type)
-- 
-- ============================================================================

