-- ============================================================================
-- UPDATE PICO-200S WITH PRECISION WAFERING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- ============================================================================

-- Ensure equipment_sectioning record exists for PICO-200S
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PICO-200S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PICO-200S with precision wafering specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '200 mm (8 inches)',
  blade_size_inches = '8 inches',
  
  -- Cutting capacity
  max_cutting_diameter_mm = '30 mm (1-inch)',
  max_cutting_diameter_inches = '1-inch',
  
  -- Specimen feed type
  specimen_feed_type = 'table-feed',
  automation_level = 'manual', -- PICO-200S is manual
  
  -- Coolant system
  cooling_unit_capacity_liters = '3 Liters',
  
  -- Arbor size
  arbor_size_mm = '12.7 mm (0.5 inches)',
  arbor_size_inches = '0.5 inches',
  
  -- Motor specifications
  motor_speed_range_rpm = '500-3000 rpm continuously adjustable with electronic speed display',
  motor_power_watts = '400 W',
  
  -- Electrical
  electrical_specification = '110V/220V (50/60 Hz)',
  
  -- Dimensions (converted from inches/cm to mm)
  -- Hood closed: 18.5 x 20 x 14-inch (47 x 50.5 x 36 cm)
  dimensions_hood_closed_mm = '{"width": 470, "depth": 505, "height": 360}'::JSONB,
  
  -- Hood open: 18.5 x 22 x 25-inch (47 x 56 x 63 cm)
  dimensions_hood_open_mm = '{"width": 470, "depth": 560, "height": 630}'::JSONB,
  
  -- Weight
  weight_kg = 45,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PICO-200S'
);

