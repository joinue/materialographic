-- ============================================================================
-- UPDATE PENTA-7500S WITH HAND/BELT GRINDER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Belt Size: 4 x 36 inches (102 x 914 mm)
-- Cooling System: Water rinse
-- Construction: Reinforced welded steel, fabricated metal, & stainless steel
-- Motor Power: 550 W (0.75 hp)
-- Electrical Specifications: 110V or 220V 50/60 Hz
-- Dimensions (WxDxH): 20 x 25 x 15 inches (510 x 630 x 380 mm)
-- Weight: 120 lbs (50 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for PENTA-7500S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PENTA-7500S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PENTA-7500S with hand/belt grinder specifications
UPDATE equipment_grinding_polishing
SET
  -- Belt specifications
  belt_size_inches = '4 x 36 inches',
  belt_size_mm = '102 x 914 mm',
  
  -- Motor power
  motor_power_watts = '550 W',
  motor_power_hp = '0.75 hp',
  
  -- Cooling system
  cooling_system = 'water',
  cooling_system_type = 'Water rinse',
  
  -- Electrical specification
  electrical_specification = '110V or 220V 50/60 Hz',
  
  -- Dimensions
  dimensions_inches = '{"width": 20, "depth": 25, "height": 15}'::JSONB,
  dimensions_mm = '{"width": 510, "depth": 630, "height": 380}'::JSONB,
  
  -- Weight
  weight_kg = '50 kg',
  weight_lbs = '120 lbs',
  
  -- Construction materials (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Construction",
      "description": "Reinforced welded steel, fabricated metal, & stainless steel"
    }
  ]'::JSONB,
  
  -- Automation level (manual hand grinder)
  automation_level = 'manual',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PENTA-7500S'
);

