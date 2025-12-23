-- ============================================================================
-- UPDATE MEGA-T350A WITH ABRASIVE SECTIONING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- This is an automated abrasive sectioning machine
-- ============================================================================

-- Ensure equipment_sectioning record exists for MEGA-T350A
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'MEGA-T350A'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update MEGA-T350A with abrasive sectioning specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '350 mm (14-inch)',
  blade_size_inches = '14-inch',
  arbor_size_mm = '32 mm',
  
  -- Cutting capacity
  cutting_capacity_height_mm = '70 mm (3-inch)',
  cutting_capacity_height_inches = '3-inch',
  cutting_capacity_depth_mm = '150 mm (6-inch)',
  cutting_capacity_depth_inches = '6-inch',
  max_cutting_diameter_mm = '115 mm (4.5-inch)',
  max_cutting_diameter_inches = '4.5-inch',
  
  -- Operation and automation
  automation_level = 'automated', -- Auto / Manual operation
  control_type = 'non-touch', -- Screen: Non-touch
  control_description = 'Non-touch screen',
  
  -- Feed specifications
  -- Wheel Feed: Manual
  -- Table Feed: Auto / Manual
  -- Y Pulse Feed: Manual
  -- X-axis Table Feed: n.a.
  feed_rate_mm_per_min = 'Y-axis: 7-inch (180 mm) range; X-axis: n.a.',
  
  -- Table specifications
  table_dimensions_mm = '{"width": 710, "depth": 400}'::JSONB,
  table_dimensions_inches = '{"width": 28, "depth": 16}'::JSONB,
  -- T-slotted Width: 0.5-inch (50 mm)
  
  -- Movement
  vertical_movement_mm = '75 mm (3-inch)',
  vertical_movement_inches = '3-inch',
  
  -- Motor specifications
  motor_power_watts = 'Constant torque variable speed Servo Motor, 3φ - 4.5 KW/(5.8 hp) 208Y, 380Y, 480V - 15 KW (20 hp) 480V',
  motor_power_kw = '4.5 KW (208Y/380V) / 15 KW (480V)',
  motor_speed_range_rpm = 'Variable (1000-3000 rpm)',
  
  -- Electrical
  electrical_specification = '208Y / 380V or 480V 3-phase (50/60 Hz)',
  cutting_force_max_amps = '3-15 amps (208Y/380V), 5-25 amps (480V)',
  
  -- Cooling system
  cooling_unit_capacity_liters = '53 liters',
  cooling_unit_capacity_gallons = '14 gallons',
  
  -- Dimensions
  -- Hood closed: 42 x 42 x 64-inch (1070 x 1070 x 1625 mm)
  dimensions_hood_closed_mm = '{"width": 1070, "depth": 1070, "height": 1625}'::JSONB,
  
  -- Hood open: 42 x 42 x 70-inch (1070 x 1070 x 1780 mm)
  dimensions_hood_open_mm = '{"width": 1070, "depth": 1070, "height": 1780}'::JSONB,
  
  -- Weight (range: 300-320 kg)
  weight_kg = 310, -- Using midpoint of range
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'MEGA-T350A'
);

