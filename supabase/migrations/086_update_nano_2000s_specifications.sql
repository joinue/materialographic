-- ============================================================================
-- UPDATE NANO-2000S WITH MANUAL POLISHER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Working Wheels: 8 & 10-inch diameter (double wheel)
-- Drive Mechanism: 1 hp (750 W) dynamic torque servo motor
-- Speed: Variable 100-1000 rpm
-- Construction: Aluminum and stainless steel
-- Dimensions (WxDxH): 30 x 22 x 15 inches (750 x 570 x 380 mm)
-- Weight: 80 lbs (36 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for NANO-2000S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'NANO-2000S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update NANO-2000S with manual polisher specifications
UPDATE equipment_grinding_polishing
SET
  -- Platen/wheel specifications
  platen_size_inches = '8, 10',
  platen_diameter_inches = '8 & 10-inch (double wheel)',
  wheel_size_inches = ARRAY[8, 10],
  number_of_stations = 2, -- Double wheel system
  
  -- Motor power
  motor_power_hp = '1 hp',
  motor_power_watts = '750 W',
  
  -- Speed specifications
  speed_range_rpm = 'Variable 100-1000 rpm',
  motor_speed_range_rpm = '100-1000 rpm',
  speed_control_type = 'Variable speed',
  
  -- Dimensions
  dimensions_inches = '{"width": 30, "depth": 22, "height": 15}'::JSONB,
  dimensions_mm = '{"width": 750, "depth": 570, "height": 380}'::JSONB,
  
  -- Weight
  weight_kg = '36 kg',
  weight_lbs = '80 lbs',
  
  -- Construction materials (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Construction",
      "description": "Aluminum and stainless steel"
    },
    {
      "name": "Drive Mechanism",
      "description": "Dynamic torque servo motor"
    },
    {
      "name": "Configuration",
      "description": "Double wheel system"
    }
  ]'::JSONB,
  
  -- Automation level (manual polisher)
  automation_level = 'manual',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'NANO-2000S'
);

