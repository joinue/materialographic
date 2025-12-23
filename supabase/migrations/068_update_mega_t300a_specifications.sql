-- ============================================================================
-- UPDATE MEGA-T300A WITH ABRASIVE SECTIONING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- This is an automated abrasive sectioning machine
-- ============================================================================

-- Ensure equipment_sectioning record exists for MEGA-T300A
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'MEGA-T300A'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update MEGA-T300A with abrasive sectioning specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '305 mm (12-inch)',
  blade_size_inches = '12-inch',
  arbor_size_mm = '32 mm',
  
  -- Cutting capacity
  cutting_capacity_height_mm = '70 mm (3-inch)',
  cutting_capacity_height_inches = '3-inch',
  cutting_capacity_depth_mm = '200 mm (8-inch)',
  cutting_capacity_depth_inches = '8-inch',
  max_cutting_diameter_mm = '100 mm (4-inch)',
  max_cutting_diameter_inches = '4-inch',
  
  -- Operation and automation
  automation_level = 'automated', -- Auto / Manual operation
  control_type = 'non-touch', -- Screen: Non-touch
  control_description = 'Non-touch screen',
  
  -- Feed specifications
  -- Wheel Feed: Manual
  -- Table Feed: Auto / Manual
  -- Y Pulse Feed: Auto
  feed_rate_mm_per_min = 'Y-axis: 1-10 mm/second (0.04 to 0.20-inch/second); X-axis (Optional): 1-2 mm/second (0.04 to 0.07-inch/second)',
  
  -- Table specifications
  table_dimensions_mm = '{"width": 280, "depth": 470}'::JSONB,
  table_dimensions_inches = '{"width": 11, "depth": 18.25}'::JSONB,
  -- T-slotted Width: 0.5-inch (50 mm) - stored in description or as part of table_dimensions
  
  -- Movement
  vertical_movement_mm = '175 mm (7-inch)',
  vertical_movement_inches = '7-inch',
  
  -- Motor specifications
  motor_power_watts = 'Constant torque variable speed Servo Motor, 3φ - 4.5 KW/(5.8 hp) 208Y, 380Y, 480V - 15 KW (20 hp) 480V',
  motor_power_kw = '4.5 KW (208Y/380V) / 15 KW (480V)',
  motor_speed_range_rpm = 'Variable (1500-3500 rpm)',
  
  -- Electrical
  electrical_specification = '208Y / 380V or 480V 3-phase (50/60 Hz)',
  cutting_force_max_amps = '3-15 amps (208Y/380V), 5-25 amps (480V)',
  
  -- Cooling system
  cooling_unit_capacity_liters = '53 liters',
  cooling_unit_capacity_gallons = '14 gallons',
  
  -- Dimensions
  -- Hood closed: 42 x 42 x 30-inch (1070 x 1070 x 760 mm)
  dimensions_hood_closed_mm = '{"width": 1070, "depth": 1070, "height": 760}'::JSONB,
  
  -- Hood open: 42 x 42 x 36-inch (1070 x 1070 x 930 mm)
  dimensions_hood_open_mm = '{"width": 1070, "depth": 1070, "height": 930}'::JSONB,
  
  -- Weight (range: 230-250 kg)
  weight_kg = 240, -- Using midpoint of range
  
  -- Optional accessories
  optional_accessories = '[{"item_id": "MEGA-T3-BENCH", "name": "Cutter Support Bench", "description": "MEGA-T3-BENCH"}]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'MEGA-T300A'
);

