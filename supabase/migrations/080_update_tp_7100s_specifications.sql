-- ============================================================================
-- UPDATE TP-7100S WITH COMPRESSION MOUNTING SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Control: Touch screen
-- Mount Sizes: 1, 1.25, 1.5, and 2-inch (25, 30, 40 mm)
-- Mold Cylinders: Single
-- Force: Pneumatic
-- Incoming Pressure: Max. 95 psi
-- Heater Specification: 1000 Watts (110V 15 amp) or 2000 Watts (220V 10 amp)
-- Maximum Temperature: 392°F (200°C)
-- Cooling System: Water with manual, temperature, or time control
-- Dimensions (WxDxH): 21 x 19 x 19 inches (530 x 480 x 480 mm)
-- Weight: 69 lbs (32 kg)
-- Optional Accessory: TP-TANK Recirculating/Cooling Tank (14 gallon) with pump
-- ============================================================================

-- Ensure equipment_mounting record exists for TP-7100S
INSERT INTO equipment_mounting (equipment_id)
SELECT id FROM equipment WHERE item_id = 'TP-7100S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update TP-7100S with compression mounting specifications
UPDATE equipment_mounting
SET
  -- Mounting type
  mounting_type = 'compression',
  
  -- Control
  control = 'Touch screen',
  
  -- Mount sizes
  mount_sizes = '1, 1.25, 1.5, and 2-inch (25, 30, 40 mm)',
  mount_sizes_mm = '25, 30, 40 mm',
  mount_sizes_inches = '1, 1.25, 1.5, and 2-inch',
  
  -- Mold cylinders
  mold_cylinders = 'Single',
  
  -- Force type and specifications
  force_type = 'Pneumatic',
  incoming_pressure_max_psi = 'Max. 95 psi',
  
  -- Heater specifications
  heater_specification = '1000 Watts (110V 15 amp) or 2000 Watts (220V 10 amp)',
  
  -- Temperature specifications
  max_temperature_celsius = '200°C',
  max_temperature_fahrenheit = '392°F',
  heating_capability = true,
  
  -- Cooling system
  cooling_system_description = 'Water with manual, temperature, or time control',
  cooling_capability = true,
  
  -- Dimensions
  dimensions_mm = '{"width": 530, "depth": 480, "height": 480}'::JSONB,
  dimensions_inches = '{"width": 21, "depth": 19, "height": 19}'::JSONB,
  
  -- Weight
  weight_kg = '32 kg',
  weight_lbs = '69 lbs',
  
  -- Optional accessories
  optional_accessories = '[
    {
      "name": "TP-TANK Recirculating/Cooling Tank",
      "description": "14 gallon with pump"
    }
  ]'::JSONB,
  
  -- Features
  digital_controls = true,
  programmable_cycles = true,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'TP-7100S'
);

