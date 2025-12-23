-- ============================================================================
-- UPDATE MEGA-T250S WITH ABRASIVE SECTIONING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- This is a manual abrasive sectioning machine
-- ============================================================================

-- Ensure equipment_sectioning record exists for MEGA-T250S
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'MEGA-T250S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update MEGA-T250S with abrasive sectioning specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '250 mm (~10 inches)',
  blade_size_inches = '~10 inches',
  arbor_size_mm = '32 mm',
  
  -- Cutting capacity
  cutting_capacity_height_mm = '50 mm (2 inches)',
  cutting_capacity_height_inches = '2 inches',
  cutting_capacity_depth_mm = '200 mm (8 inches)',
  cutting_capacity_depth_inches = '8 inches',
  max_cutting_diameter_mm = '75 mm (3 inches)',
  max_cutting_diameter_inches = '3 inches',
  
  -- Operation and automation
  automation_level = 'manual', -- Manual operation
  control_type = NULL, -- No screen specified
  control_description = NULL,
  
  -- Feed specifications
  -- Wheel Feed: Manual
  -- Table Feed: Manual
  -- Y Pulse Feed: Manual
  -- Y Constant Feed: Manual
  feed_rate_mm_per_min = 'Manual feed - all operations manual',
  
  -- Table specifications
  table_dimensions_mm = '{"width": 280, "depth": 470}'::JSONB,
  table_dimensions_inches = '{"width": 11, "depth": 18.25}'::JSONB,
  
  -- Movement
  vertical_movement_mm = '100 mm (3.9 inches)',
  vertical_movement_inches = '3.9 inches',
  -- Table Feed Movement (Y-axis): 84 mm (3.3 inches) - stored in feed_rate description
  
  -- Motor specifications
  motor_power_watts = '4.5 kW (5.8 hp)',
  motor_power_kw = '4.5 kW',
  motor_speed_range_rpm = 'Variable (1500-3500 rpm)',
  
  -- Electrical
  electrical_specification = '208Y / 380V or 480V, 3φ (50/60 Hz)',
  cutting_force_max_amps = '3-15 amps (Adjustable)',
  
  -- Cooling system
  cooling_unit_capacity_liters = '53 liters',
  cooling_unit_capacity_gallons = '14 gallons',
  
  -- Dimensions
  -- Hood closed: 900 x 815 x 710 mm (35.5 x 32 x 28 inches)
  dimensions_hood_closed_mm = '{"width": 900, "depth": 815, "height": 710}'::JSONB,
  
  -- Hood open: 900 x 815 x 990 mm (35.5 x 32 x 39 inches)
  dimensions_hood_open_mm = '{"width": 900, "depth": 815, "height": 990}'::JSONB,
  
  -- Weight
  weight_kg = 170,
  
  -- Optional accessories
  optional_accessories = '[{"item_id": "MEGA-T2-BENCH", "name": "Cutter Support Bench", "description": "MEGA-T2-BENCH"}]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'MEGA-T250S'
);

