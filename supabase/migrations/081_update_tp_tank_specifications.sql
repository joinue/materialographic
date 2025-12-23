-- ============================================================================
-- UPDATE TP-TANK WITH COOLING TANK SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Cooling: Programmable
-- Pump: 1.3 GPM (5 L/min)
-- Dimensions (W x D x H): 31.5 x 16.5 x 25-inch (800 x 450 x 635 mm)
-- Electrical Specification: 110 / 220V (50/60 Hz)
-- Tank Volume: 14 gallons (53 L)
-- Weight: 30 lbs (13.6 kg)
-- ============================================================================

-- Ensure equipment_mounting record exists for TP-TANK
INSERT INTO equipment_mounting (equipment_id)
SELECT id FROM equipment WHERE item_id = 'TP-TANK'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update TP-TANK with cooling tank specifications
UPDATE equipment_mounting
SET
  -- Mounting type (accessory/cooling tank)
  mounting_type = 'accessory',
  
  -- Cooling system
  cooling_system_description = 'Programmable',
  cooling_capability = true,
  
  -- Pump specifications
  pump_flow_rate_gpm = '1.3 GPM',
  pump_flow_rate_liters_per_min = '5 L/min',
  
  -- Tank volume
  tank_volume_gallons = '14 gallons',
  tank_volume_liters = '53 L',
  
  -- Electrical specification
  electrical_specification = '110 / 220V (50/60 Hz)',
  
  -- Dimensions
  dimensions_mm = '{"width": 800, "depth": 450, "height": 635}'::JSONB,
  dimensions_inches = '{"width": 31.5, "depth": 16.5, "height": 25}'::JSONB,
  
  -- Weight
  weight_kg = '13.6 kg',
  weight_lbs = '30 lbs',
  
  -- Features
  programmable_cycles = true,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'TP-TANK'
);

