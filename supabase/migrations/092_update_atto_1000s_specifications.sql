-- ============================================================================
-- UPDATE ATTO-1000S WITH CONTROLLED REMOVAL POLISHER SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Polishing Control: Micrometer adjustable pitch and roll control
-- Wheel Speed: 0-350 rpm
-- Head Speed: 0-150 rpm (in 1 rpm increments)
-- Sample Load: 0-300 grams
-- Drive Mechanism: Servo Motor with Torque Control
-- LCD Display: Real-time removal with 0.2 micron resolution
-- Dimensions (WxDxH): 27.6 x 16.9 x 22.8 inches (700 x 430 x 580 mm)
-- Weight: 125.7 lbs (57 kg)
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for ATTO-1000S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'ATTO-1000S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update ATTO-1000S with controlled removal polisher specifications
UPDATE equipment_grinding_polishing
SET
  -- Controlled removal specifications
  controlled_removal = true,
  removal_rate_control = 'Micrometer adjustable pitch and roll control with real-time removal display',
  thickness_measurement_capability = true,
  thickness_measurement_accuracy_microns = '0.2 micron resolution',
  parallelism_control = true,
  parallelism_tolerance_microns = 'Micrometer adjustable pitch and roll control',
  
  -- Speed specifications
  speed_range_rpm = 'Wheel: 0-350 rpm, Head: 0-150 rpm (1 rpm increments)',
  motor_speed_range_rpm = '0-350 rpm (wheel), 0-150 rpm (head)',
  speed_control_type = 'Variable speed with 1 rpm increments (head)',
  
  -- Force specifications
  force_range_n = ARRAY[0, 2943], -- 0-300 grams = 0-2943 N (approximately)
  force_resolution_n = '0-300 grams sample load',
  
  -- Dimensions
  dimensions_inches = '{"width": 27.6, "depth": 16.9, "height": 22.8}'::JSONB,
  dimensions_mm = '{"width": 700, "depth": 430, "height": 580}'::JSONB,
  
  -- Weight
  weight_kg = '57 kg',
  weight_lbs = '125.7 lbs',
  
  -- Automation level (automated controlled removal system)
  automation_level = 'automated',
  
  -- Sample holder type
  sample_holder_type = 'automated-head',
  
  -- Additional details (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Drive Mechanism",
      "description": "Servo Motor with Torque Control"
    },
    {
      "name": "Display",
      "description": "LCD Display with real-time removal measurement (0.2 micron resolution)"
    },
    {
      "name": "Polishing Control",
      "description": "Micrometer adjustable pitch and roll control"
    },
    {
      "name": "Sample Load",
      "description": "0-300 grams"
    }
  ]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'ATTO-1000S'
);

