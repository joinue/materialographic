-- ============================================================================
-- UPDATE TeraVAC WITH VACUUM MOUNTING SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Bell Jar: Tilting, retractable pouring arm
-- Mount Sizes: 1, 1.25, 1.5, and 2-inch (25, 30, 40, and 50 mm)
-- Vacuum: Vacuum pump (sold separately)
-- Dimensions (WxDxH): 12 x 12 x 12 inches (300 x 300 x 300 mm)
-- Weight: 2.2 lbs (1 kg)
-- ============================================================================

-- Ensure equipment_mounting record exists for TeraVAC
INSERT INTO equipment_mounting (equipment_id)
SELECT id FROM equipment WHERE item_id = 'TeraVAC'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update TeraVAC with vacuum mounting specifications
UPDATE equipment_mounting
SET
  -- Mounting type
  mounting_type = 'vacuum', -- Vacuum mounting system
  
  -- Bell jar description
  bell_jar_description = 'Tilting, retractable pouring arm',
  
  -- Mount sizes
  mount_sizes = '1, 1.25, 1.5, and 2-inch (25, 30, 40, and 50 mm)',
  mount_sizes_mm = '25, 30, 40, and 50 mm',
  mount_sizes_inches = '1, 1.25, 1.5, and 2-inch',
  
  -- Vacuum specifications
  vacuum_pump_required = true,
  -- Note: Vacuum pump is sold separately, this is indicated by vacuum_pump_required = true
  
  -- Dimensions
  dimensions_mm = '{"width": 300, "depth": 300, "height": 300}'::JSONB,
  dimensions_inches = '{"width": 12, "depth": 12, "height": 12}'::JSONB,
  
  -- Weight
  weight_kg = '1 kg',
  weight_lbs = '2.2 lbs',
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'TeraVAC'
);

