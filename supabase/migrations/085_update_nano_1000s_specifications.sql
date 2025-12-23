-- ============================================================================
-- UPDATE NANO-1000S WITH MANUAL POLISHER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Working Wheels: 8 & 10-inch diameter
-- Drive Mechanism: 1 hp (750 W) dynamic torque servo motor
-- Speed: Variable 100-1000 rpm
-- Construction: Aluminum and stainless steel
-- Dimensions (WxDxH): 16 x 15 x 15 inches (420 x 380 x 380 mm)
-- Weight: 63 lbs (29 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for NANO-1000S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'NANO-1000S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update NANO-1000S with manual polisher specifications
UPDATE equipment_grinding_polishing
SET
  -- Platen/wheel specifications
  platen_size_inches = '8, 10',
  platen_diameter_inches = '8 & 10-inch',
  wheel_size_inches = ARRAY[8, 10],
  
  -- Motor power
  motor_power_hp = '1 hp',
  motor_power_watts = '750 W',
  
  -- Speed specifications
  speed_range_rpm = 'Variable 100-1000 rpm',
  motor_speed_range_rpm = '100-1000 rpm',
  speed_control_type = 'Variable speed',
  
  -- Dimensions
  dimensions_inches = '{"width": 16, "depth": 15, "height": 15}'::JSONB,
  dimensions_mm = '{"width": 420, "depth": 380, "height": 380}'::JSONB,
  
  -- Weight
  weight_kg = '29 kg',
  weight_lbs = '63 lbs',
  
  -- Construction materials (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Construction",
      "description": "Aluminum and stainless steel"
    },
    {
      "name": "Drive Mechanism",
      "description": "Dynamic torque servo motor"
    }
  ]'::JSONB,
  
  -- Automation level (manual polisher)
  automation_level = 'manual',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'NANO-1000S'
);

