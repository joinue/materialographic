-- ============================================================================
-- UPDATE TeraUV WITH UV CURING SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Sample Support Surface (Dimension): 10.2 x 7.9-inch (260 x 200 mm)
-- Sample Support Surface (Max. Height): 2-inch (50 mm)
-- UV Curing Time: 0-100 min
-- UV Wavelength: Main 365nm
-- Dimensions (WxDxH): 
--   Closed: 15.8 x 15.9 x 7.4-inch (400 x 404 x 188 mm)
--   Open: 15.8 x 25.6 x 7.4-inch (400 x 651 x 188 mm)
-- Voltage/Frequency: 85-240V, 50/60Hz (1Ph/N/PE)
-- ============================================================================

-- Ensure equipment_mounting record exists for TeraUV
INSERT INTO equipment_mounting (equipment_id)
SELECT id FROM equipment WHERE item_id = 'TeraUV'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update TeraUV with UV curing specifications
UPDATE equipment_mounting
SET
  -- Mounting type
  mounting_type = 'uv-curing',
  
  -- Sample support surface
  sample_support_surface_dimension_mm = '{"width": 260, "depth": 200}'::JSONB,
  sample_support_surface_dimension_inches = '{"width": 10.2, "depth": 7.9}'::JSONB,
  sample_support_surface_max_height_mm = '50 mm',
  sample_support_surface_max_height_inches = '2-inch',
  
  -- UV specifications
  uv_curing_time_min = '0-100 min',
  uv_wavelength_nm = 'Main 365nm',
  
  -- Dimensions (closed and open)
  dimensions_closed_mm = '{"width": 400, "depth": 404, "height": 188}'::JSONB,
  dimensions_closed_inches = '{"width": 15.8, "depth": 15.9, "height": 7.4}'::JSONB,
  dimensions_open_mm = '{"width": 400, "depth": 651, "height": 188}'::JSONB,
  dimensions_open_inches = '{"width": 15.8, "depth": 25.6, "height": 7.4}'::JSONB,
  
  -- Electrical
  voltage_frequency = '85-240V, 50/60Hz (1Ph/N/PE)',
  
  -- Features
  digital_controls = true,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'TeraUV'
);

