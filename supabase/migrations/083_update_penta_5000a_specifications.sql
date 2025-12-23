-- ============================================================================
-- UPDATE PENTA-5000A WITH HAND/BELT GRINDER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Grinding Stations: 240, 360, 600, 800, and 1200 grit silicon carbide rolls
-- Roll Sizes: 3-7/16-inch width x 60 feet length with 1-inch core
-- Construction: Aluminum casting and stainless steel
-- Cooling System: Water rinse
-- Dimensions (WxDxH): 22 x 24 x 9 inches (550 x 610 x 230 mm)
-- Weight: 56 lbs (25 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for PENTA-5000A
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'PENTA-5000A'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update PENTA-5000A with hand/belt grinder specifications
UPDATE equipment_grinding_polishing
SET
  -- Belt specifications
  belt_size_inches = '3-7/16-inch width x 60 feet length (1-inch core)',
  belt_size_mm = '87.3 mm width x 18.3 m length (25.4 mm core)',
  belt_type = 'Silicon carbide',
  
  -- Grinding stations (available grits)
  -- Note: Multiple grit stations (240, 360, 600, 800, 1200) are available
  -- This is represented in the belt_type and can be detailed in optional_accessories
  
  -- Cooling system
  cooling_system = 'water',
  cooling_system_type = 'Water rinse',
  
  -- Dimensions
  dimensions_inches = '{"width": 22, "depth": 24, "height": 9}'::JSONB,
  dimensions_mm = '{"width": 550, "depth": 610, "height": 230}'::JSONB,
  
  -- Weight
  weight_kg = '25 kg',
  weight_lbs = '56 lbs',
  
  -- Automation level (manual hand grinder)
  automation_level = 'manual',
  
  -- Sample holder type
  sample_holder_type = 'manual',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'PENTA-5000A'
);

