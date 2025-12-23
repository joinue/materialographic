-- ============================================================================
-- UPDATE FEMTO-2200S WITH SEMI-AUTOMATED POLISHING HEAD SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Application of Force: Individual pistons (1-6 samples)
-- Head Speed: 0-300 rpm (variable)
-- Motor: 0.54 hp (400 W) dynamic torque servo motor
-- Compatibility: NANO-1200S polisher
-- Electrical Specifications: 110V or 220V 50/60 Hz
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for FEMTO-2200S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'FEMTO-2200S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update FEMTO-2200S with semi-automated polishing head specifications
UPDATE equipment_grinding_polishing
SET
  -- Force control specifications
  number_of_pistons = 6, -- Can handle 1-6 samples
  force_control_type = 'Individual pistons',
  independent_force_control = true, -- Each piston can be controlled independently
  force_range_per_sample_n = 'Individual pistons (1-6 samples)',
  
  -- Speed specifications
  speed_range_rpm = 'Variable 0-300 rpm',
  motor_speed_range_rpm = '0-300 rpm',
  speed_control_type = 'Variable speed',
  
  -- Motor power
  motor_power_hp = '0.54 hp',
  motor_power_watts = '400 W',
  
  -- Compatibility
  compatible_base_models = 'NANO-1200S',
  
  -- Electrical specification
  electrical_specification = '110V or 220V 50/60 Hz',
  
  -- Automation level (semi-automated polishing head)
  automation_level = 'semi-automated',
  
  -- Sample holder type
  sample_holder_type = 'automated-head',
  
  -- Additional details (stored in optional_accessories)
  optional_accessories = '[
    {
      "name": "Motor",
      "description": "Dynamic torque servo motor"
    },
    {
      "name": "Force Application",
      "description": "Individual pistons for 1-6 samples with independent control"
    }
  ]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'FEMTO-2200S'
);

