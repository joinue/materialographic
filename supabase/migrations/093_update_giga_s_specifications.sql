-- ============================================================================
-- UPDATE GIGA-S WITH VIBRATORY POLISHER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Polishing Bowl Size: 9-inch or 12-inch interchangeable bowls
-- Drive Mechanism: PZT Motor (Piezoelectric Vibration)
-- Frequency: 0-220 Hz
-- Power: 200V (600 W)
-- Construction: Aluminum casting with SMC injection-molded cover
-- Dimensions (WxDxH): 16 x 20 x 16 inches (420 x 500 x 410 mm) with hood closed
-- Weight: 135 lbs (62 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for GIGA-S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'GIGA-S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update GIGA-S with vibratory polisher specifications
UPDATE equipment_grinding_polishing
SET
  -- Vibratory polishing specifications
  vibration_frequency_hz = '0-220 Hz',
  bowl_capacity_liters = '9-inch or 12-inch interchangeable bowls',
  bowl_capacity_gallons = '9-inch or 12-inch interchangeable bowls',
  bowl_material = 'Interchangeable bowls (9-inch or 12-inch)',
  
  -- Motor power
  motor_power_watts = '600 W',
  
  -- Electrical specification
  electrical_specification = '200V',
  
  -- Dimensions (with hood closed)
  dimensions_inches = '{"width": 16, "depth": 20, "height": 16}'::JSONB,
  dimensions_mm = '{"width": 420, "depth": 500, "height": 410}'::JSONB,
  
  -- Weight
  weight_kg = '62 kg',
  weight_lbs = '135 lbs',
  
  -- Automation level (vibratory polisher)
  automation_level = 'automated',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  -- Additional details (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Drive Mechanism",
      "description": "PZT Motor (Piezoelectric Vibration)"
    },
    {
      "name": "Polishing Bowl",
      "description": "9-inch or 12-inch interchangeable bowls"
    },
    {
      "name": "Construction",
      "description": "Aluminum casting with SMC injection-molded cover"
    },
    {
      "name": "Dimensions Note",
      "description": "Dimensions shown with hood closed"
    }
  ]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'GIGA-S'
);

