-- ============================================================================
-- ADD GRINDING-POLISHING EQUIPMENT FIELDS
-- ============================================================================
-- Adds comprehensive fields for all grinding-polishing equipment types:
-- - Manual polishers (NANO): platen size, speed control, motor specs
-- - Semi-automated (FEMTO): force control, number of pistons, programmable cycles
-- - Vibratory (GIGA): vibration frequency, amplitude, bowl size
-- - Controlled removal (ATTO): removal rate control, precision specs
-- - Hand/belt grinders (PENTA): belt size, speed, power
-- Following the mounting pattern, many fields are TEXT for flexibility.
-- ============================================================================

-- Drop the view first to allow column alterations
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Add platen/wheel specifications
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS platen_size_inches TEXT, -- e.g., "8, 10" or "12, 14"
  ADD COLUMN IF NOT EXISTS platen_size_mm TEXT, -- e.g., "200, 250" or "300, 350"
  ADD COLUMN IF NOT EXISTS platen_diameter_inches TEXT, -- e.g., "8-inch" or "10-inch"
  ADD COLUMN IF NOT EXISTS platen_diameter_mm TEXT; -- e.g., "200 mm" or "250 mm"

-- Add motor and power specifications
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS motor_power_hp TEXT, -- e.g., "1 hp" or "1.5 hp"
  ADD COLUMN IF NOT EXISTS motor_speed_range_rpm TEXT, -- e.g., "100-1000 rpm" or "Variable (100-1000 rpm)"
  ADD COLUMN IF NOT EXISTS speed_control_type TEXT, -- e.g., "Variable speed", "Preset speeds", "Touch screen control"
  ADD COLUMN IF NOT EXISTS electrical_specification TEXT; -- e.g., "110V / 220V (50/60 Hz)"

-- Add force control specifications (for semi-automated and automated systems)
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS force_control_type TEXT, -- e.g., "Pneumatic", "Electronic", "Manual"
  ADD COLUMN IF NOT EXISTS force_range_per_sample_n TEXT, -- e.g., "5-50 N" or "10-200 N per sample"
  ADD COLUMN IF NOT EXISTS force_resolution_n TEXT, -- e.g., "0.1 N" (for controlled removal systems)
  ADD COLUMN IF NOT EXISTS number_of_pistons INTEGER, -- e.g., 1, 2, 4, 6 (for FEMTO heads)
  ADD COLUMN IF NOT EXISTS independent_force_control BOOLEAN DEFAULT false; -- For systems with individual piston control

-- Add programmable cycle specifications
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS programmable_cycles BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS number_of_programmable_steps INTEGER, -- e.g., 9, 12, 20
  ADD COLUMN IF NOT EXISTS cycle_control_type TEXT, -- e.g., "Touch screen", "Digital display", "Manual"
  ADD COLUMN IF NOT EXISTS compatible_base_models TEXT; -- e.g., "NANO-1000S, NANO-2000S" (for FEMTO heads)

-- Add vibratory polishing specifications (for GIGA systems)
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS vibration_frequency_hz TEXT, -- e.g., "50-60 Hz" or "Variable"
  ADD COLUMN IF NOT EXISTS vibration_amplitude_mm TEXT, -- e.g., "0-3 mm" or "Adjustable"
  ADD COLUMN IF NOT EXISTS bowl_capacity_liters TEXT, -- e.g., "5 L" or "10 L"
  ADD COLUMN IF NOT EXISTS bowl_capacity_gallons TEXT, -- e.g., "1.3 gallons"
  ADD COLUMN IF NOT EXISTS bowl_material TEXT, -- e.g., "Stainless steel", "Ceramic"
  ADD COLUMN IF NOT EXISTS sample_capacity INTEGER; -- e.g., 1, 2, 4 (number of samples that can be polished simultaneously)

-- Add controlled removal specifications (for ATTO systems)
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS removal_rate_control TEXT, -- e.g., "Metered removal", "Precise thickness control"
  ADD COLUMN IF NOT EXISTS removal_rate_range_microns_per_min TEXT, -- e.g., "0.1-10 μm/min"
  ADD COLUMN IF NOT EXISTS thickness_measurement_capability BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS thickness_measurement_accuracy_microns TEXT, -- e.g., "±1 μm"
  ADD COLUMN IF NOT EXISTS parallelism_control BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS parallelism_tolerance_microns TEXT; -- e.g., "±2 μm"

-- Add hand/belt grinder specifications (for PENTA systems)
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS belt_size_inches TEXT, -- e.g., "2 x 48 inch" or "3 x 24 inch"
  ADD COLUMN IF NOT EXISTS belt_size_mm TEXT, -- e.g., "50 x 1200 mm"
  ADD COLUMN IF NOT EXISTS belt_speed_range_sfpm TEXT, -- e.g., "1000-5000 SFPM" (surface feet per minute)
  ADD COLUMN IF NOT EXISTS belt_speed_range_mps TEXT, -- e.g., "5-25 m/s" (meters per second)
  ADD COLUMN IF NOT EXISTS belt_type TEXT, -- e.g., "Silicon carbide", "Aluminum oxide"
  ADD COLUMN IF NOT EXISTS work_rest_included BOOLEAN DEFAULT false;

-- Add cooling and fluid specifications
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS cooling_system_type TEXT, -- e.g., "Water recirculating", "Air", "None"
  ADD COLUMN IF NOT EXISTS fluid_dispenser_included BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS fluid_dispenser_type TEXT, -- e.g., "ZETA automated dispenser", "Manual"
  ADD COLUMN IF NOT EXISTS fluid_dispenser_capacity_ml TEXT; -- e.g., "500 ml" or "1000 ml"

-- Add sample holder and fixture specifications
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS sample_holder_options TEXT, -- e.g., "Manual, Fixture, Automated head"
  ADD COLUMN IF NOT EXISTS fixture_included BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS fixture_capacity INTEGER; -- e.g., 1, 2, 4, 6 (number of samples per fixture)

-- Add dimensions and weight (convert existing to TEXT for consistency)
ALTER TABLE equipment_grinding_polishing
  ALTER COLUMN motor_power_watts TYPE TEXT USING
    CASE 
      WHEN motor_power_watts IS NULL THEN NULL
      ELSE motor_power_watts::TEXT
    END,
  ALTER COLUMN weight_kg TYPE TEXT USING
    CASE 
      WHEN weight_kg IS NULL THEN NULL
      ELSE weight_kg::TEXT
    END,
  ADD COLUMN IF NOT EXISTS weight_lbs TEXT, -- e.g., "45 lbs"
  ADD COLUMN IF NOT EXISTS dimensions_inches JSONB; -- e.g., {"width": 24, "depth": 18, "height": 12}

-- Add optional accessories
ALTER TABLE equipment_grinding_polishing
  ADD COLUMN IF NOT EXISTS optional_accessories JSONB; -- Array of accessory objects

-- Recreate the view with all new grinding-polishing fields
CREATE OR REPLACE VIEW equipment_with_details AS
SELECT 
  -- Base equipment columns (excluding deprecated ones)
  e.id,
  e.name,
  e.item_id,
  e.slug,
  e.description,
  e.category,
  e.subcategory,
  e.is_pace_product,
  e.product_url,
  e.brochure_url,
  e.image_url,
  e.images,
  e.suitable_for_material_types,
  e.suitable_for_hardness,
  e.suitable_for_sample_sizes,
  e.suitable_for_sample_shapes,
  e.suitable_for_throughput,
  e.suitable_for_applications,
  e.min_budget_level,
  e.tags,
  e.status,
  e.sort_order,
  e.created_at,
  e.updated_at,
  -- Deprecated columns from base table (kept for backward compatibility)
  e.blade_size_mm as deprecated_blade_size_mm,
  e.blade_size_inches as deprecated_blade_size_inches,
  e.automation_level as deprecated_automation_level,
  e.wheel_size_inches as deprecated_wheel_size_inches,
  e.max_cutting_capacity_mm as deprecated_max_cutting_capacity_mm,
  e.max_cutting_capacity_inches as deprecated_max_cutting_capacity_inches,
  -- Category-specific columns from equipment_sectioning
  s.blade_size_mm,
  s.blade_size_inches,
  s.blade_type,
  s.arbor_size_mm,
  s.arbor_size_inches,
  s.max_cutting_capacity_mm,
  s.cutting_capacity_height_mm,
  s.cutting_capacity_height_inches,
  s.cutting_capacity_depth_mm,
  s.cutting_capacity_depth_inches,
  s.max_cutting_diameter_mm,
  s.max_cutting_diameter_inches,
  s.automation_level as sectioning_automation_level,
  s.cutting_speed_rpm,
  s.feed_rate_mm_per_min,
  s.motor_speed_range_rpm,
  s.motor_power_watts,
  s.motor_power_kw,
  s.cooling_system as sectioning_cooling_system,
  s.cooling_unit_capacity_liters,
  s.cooling_unit_capacity_gallons,
  s.sample_holder_type,
  s.precision_level,
  s.vertical_movement_mm,
  s.vertical_movement_inches,
  s.table_dimensions_mm,
  s.table_dimensions_inches,
  s.electrical_specification as sectioning_electrical_specification,
  s.cutting_force_max_amps,
  s.dimensions_mm as sectioning_dimensions_mm,
  s.dimensions_hood_closed_mm,
  s.dimensions_hood_open_mm,
  s.weight_kg as sectioning_weight_kg,
  s.optional_accessories as sectioning_optional_accessories,
  s.control_type,
  s.control_description,
  s.cutting_load_grams,
  s.micrometer_feed_distance_mm,
  s.micrometer_feed_distance_inches,
  s.micrometer_accuracy_microns,
  s.table_feed_range_mm,
  s.table_feed_range_inches,
  s.coolant_system_description,
  s.specimen_feed_type,
  s.created_at as sectioning_created_at,
  s.updated_at as sectioning_updated_at,
  -- Category-specific columns from equipment_mounting
  m.mounting_type,
  m.control,
  m.mount_sizes,
  m.mount_sizes_mm,
  m.mount_sizes_inches,
  m.mold_cylinders,
  m.force_type,
  m.max_force_mpa,
  m.max_force_psi,
  m.incoming_pressure_max_psi,
  m.max_pressure_psi,
  m.max_pressure_mpa,
  m.pressure_range_psi,
  m.heater_specification,
  m.max_temperature_celsius,
  m.max_temperature_fahrenheit,
  m.min_temperature_celsius,
  m.heating_capability,
  m.cooling_capability,
  m.cooling_system_description,
  m.chamber_size_mm,
  m.max_sample_size_mm,
  m.sample_support_surface_dimension_mm,
  m.sample_support_surface_dimension_inches,
  m.sample_support_surface_max_height_mm,
  m.sample_support_surface_max_height_inches,
  m.uv_curing_time_min,
  m.uv_wavelength_nm,
  m.vacuum_level_mbar,
  m.vacuum_pump_required,
  m.programmable_cycles as mounting_programmable_cycles,
  m.digital_controls,
  m.safety_features,
  m.power_consumption_watts,
  m.dimensions_mm as mounting_dimensions_mm,
  m.dimensions_inches,
  m.dimensions_closed_mm,
  m.dimensions_closed_inches,
  m.dimensions_open_mm,
  m.dimensions_open_inches,
  m.weight_kg as mounting_weight_kg,
  m.weight_lbs,
  m.optional_accessories as mounting_optional_accessories,
  m.voltage_frequency,
  m.operating_pressure_bar,
  m.safety_valve_overflow_pressure_bar,
  m.bell_jar_description,
  m.pump_flow_rate_gpm,
  m.pump_flow_rate_liters_per_min,
  m.tank_volume_gallons,
  m.tank_volume_liters,
  m.electrical_specification as mounting_electrical_specification,
  m.created_at as mounting_created_at,
  m.updated_at as mounting_updated_at,
  -- Category-specific columns from equipment_grinding_polishing
  gp.wheel_size_inches,
  gp.platen_material,
  gp.number_of_stations,
  gp.automation_level as grinding_automation_level,
  gp.speed_range_rpm,
  gp.force_range_n,
  gp.programmable_force,
  gp.cooling_system,
  gp.sample_holder_type as grinding_sample_holder_type,
  gp.controlled_removal,
  gp.motor_power_watts as grinding_motor_power_watts,
  gp.dimensions_mm as grinding_dimensions_mm,
  gp.weight_kg as grinding_weight_kg,
  -- New grinding-polishing fields
  gp.platen_size_inches,
  gp.platen_size_mm,
  gp.platen_diameter_inches,
  gp.platen_diameter_mm,
  gp.motor_power_hp,
  gp.motor_speed_range_rpm as grinding_motor_speed_range_rpm,
  gp.speed_control_type,
  gp.electrical_specification as grinding_electrical_specification,
  gp.force_control_type,
  gp.force_range_per_sample_n,
  gp.force_resolution_n,
  gp.number_of_pistons,
  gp.independent_force_control,
  gp.programmable_cycles as grinding_programmable_cycles,
  gp.number_of_programmable_steps,
  gp.cycle_control_type,
  gp.compatible_base_models,
  gp.vibration_frequency_hz,
  gp.vibration_amplitude_mm,
  gp.bowl_capacity_liters,
  gp.bowl_capacity_gallons,
  gp.bowl_material,
  gp.sample_capacity,
  gp.removal_rate_control,
  gp.removal_rate_range_microns_per_min,
  gp.thickness_measurement_capability,
  gp.thickness_measurement_accuracy_microns,
  gp.parallelism_control,
  gp.parallelism_tolerance_microns,
  gp.belt_size_inches,
  gp.belt_size_mm,
  gp.belt_speed_range_sfpm,
  gp.belt_speed_range_mps,
  gp.belt_type,
  gp.work_rest_included,
  gp.cooling_system_type,
  gp.fluid_dispenser_included,
  gp.fluid_dispenser_type,
  gp.fluid_dispenser_capacity_ml,
  gp.sample_holder_options,
  gp.fixture_included,
  gp.fixture_capacity,
  gp.weight_lbs as grinding_weight_lbs,
  gp.dimensions_inches as grinding_dimensions_inches,
  gp.optional_accessories as grinding_optional_accessories,
  gp.created_at as grinding_created_at,
  gp.updated_at as grinding_updated_at,
  -- Category-specific columns from equipment_microscopy
  mic.microscope_type,
  mic.magnification_range,
  mic.camera_resolution,
  mic.image_analysis_capable,
  -- Category-specific columns from equipment_hardness_testing
  ht.test_methods,
  ht.load_range_n,
  ht.automation_level as hardness_automation_level,
  -- Category-specific columns from equipment_lab_furniture
  lf.furniture_type,
  lf.dimensions_mm as furniture_dimensions_mm,
  lf.weight_capacity_kg
FROM equipment e
LEFT JOIN equipment_sectioning s ON e.id = s.equipment_id
LEFT JOIN equipment_mounting m ON e.id = m.equipment_id
LEFT JOIN equipment_grinding_polishing gp ON e.id = gp.equipment_id
LEFT JOIN equipment_microscopy mic ON e.id = mic.equipment_id
LEFT JOIN equipment_hardness_testing ht ON e.id = ht.equipment_id
LEFT JOIN equipment_lab_furniture lf ON e.id = lf.equipment_id;

COMMENT ON VIEW equipment_with_details IS 'Combined view of equipment with all category-specific attributes for backward compatibility';

