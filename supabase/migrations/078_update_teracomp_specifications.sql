-- ============================================================================
-- UPDATE TeraCOMP WITH PRESSURE MOUNTING SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Operating Pressure: 2.0 bar
-- Chamber Diameter: 9.3 x 6.7-inch (235 x 170mm) - Note: This is rectangular, not circular
-- Safety Valve Overflow Pressure: 2.8～3.3 bar
-- Dimensions (WxDxH) - Closed: 12.1 x 16.3 x 11.4-inch (308 x 415 x 289mm)
-- Dimensions (WxDxH) - Open: 12.1 x 16.3 x 13.5-inch (308 x 415 x 342mm)
-- ============================================================================

-- Ensure equipment_mounting record exists for TeraCOMP
INSERT INTO equipment_mounting (equipment_id)
SELECT id FROM equipment WHERE item_id = 'TeraCOMP'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update TeraCOMP with pressure mounting specifications
UPDATE equipment_mounting
SET
  -- Mounting type
  mounting_type = 'pressure', -- Pressure mounting system
  
  -- Pressure specifications
  operating_pressure_bar = '2.0 bar',
  safety_valve_overflow_pressure_bar = '2.8～3.3 bar',
  
  -- Chamber specifications (rectangular chamber, stored as width x depth)
  chamber_size_mm = '{"width": 235, "depth": 170}'::JSONB,
  -- Note: The spec says "Chamber Diameter" but provides width x depth, so it's rectangular
  
  -- Dimensions (closed and open)
  dimensions_closed_mm = '{"width": 308, "depth": 415, "height": 289}'::JSONB,
  dimensions_closed_inches = '{"width": 12.1, "depth": 16.3, "height": 11.4}'::JSONB,
  dimensions_open_mm = '{"width": 308, "depth": 415, "height": 342}'::JSONB,
  dimensions_open_inches = '{"width": 12.1, "depth": 16.3, "height": 13.5}'::JSONB,
  
  -- Weight
  weight_kg = '8.5 kg',
  weight_lbs = '18.8 lbs',
  
  -- Safety features
  safety_features = ARRAY['overflow-valve'],
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'TeraCOMP'
);

