-- ============================================================================
-- ADD MISSING COLUMNS TO EQUIPMENT_SECTIONING TABLE
-- ============================================================================
-- This migration adds the missing specification columns identified in the
-- equipment sectioning schema analysis to support all technical specifications
-- from the old site.
-- ============================================================================

-- Add missing columns to equipment_sectioning table
ALTER TABLE equipment_sectioning
  -- Blade specifications
  ADD COLUMN IF NOT EXISTS arbor_size_mm NUMERIC,
  ADD COLUMN IF NOT EXISTS arbor_size_inches NUMERIC,
  
  -- Cutting capacity (more detailed)
  ADD COLUMN IF NOT EXISTS cutting_capacity_height_mm NUMERIC,
  ADD COLUMN IF NOT EXISTS cutting_capacity_height_inches NUMERIC,
  ADD COLUMN IF NOT EXISTS cutting_capacity_depth_mm NUMERIC,
  ADD COLUMN IF NOT EXISTS cutting_capacity_depth_inches NUMERIC,
  ADD COLUMN IF NOT EXISTS max_cutting_diameter_mm NUMERIC,
  ADD COLUMN IF NOT EXISTS max_cutting_diameter_inches NUMERIC,
  
  -- Machine movement
  ADD COLUMN IF NOT EXISTS vertical_movement_mm NUMERIC,
  ADD COLUMN IF NOT EXISTS vertical_movement_inches NUMERIC,
  
  -- Table/work surface
  ADD COLUMN IF NOT EXISTS table_dimensions_mm JSONB, -- {width, depth}
  ADD COLUMN IF NOT EXISTS table_dimensions_inches JSONB, -- {width, depth}
  
  -- Motor specifications
  ADD COLUMN IF NOT EXISTS motor_speed_range_rpm JSONB, -- {min, max} or TEXT for "1000-3000"
  ADD COLUMN IF NOT EXISTS motor_power_kw NUMERIC, -- Keep watts, add kW for convenience
  
  -- Electrical
  ADD COLUMN IF NOT EXISTS electrical_specification TEXT, -- "220V single phase, 380V or 480V, 3φ (50/60 Hz)"
  ADD COLUMN IF NOT EXISTS cutting_force_max_amps NUMERIC,
  
  -- Cooling system
  ADD COLUMN IF NOT EXISTS cooling_unit_capacity_liters NUMERIC,
  ADD COLUMN IF NOT EXISTS cooling_unit_capacity_gallons NUMERIC,
  
  -- Dimensions (hood states)
  ADD COLUMN IF NOT EXISTS dimensions_hood_closed_mm JSONB, -- {width, depth, height}
  ADD COLUMN IF NOT EXISTS dimensions_hood_open_mm JSONB, -- {width, depth, height}
  
  -- Optional accessories
  ADD COLUMN IF NOT EXISTS optional_accessories JSONB; -- [{item_id, name, description}]

-- Add comments for documentation
COMMENT ON COLUMN equipment_sectioning.arbor_size_mm IS 'Arbor size in millimeters (blade mounting hole diameter)';
COMMENT ON COLUMN equipment_sectioning.arbor_size_inches IS 'Arbor size in inches (blade mounting hole diameter)';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_height_mm IS 'Maximum cutting capacity height in millimeters';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_height_inches IS 'Maximum cutting capacity height in inches';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_depth_mm IS 'Maximum cutting capacity depth in millimeters';
COMMENT ON COLUMN equipment_sectioning.cutting_capacity_depth_inches IS 'Maximum cutting capacity depth in inches';
COMMENT ON COLUMN equipment_sectioning.max_cutting_diameter_mm IS 'Maximum cutting diameter for round samples in millimeters';
COMMENT ON COLUMN equipment_sectioning.max_cutting_diameter_inches IS 'Maximum cutting diameter for round samples in inches';
COMMENT ON COLUMN equipment_sectioning.vertical_movement_mm IS 'Vertical movement (Z-axis) travel distance in millimeters';
COMMENT ON COLUMN equipment_sectioning.vertical_movement_inches IS 'Vertical movement (Z-axis) travel distance in inches';
COMMENT ON COLUMN equipment_sectioning.table_dimensions_mm IS 'T-slotted table dimensions in millimeters as JSONB {width, depth}';
COMMENT ON COLUMN equipment_sectioning.table_dimensions_inches IS 'T-slotted table dimensions in inches as JSONB {width, depth}';
COMMENT ON COLUMN equipment_sectioning.motor_speed_range_rpm IS 'Motor speed range in RPM as JSONB {min, max} or stored as variable range description';
COMMENT ON COLUMN equipment_sectioning.motor_power_kw IS 'Motor power in kilowatts (in addition to motor_power_watts)';
COMMENT ON COLUMN equipment_sectioning.electrical_specification IS 'Electrical requirements: voltage, phase, frequency (e.g., "220V single phase, 380V or 480V, 3φ (50/60 Hz)")';
COMMENT ON COLUMN equipment_sectioning.cutting_force_max_amps IS 'Maximum cutting force in amperage (current settings)';
COMMENT ON COLUMN equipment_sectioning.cooling_unit_capacity_liters IS 'Cooling unit reservoir capacity in liters';
COMMENT ON COLUMN equipment_sectioning.cooling_unit_capacity_gallons IS 'Cooling unit reservoir capacity in gallons';
COMMENT ON COLUMN equipment_sectioning.dimensions_hood_closed_mm IS 'Overall dimensions with hood closed in millimeters as JSONB {width, depth, height}';
COMMENT ON COLUMN equipment_sectioning.dimensions_hood_open_mm IS 'Overall dimensions with hood open in millimeters as JSONB {width, depth, height}';
COMMENT ON COLUMN equipment_sectioning.optional_accessories IS 'Optional accessories and related equipment as JSONB array [{item_id, name, description}]';

-- ============================================================================
-- ENSURE MEGA-M250S HAS EQUIPMENT_SECTIONING RECORD
-- ============================================================================
-- First, ensure the record exists (migration 048 should have created it, but be safe)
-- ============================================================================

INSERT INTO equipment_sectioning (equipment_id)
SELECT id FROM equipment WHERE item_id = 'MEGA-M250S'
ON CONFLICT (equipment_id) DO NOTHING;

-- ============================================================================
-- UPDATE MEGA-M250S WITH COMPLETE SPECIFICATIONS
-- ============================================================================
-- Populate all the new fields for MEGA-M250S based on the old site specifications
-- ============================================================================

UPDATE equipment_sectioning
SET
  -- Blade specifications (ensure basic fields are set if missing)
  blade_size_mm = COALESCE(blade_size_mm, 250),
  blade_size_inches = COALESCE(blade_size_inches, 10),
  blade_type = COALESCE(blade_type, 'abrasive'),
  automation_level = COALESCE(automation_level, 'manual'),
  arbor_size_mm = 32,
  arbor_size_inches = 1.25, -- 32mm ≈ 1.25 inches
  
  -- Cutting capacity (H x D)
  cutting_capacity_height_mm = 50,
  cutting_capacity_height_inches = 2,
  cutting_capacity_depth_mm = 100,
  cutting_capacity_depth_inches = 4,
  max_cutting_diameter_mm = 65,
  max_cutting_diameter_inches = 2.5,
  
  -- Machine movement
  vertical_movement_mm = 82,
  vertical_movement_inches = 3.25,
  
  -- Table dimensions
  table_dimensions_mm = '{"width": 250, "depth": 230}'::JSONB,
  table_dimensions_inches = '{"width": 9.75, "depth": 9}'::JSONB,
  
  -- Motor specifications
  motor_speed_range_rpm = '{"min": 1000, "max": 3000}'::JSONB,
  motor_power_watts = COALESCE(motor_power_watts, 2200), -- 2.2 kW = 2200 watts
  motor_power_kw = 2.2,
  
  -- Electrical
  electrical_specification = '220V single phase, 380V or 480V, 3φ (50/60 Hz)',
  cutting_force_max_amps = 15,
  
  -- Cooling system
  cooling_unit_capacity_liters = 53,
  cooling_unit_capacity_gallons = 14,
  
  -- Dimensions (hood states)
  dimensions_hood_closed_mm = '{"width": 750, "depth": 685, "height": 720}'::JSONB,
  dimensions_hood_open_mm = '{"width": 750, "depth": 685, "height": 990}'::JSONB,
  
  -- Weight (if not already set)
  weight_kg = COALESCE(weight_kg, 110),
  
  -- Optional accessories
  optional_accessories = '[{"item_id": "MEGA-T2-BENCH", "name": "Cutter Support Bench", "description": "Optional support bench for the MEGA-M250S"}]'::JSONB,
  
  updated_at = NOW()
WHERE equipment_id = (
  SELECT id FROM equipment WHERE item_id = 'MEGA-M250S'
);

-- Verify the update
DO $$
DECLARE
  updated_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO updated_count
  FROM equipment_sectioning es
  JOIN equipment e ON es.equipment_id = e.id
  WHERE e.item_id = 'MEGA-M250S'
    AND es.arbor_size_mm = 32
    AND es.cutting_capacity_height_mm = 50
    AND es.max_cutting_diameter_mm = 65;
  
  IF updated_count = 0 THEN
    RAISE WARNING 'MEGA-M250S update may have failed - no matching record found or values incorrect';
  ELSE
    RAISE NOTICE 'Successfully updated MEGA-M250S with complete specifications';
  END IF;
END $$;

