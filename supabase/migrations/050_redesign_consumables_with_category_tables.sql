-- ============================================================================
-- CONSUMABLES SCHEMA REDESIGN: Category-Specific Tables
-- ============================================================================
-- This migration creates category-specific tables for consumables to allow
-- more granular, type-safe attributes for each consumable category.
--
-- DESIGN:
-- - Base `consumables` table: Contains common fields (name, item_id, sku, slug, 
--   description, category, subcategory, image_url, list_price, tags, status, etc.)
-- - Category-specific tables: Contain only technical specifications unique
--   to each category (one-to-one relationship via consumable_id FK)
-- ============================================================================

-- ============================================================================
-- STEP 1: DROP EXISTING CONSUMABLES DATA AND CONSTRAINTS
-- ============================================================================

-- Drop foreign key constraints that reference consumables
DROP TABLE IF EXISTS consumables CASCADE;

-- ============================================================================
-- STEP 2: CREATE BASE CONSUMABLES TABLE
-- ============================================================================

CREATE TABLE consumables (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  item_id TEXT UNIQUE,
  sku TEXT,
  slug TEXT UNIQUE,
  description TEXT,
  category TEXT NOT NULL,
  subcategory TEXT,
  
  -- Product Attributes
  is_pace_product BOOLEAN DEFAULT true,
  product_url TEXT,
  image_url TEXT,
  list_price NUMERIC,
  
  -- Suitability Attributes (for recommendation matching)
  suitable_for_material_types TEXT[],
  suitable_for_hardness TEXT[],
  compatible_with_equipment TEXT[],
  recommended_for_applications TEXT[],
  
  -- Metadata
  tags TEXT[],
  is_active BOOLEAN DEFAULT true,
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'discontinued', 'draft')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for efficient querying
CREATE INDEX idx_consumables_category ON consumables(category);
CREATE INDEX idx_consumables_subcategory ON consumables(subcategory);
CREATE INDEX idx_consumables_status ON consumables(status);
CREATE INDEX idx_consumables_item_id ON consumables(item_id);
CREATE INDEX idx_consumables_slug ON consumables(slug);

-- Create trigger for updated_at
CREATE TRIGGER update_consumables_updated_at BEFORE UPDATE ON consumables
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- STEP 3: CREATE CATEGORY-SPECIFIC TABLES
-- ============================================================================

-- Sectioning Consumables (Blades, Cutting Fluids, Dressing Sticks, Wafering Blades)
CREATE TABLE consumables_sectioning (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Blade Specifications
  blade_size_mm INTEGER,
  blade_size_inches INTEGER,
  blade_type TEXT, -- 'abrasive', 'diamond', 'silicon-carbide', 'wafering'
  blade_thickness_mm NUMERIC,
  blade_thickness_inches NUMERIC,
  arbor_size_mm NUMERIC,
  arbor_size_inches NUMERIC,
  
  -- Abrasive Specifications
  grit_size TEXT, -- e.g., '180', 'coarse', 'medium', 'fine'
  grit_concentration TEXT, -- 'low', 'medium', 'high'
  material_composition TEXT, -- e.g., 'alumina/resin', 'silicon-carbide/resin-rubber'
  bond_type TEXT, -- 'resin', 'rubber', 'resin-rubber', 'metal', 'electroplated'
  
  -- Performance Specifications
  max_speed_rpm INTEGER,
  recommended_speed_rpm INTEGER,
  cutting_rate_mm_per_min NUMERIC,
  
  -- Application Specifications
  suitable_for_materials TEXT[], -- ['steel', 'aluminum', 'titanium', etc.]
  suitable_for_hardness_levels TEXT[], -- ['soft', 'medium', 'hard', 'very-hard']
  application_notes TEXT,
  
  -- Fluid Specifications (for cutting fluids)
  fluid_type TEXT, -- 'water-based', 'oil-based', 'synthetic'
  volume_ml INTEGER,
  volume_oz INTEGER,
  anti_corrosion BOOLEAN DEFAULT false,
  
  -- Dressing Stick Specifications
  stick_size_mm INTEGER,
  stick_size_inches INTEGER,
  stick_material TEXT, -- 'aluminum-oxide', 'silicon-carbide', etc.
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Mounting Consumables (Compression and Castable)
CREATE TABLE consumables_mounting (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Mounting Type
  mounting_type TEXT, -- 'compression', 'castable'
  
  -- Resin Specifications
  resin_type TEXT, -- 'phenolic', 'epoxy', 'acrylic', 'diallyl-phthalate', 'conductive'
  resin_color TEXT, -- 'black', 'red', 'green', 'transparent', 'blue'
  resin_form TEXT, -- 'powder', 'liquid', 'paste', 'kit'
  
  -- Quantity/Size Specifications
  weight_kg NUMERIC,
  weight_lbs NUMERIC,
  volume_ml INTEGER,
  volume_oz INTEGER,
  package_size TEXT, -- e.g., '5 lbs', '25 lbs', '1 kg', '2.5 kg'
  
  -- Properties
  curing_temperature_celsius NUMERIC,
  curing_time_minutes INTEGER,
  shrinkage_percentage NUMERIC,
  hardness_shore TEXT, -- 'A', 'D', etc.
  edge_retention BOOLEAN DEFAULT false,
  conductive BOOLEAN DEFAULT false,
  conductive_material TEXT, -- 'graphite', 'copper', etc.
  glass_reinforced BOOLEAN DEFAULT false,
  transparent BOOLEAN DEFAULT false,
  
  -- Mold Release Specifications
  release_type TEXT, -- 'silicone', 'polymer', etc.
  release_form TEXT, -- 'spray', 'liquid', 'paste'
  
  -- Mold Specifications
  mold_size_mm JSONB, -- {width, height, depth} or {diameter, height}
  mold_type TEXT, -- 'round', 'square', 'rectangular'
  mold_material TEXT, -- 'steel', 'aluminum', 'plastic'
  
  -- Hardener Specifications (for castable)
  hardener_type TEXT,
  hardener_ratio TEXT, -- e.g., '1:1', '2:1'
  
  -- Specimen Clip Specifications
  clip_type TEXT,
  clip_size_mm JSONB,
  clip_material TEXT,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Grinding & Polishing Consumables
CREATE TABLE consumables_grinding_polishing (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Product Type
  product_type TEXT, -- 'abrasive', 'disk', 'paper', 'film', 'pad', 'powder', 'paste', 'slurry', 'belt', 'roll'
  
  -- Size Specifications
  size_inches INTEGER[], -- [8, 10, 12, 14] for disks/pads
  size_mm INTEGER[], -- For papers, films, etc.
  diameter_mm INTEGER,
  diameter_inches NUMERIC,
  width_mm INTEGER,
  width_inches NUMERIC,
  length_mm INTEGER,
  length_inches NUMERIC,
  thickness_mm NUMERIC,
  thickness_microns INTEGER,
  
  -- Abrasive Specifications
  abrasive_type TEXT, -- 'alumina', 'silicon-carbide', 'diamond', 'cerium-oxide', 'colloidal-silica', 'zirconia'
  grit_size TEXT, -- e.g., 'P120', 'P240', 'P400', '0.5 micron', '1 micron'
  grit_size_numeric INTEGER, -- Numeric grit value for sorting
  grit_concentration TEXT, -- 'low', 'medium', 'high'
  diamond_type TEXT, -- 'monocrystalline', 'polycrystalline', 'natural', 'synthetic'
  diamond_concentration TEXT, -- 'low', 'medium', 'high'
  
  -- Bond/Backing Specifications
  bond_type TEXT, -- 'resin', 'metal', 'electroplated', 'PSA', 'magnetic', 'plain-back'
  backing_type TEXT, -- 'PSA', 'magnetic-rubber', 'magnetic-stainless-steel', 'plain-back', 'polyester-film'
  backing_material TEXT, -- 'rubber', 'stainless-steel', 'polyester', etc.
  
  -- Form Specifications
  form TEXT, -- 'powder', 'paste', 'slurry', 'suspension', 'disk', 'paper', 'film', 'pad', 'belt', 'roll'
  viscosity TEXT, -- 'low', 'medium', 'high', 'water-based', 'oil-based'
  
  -- Application Specifications
  suitable_for_materials TEXT[],
  suitable_for_hardness_levels TEXT[],
  application_stage TEXT, -- 'rough-grinding', 'fine-grinding', 'rough-polishing', 'final-polishing'
  
  -- Special Properties
  waterproof BOOLEAN DEFAULT false,
  anti_static BOOLEAN DEFAULT false,
  electronics_grade BOOLEAN DEFAULT false,
  deagglomerated BOOLEAN DEFAULT false,
  
  -- Quantity Specifications
  quantity_per_package INTEGER,
  package_size TEXT,
  weight_kg NUMERIC,
  weight_lbs NUMERIC,
  volume_ml INTEGER,
  volume_oz INTEGER,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Etchants Consumables
CREATE TABLE consumables_etchants (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Etchant Specifications
  etchant_type TEXT, -- 'acid', 'alkaline', 'electrolytic', 'chemical'
  composition TEXT, -- Chemical formula or description
  concentration_percentage NUMERIC,
  
  -- Application Specifications
  suitable_for_materials TEXT[],
  application_method TEXT, -- 'immersion', 'swabbing', 'electrolytic'
  application_temperature_celsius NUMERIC,
  application_time_seconds INTEGER,
  
  -- Safety Specifications
  hazardous BOOLEAN DEFAULT false,
  requires_ventilation BOOLEAN DEFAULT false,
  storage_requirements TEXT,
  
  -- Quantity Specifications
  volume_ml INTEGER,
  volume_oz INTEGER,
  package_size TEXT,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Cleaning Consumables
CREATE TABLE consumables_cleaning (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Cleaning Product Specifications
  product_type TEXT, -- 'solvent', 'detergent', 'ultrasonic-cleaner', 'wipe', 'brush'
  cleaning_method TEXT, -- 'ultrasonic', 'manual', 'spray', 'immersion'
  
  -- Properties
  solvent_type TEXT, -- 'alcohol', 'acetone', 'water-based', etc.
  ph_level NUMERIC,
  biodegradable BOOLEAN DEFAULT false,
  
  -- Application Specifications
  suitable_for_materials TEXT[],
  removes TEXT[], -- ['grease', 'oil', 'abrasive-residue', 'etchant-residue']
  
  -- Quantity Specifications
  volume_ml INTEGER,
  volume_oz INTEGER,
  package_size TEXT,
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Hardness Testing Consumables
CREATE TABLE consumables_hardness_testing (
  consumable_id UUID PRIMARY KEY REFERENCES consumables(id) ON DELETE CASCADE,
  
  -- Product Type
  product_type TEXT, -- 'indenter', 'anvil', 'test-block', 'calibration-standard'
  test_type TEXT, -- 'rockwell', 'brinell', 'vickers', 'knoop', 'superficial'
  
  -- Indenter Specifications
  indenter_type TEXT, -- 'diamond', 'tungsten-carbide', 'steel-ball'
  indenter_shape TEXT, -- 'cone', 'ball', 'pyramid', 'knoop'
  indenter_angle_degrees NUMERIC, -- For cone/pyramid indenters
  ball_diameter_mm NUMERIC, -- For ball indenters
  
  -- Anvil Specifications
  anvil_type TEXT, -- 'flat', 'v-groove', 'round', 'spot'
  anvil_material TEXT, -- 'steel', 'tungsten-carbide', etc.
  anvil_size_mm JSONB,
  
  -- Test Block Specifications
  block_material TEXT,
  block_hardness_value NUMERIC,
  block_hardness_scale TEXT, -- 'HRC', 'HRB', 'HB', 'HV', 'HK'
  block_certification TEXT, -- 'NIST', 'ISO', etc.
  
  -- Calibration Specifications
  calibration_standard BOOLEAN DEFAULT false,
  certification_level TEXT, -- 'NIST', 'ISO', 'traceable'
  
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for category-specific tables
CREATE INDEX idx_consumables_sectioning_blade_type ON consumables_sectioning(blade_type);
CREATE INDEX idx_consumables_sectioning_blade_size ON consumables_sectioning(blade_size_mm);
CREATE INDEX idx_consumables_mounting_type ON consumables_mounting(mounting_type);
CREATE INDEX idx_consumables_mounting_resin_type ON consumables_mounting(resin_type);
CREATE INDEX idx_consumables_grinding_polishing_product_type ON consumables_grinding_polishing(product_type);
CREATE INDEX idx_consumables_grinding_polishing_abrasive_type ON consumables_grinding_polishing(abrasive_type);
CREATE INDEX idx_consumables_grinding_polishing_grit_size ON consumables_grinding_polishing(grit_size_numeric);
CREATE INDEX idx_consumables_etchants_type ON consumables_etchants(etchant_type);
CREATE INDEX idx_consumables_hardness_testing_type ON consumables_hardness_testing(product_type);

-- Create triggers for updated_at
CREATE TRIGGER update_consumables_sectioning_updated_at BEFORE UPDATE ON consumables_sectioning
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_mounting_updated_at BEFORE UPDATE ON consumables_mounting
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_grinding_polishing_updated_at BEFORE UPDATE ON consumables_grinding_polishing
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_etchants_updated_at BEFORE UPDATE ON consumables_etchants
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_cleaning_updated_at BEFORE UPDATE ON consumables_cleaning
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_hardness_testing_updated_at BEFORE UPDATE ON consumables_hardness_testing
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- STEP 4: CREATE VIEW FOR CONSUMABLES WITH DETAILS
-- ============================================================================

CREATE OR REPLACE VIEW consumables_with_details AS
SELECT 
  -- Base consumable fields
  c.id,
  c.name,
  c.item_id,
  c.sku,
  c.slug,
  c.description,
  c.category,
  c.subcategory,
  c.is_pace_product,
  c.product_url,
  c.image_url,
  c.list_price,
  c.suitable_for_material_types,
  c.suitable_for_hardness,
  c.compatible_with_equipment,
  c.recommended_for_applications,
  c.tags,
  c.is_active,
  c.status,
  c.sort_order,
  c.created_at,
  c.updated_at,
  -- Sectioning fields (excluding consumable_id, created_at, updated_at)
  cs.blade_size_mm AS sectioning_blade_size_mm,
  cs.blade_size_inches AS sectioning_blade_size_inches,
  cs.blade_type AS sectioning_blade_type,
  cs.blade_thickness_mm AS sectioning_blade_thickness_mm,
  cs.blade_thickness_inches AS sectioning_blade_thickness_inches,
  cs.arbor_size_mm AS sectioning_arbor_size_mm,
  cs.arbor_size_inches AS sectioning_arbor_size_inches,
  cs.grit_size AS sectioning_grit_size,
  cs.grit_concentration AS sectioning_grit_concentration,
  cs.material_composition AS sectioning_material_composition,
  cs.bond_type AS sectioning_bond_type,
  cs.max_speed_rpm AS sectioning_max_speed_rpm,
  cs.recommended_speed_rpm AS sectioning_recommended_speed_rpm,
  cs.cutting_rate_mm_per_min AS sectioning_cutting_rate_mm_per_min,
  cs.suitable_for_materials AS sectioning_suitable_for_materials,
  cs.suitable_for_hardness_levels AS sectioning_suitable_for_hardness_levels,
  cs.application_notes AS sectioning_application_notes,
  cs.fluid_type AS sectioning_fluid_type,
  cs.volume_ml AS sectioning_volume_ml,
  cs.volume_oz AS sectioning_volume_oz,
  cs.anti_corrosion AS sectioning_anti_corrosion,
  cs.stick_size_mm AS sectioning_stick_size_mm,
  cs.stick_size_inches AS sectioning_stick_size_inches,
  cs.stick_material AS sectioning_stick_material,
  -- Mounting fields (excluding consumable_id, created_at, updated_at)
  cm.mounting_type AS mounting_mounting_type,
  cm.resin_type AS mounting_resin_type,
  cm.resin_color AS mounting_resin_color,
  cm.resin_form AS mounting_resin_form,
  cm.weight_kg AS mounting_weight_kg,
  cm.weight_lbs AS mounting_weight_lbs,
  cm.volume_ml AS mounting_volume_ml,
  cm.volume_oz AS mounting_volume_oz,
  cm.package_size AS mounting_package_size,
  cm.curing_temperature_celsius AS mounting_curing_temperature_celsius,
  cm.curing_time_minutes AS mounting_curing_time_minutes,
  cm.shrinkage_percentage AS mounting_shrinkage_percentage,
  cm.hardness_shore AS mounting_hardness_shore,
  cm.edge_retention AS mounting_edge_retention,
  cm.conductive AS mounting_conductive,
  cm.conductive_material AS mounting_conductive_material,
  cm.glass_reinforced AS mounting_glass_reinforced,
  cm.transparent AS mounting_transparent,
  cm.release_type AS mounting_release_type,
  cm.release_form AS mounting_release_form,
  cm.mold_size_mm AS mounting_mold_size_mm,
  cm.mold_type AS mounting_mold_type,
  cm.mold_material AS mounting_mold_material,
  cm.hardener_type AS mounting_hardener_type,
  cm.hardener_ratio AS mounting_hardener_ratio,
  cm.clip_type AS mounting_clip_type,
  cm.clip_size_mm AS mounting_clip_size_mm,
  cm.clip_material AS mounting_clip_material,
  -- Grinding & Polishing fields (excluding consumable_id, created_at, updated_at)
  cgp.product_type AS grinding_polishing_product_type,
  cgp.size_inches AS grinding_polishing_size_inches,
  cgp.size_mm AS grinding_polishing_size_mm,
  cgp.diameter_mm AS grinding_polishing_diameter_mm,
  cgp.diameter_inches AS grinding_polishing_diameter_inches,
  cgp.width_mm AS grinding_polishing_width_mm,
  cgp.width_inches AS grinding_polishing_width_inches,
  cgp.length_mm AS grinding_polishing_length_mm,
  cgp.length_inches AS grinding_polishing_length_inches,
  cgp.thickness_mm AS grinding_polishing_thickness_mm,
  cgp.thickness_microns AS grinding_polishing_thickness_microns,
  cgp.abrasive_type AS grinding_polishing_abrasive_type,
  cgp.grit_size AS grinding_polishing_grit_size,
  cgp.grit_size_numeric AS grinding_polishing_grit_size_numeric,
  cgp.grit_concentration AS grinding_polishing_grit_concentration,
  cgp.diamond_type AS grinding_polishing_diamond_type,
  cgp.diamond_concentration AS grinding_polishing_diamond_concentration,
  cgp.bond_type AS grinding_polishing_bond_type,
  cgp.backing_type AS grinding_polishing_backing_type,
  cgp.backing_material AS grinding_polishing_backing_material,
  cgp.form AS grinding_polishing_form,
  cgp.viscosity AS grinding_polishing_viscosity,
  cgp.suitable_for_materials AS grinding_polishing_suitable_for_materials,
  cgp.suitable_for_hardness_levels AS grinding_polishing_suitable_for_hardness_levels,
  cgp.application_stage AS grinding_polishing_application_stage,
  cgp.waterproof AS grinding_polishing_waterproof,
  cgp.anti_static AS grinding_polishing_anti_static,
  cgp.electronics_grade AS grinding_polishing_electronics_grade,
  cgp.deagglomerated AS grinding_polishing_deagglomerated,
  cgp.quantity_per_package AS grinding_polishing_quantity_per_package,
  cgp.package_size AS grinding_polishing_package_size,
  cgp.weight_kg AS grinding_polishing_weight_kg,
  cgp.weight_lbs AS grinding_polishing_weight_lbs,
  cgp.volume_ml AS grinding_polishing_volume_ml,
  cgp.volume_oz AS grinding_polishing_volume_oz,
  -- Etchants fields (excluding consumable_id, created_at, updated_at)
  ce.etchant_type AS etchants_etchant_type,
  ce.composition AS etchants_composition,
  ce.concentration_percentage AS etchants_concentration_percentage,
  ce.suitable_for_materials AS etchants_suitable_for_materials,
  ce.application_method AS etchants_application_method,
  ce.application_temperature_celsius AS etchants_application_temperature_celsius,
  ce.application_time_seconds AS etchants_application_time_seconds,
  ce.hazardous AS etchants_hazardous,
  ce.requires_ventilation AS etchants_requires_ventilation,
  ce.storage_requirements AS etchants_storage_requirements,
  ce.volume_ml AS etchants_volume_ml,
  ce.volume_oz AS etchants_volume_oz,
  ce.package_size AS etchants_package_size,
  -- Cleaning fields (excluding consumable_id, created_at, updated_at)
  ccl.product_type AS cleaning_product_type,
  ccl.cleaning_method AS cleaning_cleaning_method,
  ccl.solvent_type AS cleaning_solvent_type,
  ccl.ph_level AS cleaning_ph_level,
  ccl.biodegradable AS cleaning_biodegradable,
  ccl.suitable_for_materials AS cleaning_suitable_for_materials,
  ccl.removes AS cleaning_removes,
  ccl.volume_ml AS cleaning_volume_ml,
  ccl.volume_oz AS cleaning_volume_oz,
  ccl.package_size AS cleaning_package_size,
  -- Hardness Testing fields (excluding consumable_id, created_at, updated_at)
  cht.product_type AS hardness_testing_product_type,
  cht.test_type AS hardness_testing_test_type,
  cht.indenter_type AS hardness_testing_indenter_type,
  cht.indenter_shape AS hardness_testing_indenter_shape,
  cht.indenter_angle_degrees AS hardness_testing_indenter_angle_degrees,
  cht.ball_diameter_mm AS hardness_testing_ball_diameter_mm,
  cht.anvil_type AS hardness_testing_anvil_type,
  cht.anvil_material AS hardness_testing_anvil_material,
  cht.anvil_size_mm AS hardness_testing_anvil_size_mm,
  cht.block_material AS hardness_testing_block_material,
  cht.block_hardness_value AS hardness_testing_block_hardness_value,
  cht.block_hardness_scale AS hardness_testing_block_hardness_scale,
  cht.block_certification AS hardness_testing_block_certification,
  cht.calibration_standard AS hardness_testing_calibration_standard,
  cht.certification_level AS hardness_testing_certification_level
FROM consumables c
LEFT JOIN consumables_sectioning cs ON c.id = cs.consumable_id
LEFT JOIN consumables_mounting cm ON c.id = cm.consumable_id
LEFT JOIN consumables_grinding_polishing cgp ON c.id = cgp.consumable_id
LEFT JOIN consumables_etchants ce ON c.id = ce.consumable_id
LEFT JOIN consumables_cleaning ccl ON c.id = ccl.consumable_id
LEFT JOIN consumables_hardness_testing cht ON c.id = cht.consumable_id;

