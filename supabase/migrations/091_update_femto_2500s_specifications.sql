-- ============================================================================
-- UPDATE FEMTO-2500S WITH SEMI-AUTOMATED POLISHING HEAD SPECIFICATIONS
-- ============================================================================
-- Based on the technical specifications provided:
-- Application of Force: Individual pistons (1-6), Central force (3-12 samples)
-- Head Speed: 0-300 rpm (variable)
-- Motor: 0.54 hp (400 W) dynamic torque servo motor
-- Compatibility: NANO-1200S polisher
-- Electrical Specifications: 110V or 220V 50/60 Hz
-- ============================================================================

-- Ensure equipment_grinding_polishing record exists for FEMTO-2500S
INSERT INTO equipment_grinding_polishing (equipment_id)
SELECT id FROM equipment WHERE item_id = 'FEMTO-2500S'
ON CONFLICT (equipment_id) DO NOTHING;

-- Update FEMTO-2500S with semi-automated polishing head specifications
UPDATE equipment_grinding_polishing
SET
  -- Force control specifications
  number_of_pistons = 6, -- Can handle 1-6 samples in individual mode
  force_control_type = 'Dual mode: Individual pistons or Central force',
  independent_force_control = true, -- Each piston can be controlled independently in individual mode
  force_range_per_sample_n = 'Individual pistons (1-6 samples) or Central force (3-12 samples)',
  
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
      "name": "Force Application Modes",
      "description": "Dual mode: Individual pistons (1-6 samples) with independent control, or Central force (3-12 samples)"
    }
  ]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'FEMTO-2500S'
);

