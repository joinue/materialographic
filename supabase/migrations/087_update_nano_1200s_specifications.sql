-- ============================================================================
-- UPDATE NANO-1200S WITH MANUAL POLISHER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Working Wheels: 12 & 14-inch diameter (single wheel)
-- Drive Mechanism: 1.3 hp (1 KW) dynamic torque servo motor
-- Speed: Variable 100-1000 rpm
-- Construction: Aluminum and stainless steel
-- Dimensions (WxDxH): 20 x 16 x 25 inches (510 x 420 x 640 mm)
-- Weight: 95 lbs (43 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for NANO-1200S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'NANO-1200S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update NANO-1200S with manual polisher specifications
UPDATE equipment_grinding_polishing
SET
  -- Platen/wheel specifications
  platen_size_inches = '12, 14',
  platen_diameter_inches = '12 & 14-inch (single wheel)',
  wheel_size_inches = ARRAY[12, 14],
  number_of_stations = 1, -- Single wheel system
  
  -- Motor power
  motor_power_hp = '1.3 hp',
  motor_power_watts = '1000 W', -- Note: 1000 W = 1 KW
  
  -- Speed specifications
  speed_range_rpm = 'Variable 100-1000 rpm',
  motor_speed_range_rpm = '100-1000 rpm',
  speed_control_type = 'Variable speed',
  
  -- Dimensions
  dimensions_inches = '{"width": 20, "depth": 16, "height": 25}'::JSONB,
  dimensions_mm = '{"width": 510, "depth": 420, "height": 640}'::JSONB,
  
  -- Weight
  weight_kg = '43 kg',
  weight_lbs = '95 lbs',
  
  -- Construction materials (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Construction",
      "description": "Aluminum and stainless steel"
    },
    {
      "name": "Drive Mechanism",
      "description": "Dynamic torque servo motor (1.3 hp / 1 KW)"
    },
    {
      "name": "Configuration",
      "description": "Single wheel system"
    }
  ]'::JSONB,
  
  -- Automation level (manual polisher)
  automation_level = 'manual',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'NANO-1200S'
);

