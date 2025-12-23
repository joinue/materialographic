-- ============================================================================
-- UPDATE MEGA-T400S WITH ABRASIVE SECTIONING SPECIFICATIONS
-- ============================================================================
-- Based on the old website specifications provided
-- This is a manual abrasive sectioning machine
-- ============================================================================

-- Ensure equipment_sectioning record exists for MEGA-T400S
INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'MEGA-T400S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update MEGA-T400S with abrasive sectioning specifications
UPDATE equipment_sectioning
SET
  -- Blade specifications
  blade_size_mm = '400 mm (16-inch)',
  blade_size_inches = '16-inch',
  arbor_size_mm = '32 mm',
  
  -- Cutting capacity
  cutting_capacity_height_mm = '70 mm (3-inch)',
  cutting_capacity_height_inches = '3-inch',
  cutting_capacity_depth_mm = '150 mm (6-inch)',
  cutting_capacity_depth_inches = '6-inch',
  max_cutting_diameter_mm = '150 mm (6-inch)',
  max_cutting_diameter_inches = '6-inch',
  
  -- Operation and automation
  automation_level = 'manual', -- Manual operation
  control_type = 'touch', -- Screen: Touch
  control_description = 'Touch screen',
  
  -- Feed specifications
  -- Wheel Feed: Manual
  -- Table Feed: Manual
  -- Y Pulse Feed: Manual
  -- X-axis Table Feed: n.a.
  feed_rate_mm_per_min = 'Y-axis: 7-inch (180 mm) range; X-axis: n.a.',
  
  -- Table specifications
  table_dimensions_mm = '{"width": 280, "depth": 470}'::JSONB,
  table_dimensions_inches = '{"width": 11, "depth": 18.25}'::JSONB,
  -- T-slotted Width: 0.5-inch (50 mm)
  
  -- Movement
  vertical_movement_mm = '125 mm (5-inch)',
  vertical_movement_inches = '5-inch',
  
  -- Motor specifications
  motor_power_watts = 'Constant torque variable speed Servo Motor, 3φ - 4.5 KW/(5.8 hp) 208Y, 380Y, 480V - 15 KW (20 hp) 480V',
  motor_power_kw = '4.5 KW (208Y/380V) / 15 KW (480V)',
  motor_speed_range_rpm = 'Variable (1000-3000 rpm)',
  
  -- Electrical
  electrical_specification = '208Y / 380V or 480V 3-phase (50/60 Hz)',
  cutting_force_max_amps = '5-25 amps (480V)',
  
  -- Cooling system
  cooling_unit_capacity_liters = '53 liters',
  cooling_unit_capacity_gallons = '14 gallons',
  
  -- Dimensions
  -- Hood closed: 48 x 51 x 64-inch (1220 x 1300 x 1610 mm)
  dimensions_hood_closed_mm = '{"width": 1220, "depth": 1300, "height": 1610}'::JSONB,
  
  -- Hood open: 48 x 51 x 66-inch (1200 x 1300 x 1700 mm)
  dimensions_hood_open_mm = '{"width": 1200, "depth": 1300, "height": 1700}'::JSONB,
  
  -- Weight (range: 400-425 kg)
  weight_kg = 412, -- Using midpoint of range
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'MEGA-T400S'
);

