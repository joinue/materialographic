-- ============================================================================
-- EQUIPMENT SCHEMA REDESIGN: Category-Specific Tables
-- ============================================================================
-- This migration creates category-specific tables for equipment to allow
-- more granular, type-safe attributes for each equipment category.
--
-- DESIGN:
-- - Base `equipment` table: Contains common fields (name, item_id, slug, 
--   description, category, image_url, suitability attributes, tags, status, etc.)
-- - Category-specific tables: Contain only technical specifications unique
--   to each category (one-to-one relationship via equipment_id FK)
--
-- The base equipment table still has deprecated category-specific fields
-- (blade_size_mm, etc.) for backward compatibility, but new code should
-- use the category-specific tables.
-- ============================================================================

-- ============================================================================
-- STEP 1: CREATE CATEGORY-SPECIFIC TABLES
-- ============================================================================

-- Sectioning Equipment
CREATE TABLE IF NOT EXISTS equipment_sectioning (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Blade Specifications
  blade_size_mm INTEGER,
  blade_size_inches INTEGER,
  blade_type TEXT, -- 'abrasive', 'diamond', 'silicon-carbide', etc.
  
  -- Cutting Capacity
  max_cutting_capacity_mm NUMERIC,
  max_cutting_capacity_inches NUMERIC,
  
  -- Automation & Performance
  automation_level TEXT CHECK (automation_level IN ('manual', 'semi-automated', 'automated')),
  cutting_speed_rpm INTEGER,
  feed_rate_mm_per_min NUMERIC,
  
  -- Features
  cooling_system TEXT, -- 'water', 'air', 'none', 'recirculating'
  sample_holder_type TEXT, -- 'vice', 'fixture', 'table', etc.
  precision_level TEXT, -- 'standard', 'precision', 'ultra-precision'
  
  -- Additional Specifications
  motor_power_watts INTEGER,
  dimensions_mm JSONB, -- {width, height, depth}
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Mounting Equipment
CREATE TABLE IF NOT EXISTS equipment_mounting (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Mounting Type
  mounting_type TEXT, -- 'compression', 'castable', 'vacuum', 'pressure'
  
  -- Pressure Specifications
  max_pressure_psi NUMERIC,
  max_pressure_mpa NUMERIC,
  pressure_range_psi TEXT, -- e.g., "0-3000"
  
  -- Temperature Specifications
  max_temperature_celsius NUMERIC,
  min_temperature_celsius NUMERIC,
  heating_capability BOOLEAN DEFAULT false,
  cooling_capability BOOLEAN DEFAULT false,
  
  -- Chamber Specifications
  chamber_size_mm JSONB, -- {width, height, depth} or {diameter, height} for round
  max_sample_size_mm JSONB,
  
  -- Vacuum Specifications (for vacuum mounting)
  vacuum_level_mbar NUMERIC,
  vacuum_pump_required BOOLEAN DEFAULT false,
  
  -- Features
  programmable_cycles BOOLEAN DEFAULT false,
  digital_controls BOOLEAN DEFAULT false,
  safety_features TEXT[], -- ['over-pressure-protection', 'temperature-limit', etc.]
  
  -- Additional Specifications
  power_consumption_watts INTEGER,
  dimensions_mm JSONB,
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Grinding & Polishing Equipment
CREATE TABLE IF NOT EXISTS equipment_grinding_polishing (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Wheel/Platen Specifications
  wheel_size_inches INTEGER[], -- [8, 10] or [12, 14]
  platen_material TEXT, -- 'cast-iron', 'stainless-steel', 'composite'
  number_of_stations INTEGER,
  
  -- Automation
  automation_level TEXT CHECK (automation_level IN ('manual', 'semi-automated', 'automated')),
  
  -- Speed & Force
  speed_range_rpm TEXT, -- e.g., "50-500" or JSONB {min, max}
  force_range_n NUMERIC[], -- [min_force, max_force] in Newtons
  programmable_force BOOLEAN DEFAULT false,
  
  -- Features
  cooling_system TEXT, -- 'water', 'air', 'none', 'recirculating'
  sample_holder_type TEXT, -- 'manual', 'fixture', 'automated-head'
  controlled_removal BOOLEAN DEFAULT false, -- For controlled removal polishers
  
  -- Additional Specifications
  motor_power_watts INTEGER,
  dimensions_mm JSONB,
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Microscopy Equipment
CREATE TABLE IF NOT EXISTS equipment_microscopy (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Microscope Type
  microscope_type TEXT, -- 'metallurgical', 'stereo', 'digital', 'inverted'
  
  -- Optical Specifications
  magnification_range TEXT, -- e.g., "10x-1000x" or JSONB {min, max}
  objective_lenses TEXT[], -- ['5x', '10x', '20x', '50x', '100x']
  eyepiece_magnification TEXT, -- '10x', '15x', etc.
  
  -- Camera & Digital Features
  camera_resolution TEXT, -- e.g., "5MP", "12MP"
  image_analysis_capable BOOLEAN DEFAULT false,
  measurement_capabilities TEXT[], -- ['length', 'area', 'grain-size', 'phase-fraction', etc.]
  
  -- Illumination
  illumination_type TEXT[], -- ['brightfield', 'darkfield', 'polarized', 'DIC', 'fluorescence']
  light_source TEXT, -- 'LED', 'halogen', 'xenon', 'LED+halogen'
  
  -- Features
  motorized_stage BOOLEAN DEFAULT false,
  z_stack_capability BOOLEAN DEFAULT false,
  live_measurement BOOLEAN DEFAULT false,
  
  -- Additional Specifications
  dimensions_mm JSONB,
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Hardness Testing Equipment
CREATE TABLE IF NOT EXISTS equipment_hardness_testing (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Test Methods
  test_methods TEXT[], -- ['rockwell', 'brinell', 'vickers', 'knoop', 'microhardness']
  
  -- Load Specifications
  load_range_n NUMERIC[], -- [min_load, max_load] in Newtons
  load_range_kgf NUMERIC[], -- Alternative in kgf
  selectable_loads TEXT[], -- Specific load values available
  
  -- Indentation Specifications
  max_indentation_depth_mm NUMERIC,
  indenter_types TEXT[], -- ['diamond-cone', 'steel-ball', 'diamond-pyramid', etc.]
  
  -- Automation
  automation_level TEXT CHECK (automation_level IN ('manual', 'semi-automated', 'automated')),
  automatic_loading BOOLEAN DEFAULT false,
  
  -- Features
  data_export_capabilities TEXT[], -- ['usb', 'network', 'printer', 'software']
  measurement_accuracy TEXT, -- 'high', 'standard', etc.
  digital_display BOOLEAN DEFAULT true,
  
  -- Additional Specifications
  dimensions_mm JSONB,
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Lab Furniture
CREATE TABLE IF NOT EXISTS equipment_lab_furniture (
  equipment_id UUID PRIMARY KEY REFERENCES equipment(id) ON DELETE CASCADE,
  
  -- Furniture Type
  furniture_type TEXT, -- 'bench', 'cabinet', 'fume-hood', 'storage', 'workstation'
  
  -- Dimensions
  dimensions_mm JSONB, -- {width, height, depth}
  work_surface_area_m2 NUMERIC,
  
  -- Material & Construction
  material TEXT, -- 'steel', 'stainless-steel', 'wood', 'composite'
  surface_material TEXT, -- 'epoxy', 'stainless-steel', 'laminate', etc.
  
  -- Capacity
  weight_capacity_kg NUMERIC,
  storage_capacity TEXT, -- Description of storage space
  
  -- Features
  ventilation_required BOOLEAN DEFAULT false,
  electrical_outlets INTEGER,
  drawers INTEGER,
  shelves INTEGER,
  locking_mechanism BOOLEAN DEFAULT false,
  
  -- Safety Features
  safety_features TEXT[], -- ['fire-resistant', 'chemical-resistant', 'anti-static', etc.]
  
  -- Additional Specifications
  weight_kg NUMERIC,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ============================================================================
-- STEP 2: CREATE INDEXES
-- ============================================================================

CREATE INDEX IF NOT EXISTS idx_equipment_sectioning_automation ON equipment_sectioning(automation_level);
CREATE INDEX IF NOT EXISTS idx_equipment_sectioning_blade_size ON equipment_sectioning(blade_size_mm);

CREATE INDEX IF NOT EXISTS idx_equipment_mounting_type ON equipment_mounting(mounting_type);
CREATE INDEX IF NOT EXISTS idx_equipment_mounting_pressure ON equipment_mounting(max_pressure_psi);

CREATE INDEX IF NOT EXISTS idx_equipment_grinding_automation ON equipment_grinding_polishing(automation_level);

CREATE INDEX IF NOT EXISTS idx_equipment_microscopy_type ON equipment_microscopy(microscope_type);

CREATE INDEX IF NOT EXISTS idx_equipment_hardness_methods ON equipment_hardness_testing USING gin(test_methods);

CREATE INDEX IF NOT EXISTS idx_equipment_furniture_type ON equipment_lab_furniture(furniture_type);

-- ============================================================================
-- STEP 3: CREATE TRIGGERS FOR UPDATED_AT
-- ============================================================================

CREATE TRIGGER update_equipment_sectioning_updated_at
  BEFORE UPDATE ON equipment_sectioning
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_equipment_mounting_updated_at
  BEFORE UPDATE ON equipment_mounting
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_equipment_grinding_polishing_updated_at
  BEFORE UPDATE ON equipment_grinding_polishing
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_equipment_microscopy_updated_at
  BEFORE UPDATE ON equipment_microscopy
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_equipment_hardness_testing_updated_at
  BEFORE UPDATE ON equipment_hardness_testing
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_equipment_lab_furniture_updated_at
  BEFORE UPDATE ON equipment_lab_furniture
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- STEP 4: REMOVE OLD CATEGORY-SPECIFIC FIELDS FROM EQUIPMENT TABLE
-- ============================================================================
-- These fields are now in category-specific tables, so we remove them from
-- the base equipment table to avoid confusion and data duplication.
-- Note: We keep them for now with a comment, but they should be deprecated.
-- In a future migration, we can drop these columns after confirming all
-- data has been migrated and code updated.

-- For now, we'll add comments indicating these are deprecated
COMMENT ON COLUMN equipment.blade_size_mm IS 'DEPRECATED: Use equipment_sectioning.blade_size_mm instead';
COMMENT ON COLUMN equipment.blade_size_inches IS 'DEPRECATED: Use equipment_sectioning.blade_size_inches instead';
COMMENT ON COLUMN equipment.automation_level IS 'DEPRECATED: Use category-specific automation_level fields instead';
COMMENT ON COLUMN equipment.wheel_size_inches IS 'DEPRECATED: Use equipment_grinding_polishing.wheel_size_inches instead';
COMMENT ON COLUMN equipment.max_cutting_capacity_mm IS 'DEPRECATED: Use equipment_sectioning.max_cutting_capacity_mm instead';
COMMENT ON COLUMN equipment.max_cutting_capacity_inches IS 'DEPRECATED: Use equipment_sectioning.max_cutting_capacity_inches instead';

-- ============================================================================
-- STEP 5: MIGRATE EXISTING DATA
-- ============================================================================

-- Migrate sectioning equipment
INSERT INTO equipment_sectioning (
  equipment_id,
  blade_size_mm,
  blade_size_inches,
  max_cutting_capacity_mm,
  max_cutting_capacity_inches,
  automation_level
)
SELECT 
  id,
  blade_size_mm,
  blade_size_inches,
  max_cutting_capacity_mm,
  max_cutting_capacity_inches,
  automation_level
FROM equipment
WHERE category = 'sectioning'
  AND (blade_size_mm IS NOT NULL 
       OR blade_size_inches IS NOT NULL 
       OR max_cutting_capacity_mm IS NOT NULL 
       OR automation_level IS NOT NULL)
ON CONFLICT (equipment_id) DO NOTHING;

-- Migrate grinding-polishing equipment
INSERT INTO equipment_grinding_polishing (
  equipment_id,
  wheel_size_inches,
  automation_level
)
SELECT 
  id,
  wheel_size_inches,
  automation_level
FROM equipment
WHERE category = 'grinding-polishing'
  AND (wheel_size_inches IS NOT NULL OR automation_level IS NOT NULL)
ON CONFLICT (equipment_id) DO NOTHING;

-- Note: Other categories (mounting, microscopy, hardness-testing, lab-furniture)
-- don't have existing data in the old schema, so no migration needed for them

-- ============================================================================
-- STEP 6: CREATE VIEW FOR BACKWARD COMPATIBILITY
-- ============================================================================

-- View that combines base equipment with category-specific data
-- Note: We explicitly list columns from equipment table to avoid conflicts with
-- deprecated columns that are now in category-specific tables
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
  -- Category-specific columns from equipment_sectioning
  s.blade_size_mm,
  s.blade_size_inches,
  s.blade_type,
  s.max_cutting_capacity_mm,
  s.max_cutting_capacity_inches,
  s.automation_level as sectioning_automation_level,
  s.cutting_speed_rpm,
  s.cooling_system as sectioning_cooling_system,
  -- Category-specific columns from equipment_mounting
  m.mounting_type,
  m.max_pressure_psi,
  m.max_temperature_celsius,
  m.chamber_size_mm,
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

-- ============================================================================
-- STEP 7: ADD COMMENTS FOR DOCUMENTATION
-- ============================================================================

COMMENT ON TABLE equipment_sectioning IS 'Category-specific attributes for sectioning equipment (cutters, saws, etc.)';
COMMENT ON TABLE equipment_mounting IS 'Category-specific attributes for mounting equipment (presses, vacuum systems, etc.)';
COMMENT ON TABLE equipment_grinding_polishing IS 'Category-specific attributes for grinding and polishing equipment';
COMMENT ON TABLE equipment_microscopy IS 'Category-specific attributes for microscopy equipment';
COMMENT ON TABLE equipment_hardness_testing IS 'Category-specific attributes for hardness testing equipment';
COMMENT ON TABLE equipment_lab_furniture IS 'Category-specific attributes for lab furniture';

COMMENT ON VIEW equipment_with_details IS 'Combined view of equipment with all category-specific attributes for backward compatibility';

