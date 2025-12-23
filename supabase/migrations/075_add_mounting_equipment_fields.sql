-- ============================================================================
-- ADD MOUNTING EQUIPMENT SPECIFICATIONS FIELDS
-- ============================================================================
-- This migration adds fields to support both compression mounting equipment
-- (like TP-7500S) and UV curing equipment (like TeraUV).
-- Following the sectioning pattern, many fields are TEXT for flexibility.
-- ============================================================================

-- Drop the view first to allow column alterations
DROP VIEW IF EXISTS equipment_with_details CASCADE;

-- Add compression mounting specific fields
ALTER TABLE equipment_mounting
  ADD COLUMN IF NOT EXISTS control TEXT, -- e.g., "Touch screen"
  ADD COLUMN IF NOT EXISTS mount_sizes TEXT, -- e.g., "1, 1.25, 1.5, and 2-inch (25, 30, 40 mm)"
  ADD COLUMN IF NOT EXISTS mount_sizes_mm TEXT, -- e.g., "25, 30, 40 mm"
  ADD COLUMN IF NOT EXISTS mount_sizes_inches TEXT, -- e.g., "1, 1.25, 1.5, and 2-inch"
  ADD COLUMN IF NOT EXISTS mold_cylinders TEXT, -- e.g., "Single", "Dual"
  ADD COLUMN IF NOT EXISTS force_type TEXT, -- e.g., "Hydraulic", "Pneumatic"
  ADD COLUMN IF NOT EXISTS max_force_mpa TEXT, -- e.g., "32 MPa"
  ADD COLUMN IF NOT EXISTS max_force_psi TEXT, -- e.g., "4500 psi"
  ADD COLUMN IF NOT EXISTS incoming_pressure_max_psi TEXT, -- e.g., "Max. 95 psi" (for pneumatic systems)
  ADD COLUMN IF NOT EXISTS heater_specification TEXT, -- e.g., "1000 Watts (110V 15 amp), 2000 Watts (220V 10 amp)"
  ADD COLUMN IF NOT EXISTS max_temperature_fahrenheit TEXT, -- e.g., "392°F"
  ADD COLUMN IF NOT EXISTS cooling_system_description TEXT, -- e.g., "Water with manual, temperature, or time control"
  ADD COLUMN IF NOT EXISTS dimensions_inches JSONB, -- e.g., {"width": 21, "depth": 19, "height": 19}
  ADD COLUMN IF NOT EXISTS weight_lbs TEXT, -- e.g., "108 lbs"
  ADD COLUMN IF NOT EXISTS optional_accessories JSONB; -- Array of accessory objects

-- Add UV curing specific fields
ALTER TABLE equipment_mounting
  ADD COLUMN IF NOT EXISTS sample_support_surface_dimension_mm JSONB, -- e.g., {"width": 260, "depth": 200}
  ADD COLUMN IF NOT EXISTS sample_support_surface_dimension_inches JSONB, -- e.g., {"width": 10.2, "depth": 7.9}
  ADD COLUMN IF NOT EXISTS sample_support_surface_max_height_mm TEXT, -- e.g., "50 mm"
  ADD COLUMN IF NOT EXISTS sample_support_surface_max_height_inches TEXT, -- e.g., "2-inch"
  ADD COLUMN IF NOT EXISTS uv_curing_time_min TEXT, -- e.g., "0-100 min" or "0-999 secs"
  ADD COLUMN IF NOT EXISTS uv_wavelength_nm TEXT, -- e.g., "365nm" or "Main 365nm"
  ADD COLUMN IF NOT EXISTS dimensions_closed_mm JSONB, -- e.g., {"width": 400, "depth": 404, "height": 188}
  ADD COLUMN IF NOT EXISTS dimensions_closed_inches JSONB, -- e.g., {"width": 15.8, "depth": 15.9, "height": 7.4}
  ADD COLUMN IF NOT EXISTS dimensions_open_mm JSONB, -- e.g., {"width": 400, "depth": 651, "height": 188}
  ADD COLUMN IF NOT EXISTS dimensions_open_inches JSONB, -- e.g., {"width": 15.8, "depth": 25.6, "height": 7.4}
  ADD COLUMN IF NOT EXISTS voltage_frequency TEXT; -- e.g., "85-240V, 50/60Hz (1Ph/N/PE)"

-- Add pressure mounting specific fields (for castable mounting like TeraCOMP)
ALTER TABLE equipment_mounting
  ADD COLUMN IF NOT EXISTS operating_pressure_bar TEXT, -- e.g., "2.0 bar"
  ADD COLUMN IF NOT EXISTS safety_valve_overflow_pressure_bar TEXT; -- e.g., "2.8～3.3 bar"

-- Add vacuum mounting specific fields (for vacuum mounting like TeraVAC)
ALTER TABLE equipment_mounting
  ADD COLUMN IF NOT EXISTS bell_jar_description TEXT; -- e.g., "Tilting, retractable pouring arm"

-- Add cooling tank/accessory specific fields (for accessories like TP-TANK)
ALTER TABLE equipment_mounting
  ADD COLUMN IF NOT EXISTS pump_flow_rate_gpm TEXT, -- e.g., "1.3 GPM"
  ADD COLUMN IF NOT EXISTS pump_flow_rate_liters_per_min TEXT, -- e.g., "5 L/min"
  ADD COLUMN IF NOT EXISTS tank_volume_gallons TEXT, -- e.g., "14 gallons"
  ADD COLUMN IF NOT EXISTS tank_volume_liters TEXT, -- e.g., "53 L"
  ADD COLUMN IF NOT EXISTS electrical_specification TEXT; -- e.g., "110 / 220V (50/60 Hz)"

-- Convert existing numeric fields to TEXT for flexibility (following sectioning pattern)
ALTER TABLE equipment_mounting
  ALTER COLUMN max_pressure_psi TYPE TEXT USING 
    CASE 
      WHEN max_pressure_psi IS NULL THEN NULL
      ELSE max_pressure_psi::TEXT
    END,
  ALTER COLUMN max_pressure_mpa TYPE TEXT USING
    CASE 
      WHEN max_pressure_mpa IS NULL THEN NULL
      ELSE max_pressure_mpa::TEXT
    END,
  ALTER COLUMN max_temperature_celsius TYPE TEXT USING
    CASE 
      WHEN max_temperature_celsius IS NULL THEN NULL
      ELSE max_temperature_celsius::TEXT
    END,
  ALTER COLUMN min_temperature_celsius TYPE TEXT USING
    CASE 
      WHEN min_temperature_celsius IS NULL THEN NULL
      ELSE min_temperature_celsius::TEXT
    END,
  ALTER COLUMN power_consumption_watts TYPE TEXT USING
    CASE 
      WHEN power_consumption_watts IS NULL THEN NULL
      ELSE power_consumption_watts::TEXT
    END,
  ALTER COLUMN weight_kg TYPE TEXT USING
    CASE 
      WHEN weight_kg IS NULL THEN NULL
      ELSE weight_kg::TEXT
    END,
  ALTER COLUMN vacuum_level_mbar TYPE TEXT USING
    CASE 
      WHEN vacuum_level_mbar IS NULL THEN NULL
      ELSE vacuum_level_mbar::TEXT
    END;

-- Recreate the view with all new mounting fields
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
  e.image_url,
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
  -- Category-specific columns from equipment_sectioning (now TEXT types)
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
  s.electrical_specification,
  s.cutting_force_max_amps,
  s.dimensions_mm,
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
  -- Category-specific columns from equipment_mounting (now TEXT types)
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
  m.programmable_cycles,
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
  gp.automation_level as grinding_automation_level,
  gp.speed_range_rpm,
  gp.number_of_stations,
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

