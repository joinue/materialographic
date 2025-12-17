-- Migration: Standardize subcategories and seed subcategory metadata
-- This migration:
-- 1. Ensures subcategory_metadata table exists (creates if missing)
-- 2. Seeds subcategory_metadata table with all subcategories
-- 3. Standardizes subcategory values in equipment and consumables tables
-- 4. Adds indexes for efficient subcategory queries

-- ============================================================================
-- 0. ENSURE TABLE EXISTS (in case migration 024 hasn't run)
-- ============================================================================

CREATE TABLE IF NOT EXISTS subcategory_metadata (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Classification
  entity_type TEXT NOT NULL CHECK (entity_type IN ('equipment', 'consumables')),
  category TEXT NOT NULL,
  subcategory_key TEXT NOT NULL,
  subcategory_label TEXT NOT NULL,
  
  -- Display & Navigation
  display_order INTEGER DEFAULT 0,
  description TEXT,
  cover_image_url TEXT,
  
  -- SEO
  meta_title TEXT,
  meta_description TEXT,
  
  -- Metadata
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Unique constraint
  UNIQUE(entity_type, category, subcategory_key)
);

-- Create indexes if they don't exist
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_entity ON subcategory_metadata(entity_type, category);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_active ON subcategory_metadata(is_active);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_display_order ON subcategory_metadata(entity_type, category, display_order);

-- Add updated_at trigger if it doesn't exist
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_trigger 
    WHERE tgname = 'update_subcategory_metadata_updated_at'
  ) THEN
    CREATE TRIGGER update_subcategory_metadata_updated_at 
      BEFORE UPDATE ON subcategory_metadata
      FOR EACH ROW 
      EXECUTE FUNCTION update_updated_at_column();
  END IF;
END $$;

-- ============================================================================
-- 1. SEED SUBCATEGORY METADATA (using ON CONFLICT to handle duplicates)
-- ============================================================================

INSERT INTO subcategory_metadata (entity_type, category, subcategory_key, subcategory_label, display_order, description, cover_image_url)
VALUES
  -- Equipment: Sectioning
  ('equipment', 'sectioning', 'automated', 'Automated', 1, 'Automated abrasive cutters with programmable controls for high-throughput sectioning', NULL),
  ('equipment', 'sectioning', 'manual', 'Manual', 2, 'Manual abrasive cutters for versatile sample sectioning', NULL),
  ('equipment', 'sectioning', 'precision-wafering', 'Precision Wafering', 3, 'Precision wafering cutters for delicate samples requiring minimal damage', NULL),
  
  -- Equipment: Mounting
  ('equipment', 'mounting', 'compression', 'Compression Mounting', 1, 'Compression mounting presses for hot mounting with phenolic, acrylic, and other thermosetting resins', NULL),
  ('equipment', 'mounting', 'castable', 'Castable Mounting', 2, 'Castable mounting systems for cold mounting including vacuum, pressure, and UV curing systems', NULL),
  
  -- Equipment: Grinding & Polishing
  ('equipment', 'grinding-polishing', 'manual', 'Manual Grinder/Polishers', 1, 'Manual grinder polishers for single or double wheel operation', NULL),
  ('equipment', 'grinding-polishing', 'semi-automated', 'Semi-Automated', 2, 'Semi-automated polishing heads for increased throughput and consistency', NULL),
  ('equipment', 'grinding-polishing', 'automated', 'Automated', 3, 'Fully automated polishing systems for maximum throughput', NULL),
  ('equipment', 'grinding-polishing', 'hand-belt', 'Hand & Belt Grinders', 4, 'Hand and belt grinders for coarse grinding operations', NULL),
  ('equipment', 'grinding-polishing', 'vibratory', 'Vibratory Polishers', 5, 'Vibratory polishers for gentle polishing of delicate materials', NULL),
  ('equipment', 'grinding-polishing', 'controlled-removal', 'Controlled Removal', 6, 'Controlled removal polishers for precision plano-parallel sample preparation', NULL),
  
  -- Equipment: Microscopy
  ('equipment', 'microscopy', 'metallurgical', 'Metallurgical Microscopes', 1, 'Inverted metallurgical microscopes for microstructure analysis', NULL),
  ('equipment', 'microscopy', 'stereo', 'Stereo Microscopes', 2, 'Stereo microscopes for low magnification viewing and documentation', NULL),
  ('equipment', 'microscopy', 'image-analysis', 'Image Analysis', 3, 'Image analysis software and systems for quantitative metallography', NULL),
  
  -- Equipment: Hardness Testing
  ('equipment', 'hardness-testing', 'rockwell', 'Rockwell Testers', 1, 'Rockwell hardness testers for macro hardness testing', NULL),
  ('equipment', 'hardness-testing', 'microhardness', 'Microhardness Testers', 2, 'Microhardness testers for Vickers and Knoop testing', NULL),
  ('equipment', 'hardness-testing', 'brinell-microvickers', 'Brinell & Macro Vickers', 3, 'Brinell and macro Vickers testers for large indentation testing', NULL),
  
  -- Equipment: Lab Furniture
  ('equipment', 'lab-furniture', 'workbenches', 'Workbenches', 1, 'Laboratory workbenches and tables designed for metallography equipment', NULL),
  ('equipment', 'lab-furniture', 'fume-hoods', 'Fume Hoods', 2, 'Fume hoods for safe chemical handling and etching operations', NULL),
  ('equipment', 'lab-furniture', 'safety-cabinets', 'Safety Cabinets', 3, 'Safety storage cabinets for chemicals and consumables', NULL),
  ('equipment', 'lab-furniture', 'storage', 'Storage', 4, 'Specimen storage solutions and cabinets', NULL),

  -- Consumables: Sectioning
  ('consumables', 'sectioning', 'abrasive-cutting', 'Abrasive Cutting', 1, 'Abrasive blades and cutting fluids for sectioning operations', '/images/consumables/sectioning-cover.webp'),
  ('consumables', 'sectioning', 'precision-wafering', 'Precision Wafering', 2, 'Diamond and CBN wafering blades for precision cutting with minimal damage', '/images/consumables/sectioning-cover.webp'),
  
  -- Consumables: Mounting
  ('consumables', 'mounting', 'compression', 'Compression Mounting', 1, 'Compression mounting resins and accessories for hot mounting', '/images/consumables/mounting-cover.webp'),
  ('consumables', 'mounting', 'castable', 'Castable Mounting', 2, 'Castable mounting resins and accessories for cold mounting', '/images/consumables/castable-mounting-cover.png'),
  
  -- Consumables: Grinding & Lapping
  ('consumables', 'grinding-lapping', 'grinding-papers', 'Grinding Papers', 1, 'SiC, Alumina, and Zirconia grinding papers in various grit sizes', '/images/consumables/grinding & lapping-cover.webp'),
  ('consumables', 'grinding-lapping', 'grinding-powders', 'Grinding Powders', 2, 'SiC grinding powders for lapping operations', '/images/consumables/grinding SiC powders.webp'),
  ('consumables', 'grinding-lapping', 'lapping-films', 'Lapping Films', 3, 'Diamond and alumina lapping films for precision lapping', '/images/consumables/diamond-lapping films.webp'),
  ('consumables', 'grinding-lapping', 'grinding-belts', 'Grinding Belts', 4, 'Abrasive belts for belt grinders', '/images/consumables/belts.webp'),
  ('consumables', 'grinding-lapping', 'grinding-rolls', 'Grinding Rolls', 5, 'SiC grinding rolls for hand grinders', '/images/consumables/rolls.webp'),
  
  -- Consumables: Polishing
  ('consumables', 'polishing', 'rough', 'Rough Polishing', 1, 'Diamond pastes, suspensions, and polishing pads for rough polishing', '/images/consumables/rough polishing-cover.webp'),
  ('consumables', 'polishing', 'final', 'Final Polishing', 2, 'Alumina powders, colloidal silica, and final polishing agents', '/images/consumables/final polishing & analysis-cover.webp'),
  
  -- Consumables: Etching
  ('consumables', 'etching', 'general-purpose', 'General Purpose', 1, 'General-purpose etchants for multiple materials', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'steel', 'Steel Etchants', 2, 'Etchants specifically formulated for steels', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'stainless-steel', 'Stainless Steel', 3, 'Etchants for stainless steels and high-alloy materials', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'aluminum', 'Aluminum & Light Metals', 4, 'Etchants for aluminum and light metals', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'titanium', 'Titanium', 5, 'Etchants for titanium and titanium alloys', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'copper-brass', 'Copper & Brass', 6, 'Etchants for copper and brass alloys', '/images/consumables/etching.webp'),
  ('consumables', 'etching', 'nickel', 'Nickel & Nickel Alloys', 7, 'Etchants for nickel and nickel alloys', '/images/consumables/etching.webp'),
  
  -- Consumables: Cleaning
  ('consumables', 'cleaning', 'ultrasonic', 'Ultrasonic Cleaning', 1, 'Ultrasonic cleaning solutions and systems', '/images/consumables/cleaning.webp'),
  ('consumables', 'cleaning', 'solvents', 'Solvents', 2, 'Cleaning solvents and degreasers', '/images/consumables/cleaning.webp'),
  
  -- Consumables: Hardness Testing
  ('consumables', 'hardness-testing', 'accessories', 'Accessories', 1, 'Hardness testing accessories and supplies', '/images/consumables/hardness testing.webp')
ON CONFLICT (entity_type, category, subcategory_key) DO UPDATE SET
  subcategory_label = EXCLUDED.subcategory_label,
  display_order = EXCLUDED.display_order,
  description = EXCLUDED.description,
  cover_image_url = EXCLUDED.cover_image_url,
  updated_at = NOW();

-- ============================================================================
-- 2. STANDARDIZE EQUIPMENT SUBCATEGORIES
-- ============================================================================

-- Sectioning Equipment
UPDATE equipment SET subcategory = 'automated' 
WHERE category = 'sectioning' 
  AND (
    subcategory ILIKE '%automated%' 
    OR automation_level = 'automated'
    OR item_id ILIKE '%A'
    OR (item_id ILIKE 'MEGA-T%' AND item_id ILIKE '%A')
  );

UPDATE equipment SET subcategory = 'manual' 
WHERE category = 'sectioning' 
  AND (
    subcategory ILIKE '%manual%' 
    OR automation_level = 'manual'
    OR (subcategory IS NULL AND automation_level IS NULL)
    OR item_id ILIKE 'MEGA-M%'
    OR item_id ILIKE 'MEGA-T%S'
  );

UPDATE equipment SET subcategory = 'precision-wafering' 
WHERE category = 'sectioning' 
  AND (
    subcategory ILIKE '%wafering%' 
    OR subcategory ILIKE '%precision%'
    OR item_id ILIKE 'PICO-%'
  );

-- Mounting Equipment
UPDATE equipment SET subcategory = 'compression' 
WHERE category = 'mounting' 
  AND (
    subcategory ILIKE '%compression%' 
    OR subcategory ILIKE '%hot%'
    OR item_id ILIKE 'TP-%'
    OR description ILIKE '%compression%'
    OR description ILIKE '%hot mounting%'
  );

UPDATE equipment SET subcategory = 'castable' 
WHERE category = 'mounting' 
  AND (
    subcategory ILIKE '%castable%' 
    OR subcategory ILIKE '%cold%' 
    OR subcategory ILIKE '%vacuum%' 
    OR subcategory ILIKE '%pressure%' 
    OR subcategory ILIKE '%uv%'
    OR item_id ILIKE 'Tera%'
    OR description ILIKE '%castable%'
    OR description ILIKE '%vacuum%'
    OR description ILIKE '%pressure mounting%'
    OR description ILIKE '%uv curing%'
  );

-- Grinding & Polishing Equipment
UPDATE equipment SET subcategory = 'manual' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%manual%'
    OR item_id ILIKE 'NANO-%'
    OR description ILIKE '%manual%'
  );

UPDATE equipment SET subcategory = 'semi-automated' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%semi%'
    OR item_id ILIKE 'FEMTO-%'
    OR automation_level = 'semi-automated'
  );

UPDATE equipment SET subcategory = 'automated' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%automated%'
    OR automation_level = 'automated'
  );

UPDATE equipment SET subcategory = 'hand-belt' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%hand%'
    OR subcategory ILIKE '%belt%'
    OR item_id ILIKE 'PENTA-%'
  );

UPDATE equipment SET subcategory = 'vibratory' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%vibratory%'
    OR item_id ILIKE 'GIGA-%'
  );

UPDATE equipment SET subcategory = 'controlled-removal' 
WHERE category IN ('grinding', 'polishing')
  AND (
    subcategory ILIKE '%controlled%'
    OR item_id ILIKE 'ATTO-%'
  );

-- Microscopy Equipment
UPDATE equipment SET subcategory = 'metallurgical' 
WHERE category = 'microscopy'
  AND (
    subcategory ILIKE '%metallurgical%'
    OR item_id ILIKE 'IM-%'
  );

UPDATE equipment SET subcategory = 'stereo' 
WHERE category = 'microscopy'
  AND (
    subcategory ILIKE '%stereo%'
    OR item_id ILIKE 'VM-%'
    OR item_id ILIKE 'ZMS%'
  );

UPDATE equipment SET subcategory = 'image-analysis' 
WHERE category = 'microscopy'
  AND (
    subcategory ILIKE '%image%'
    OR subcategory ILIKE '%analysis%'
    OR description ILIKE '%image analysis%'
    OR description ILIKE '%software%'
  );

-- Hardness Testing Equipment
UPDATE equipment SET subcategory = 'rockwell' 
WHERE category = 'hardness'
  AND (
    subcategory ILIKE '%rockwell%'
    OR item_id ILIKE 'OMEGA-RT%'
    OR item_id ILIKE 'OMEGA-DIGI-RT%'
    OR item_id ILIKE 'OMEGA-AUTO-RT%'
    OR item_id ILIKE 'OMEGA-SRT%'
  );

UPDATE equipment SET subcategory = 'microhardness' 
WHERE category = 'hardness'
  AND (
    subcategory ILIKE '%micro%'
    OR item_id ILIKE 'ALPHA-%'
  );

UPDATE equipment SET subcategory = 'brinell-microvickers' 
WHERE category = 'hardness'
  AND (
    subcategory ILIKE '%brinell%'
    OR subcategory ILIKE '%macro%'
    OR item_id ILIKE 'OMEGA-HB%'
    OR item_id ILIKE 'OMEGA-5000%'
  );

-- Lab Furniture
UPDATE equipment SET subcategory = 'storage' 
WHERE category IN ('cleaning', 'lab-furniture')
  AND (
    subcategory ILIKE '%storage%'
    OR item_id ILIKE 'SPEC-%'
  );

-- ============================================================================
-- 3. STANDARDIZE CONSUMABLES SUBCATEGORIES
-- ============================================================================

-- Sectioning Consumables
UPDATE consumables SET subcategory = 'abrasive-cutting' 
WHERE category = 'sectioning' 
  AND (
    (subcategory ILIKE '%abrasive%' AND subcategory NOT ILIKE '%wafering%')
    OR subcategory ILIKE '%cutting%'
    OR item_id ILIKE 'MAX-%'
    OR item_id ILIKE 'DMAX-%'
    OR type = 'abrasive-blade'
    OR type = 'cutting-fluid'
  );

UPDATE consumables SET subcategory = 'precision-wafering' 
WHERE category = 'sectioning' 
  AND (
    subcategory ILIKE '%wafering%' 
    OR subcategory ILIKE '%diamond%'
    OR subcategory ILIKE '%cbn%'
    OR item_id ILIKE 'WB-%'
    OR item_id ILIKE 'WCBN-%'
    OR type = 'wafering-blade'
    OR type = 'diamond-blade'
  );

-- Mounting Consumables
UPDATE consumables SET subcategory = 'compression' 
WHERE category = 'mounting' 
  AND (
    subcategory ILIKE '%compression%' 
    OR (subcategory ILIKE '%resin%' AND subcategory NOT ILIKE '%castable%')
    OR type = 'mounting-resin'
    OR description ILIKE '%compression%'
    OR description ILIKE '%hot mounting%'
    OR item_id ILIKE '%PHENOLIC%'
    OR item_id ILIKE '%ACRYLIC%'
    OR item_id ILIKE '%DAP%'
  );

UPDATE consumables SET subcategory = 'castable' 
WHERE category = 'mounting' 
  AND (
    subcategory ILIKE '%castable%' 
    OR (subcategory ILIKE '%epoxy%' AND description ILIKE '%castable%')
    OR description ILIKE '%castable%'
    OR description ILIKE '%cold mounting%'
    OR item_id ILIKE 'EP-%'
    OR item_id ILIKE 'ULTRA-%'
    OR item_id ILIKE 'ELITE-%'
  );

-- Grinding & Lapping Consumables
UPDATE consumables SET subcategory = 'grinding-papers' 
WHERE category IN ('grinding', 'grinding & polishing')
  AND (
    subcategory ILIKE '%paper%'
    OR type ILIKE '%paper%'
    OR item_id ILIKE 'SIC-%' AND (item_id ILIKE '%P%' OR item_id ILIKE '%R%')
    OR item_id ILIKE 'ALO-%'
    OR item_id ILIKE 'ZR-%'
  );

UPDATE consumables SET subcategory = 'grinding-powders' 
WHERE category IN ('grinding', 'grinding & polishing')
  AND (
    subcategory ILIKE '%powder%'
    OR type ILIKE '%powder%'
    OR item_id ILIKE 'SIC-%P%'
  );

UPDATE consumables SET subcategory = 'lapping-films' 
WHERE category IN ('grinding', 'grinding & polishing')
  AND (
    subcategory ILIKE '%film%'
    OR subcategory ILIKE '%lapping%'
    OR item_id ILIKE '%LAPPING%'
    OR description ILIKE '%lapping film%'
  );

UPDATE consumables SET subcategory = 'grinding-belts' 
WHERE category IN ('grinding', 'grinding & polishing')
  AND (
    subcategory ILIKE '%belt%'
    OR item_id ILIKE '%B%' AND (item_id ILIKE 'SIC-%' OR item_id ILIKE 'ALO-%' OR item_id ILIKE 'ZrO2-%')
  );

UPDATE consumables SET subcategory = 'grinding-rolls' 
WHERE category IN ('grinding', 'grinding & polishing')
  AND (
    subcategory ILIKE '%roll%'
    OR item_id ILIKE '%R-%'
  );

-- Polishing Consumables
UPDATE consumables SET subcategory = 'rough' 
WHERE category = 'polishing'
  AND (
    subcategory ILIKE '%rough%'
    OR type ILIKE '%diamond%'
    OR item_id ILIKE '%DIAMOND%'
    OR description ILIKE '%diamond paste%'
    OR description ILIKE '%diamond suspension%'
    OR description ILIKE '%rough%'
  );

UPDATE consumables SET subcategory = 'final' 
WHERE category = 'polishing'
  AND (
    subcategory ILIKE '%final%'
    OR description ILIKE '%alumina%'
    OR description ILIKE '%colloidal silica%'
    OR description ILIKE '%final%'
    OR item_id ILIKE '%ALUMINA%'
  );

-- Etching Consumables
UPDATE consumables SET subcategory = 'general-purpose' 
WHERE category = 'etching'
  AND (
    subcategory ILIKE '%general%'
    OR (subcategory IS NULL AND category = 'etching')
  );

UPDATE consumables SET subcategory = 'steel' 
WHERE category = 'etching'
  AND subcategory ILIKE '%steel%' 
  AND subcategory NOT ILIKE '%stainless%';

UPDATE consumables SET subcategory = 'stainless-steel' 
WHERE category = 'etching'
  AND subcategory ILIKE '%stainless%';

UPDATE consumables SET subcategory = 'aluminum' 
WHERE category = 'etching'
  AND subcategory ILIKE '%aluminum%';

UPDATE consumables SET subcategory = 'titanium' 
WHERE category = 'etching'
  AND subcategory ILIKE '%titanium%';

UPDATE consumables SET subcategory = 'copper-brass' 
WHERE category = 'etching'
  AND subcategory ILIKE '%copper%';

UPDATE consumables SET subcategory = 'nickel' 
WHERE category = 'etching'
  AND subcategory ILIKE '%nickel%';

-- Cleaning Consumables
UPDATE consumables SET subcategory = 'ultrasonic' 
WHERE category = 'cleaning'
  AND (
    subcategory ILIKE '%ultrasonic%'
    OR description ILIKE '%ultrasonic%'
  );

UPDATE consumables SET subcategory = 'solvents' 
WHERE category = 'cleaning'
  AND (
    subcategory ILIKE '%solvent%'
    OR description ILIKE '%solvent%'
    OR description ILIKE '%degreas%'
  );

-- Hardness Testing Consumables
UPDATE consumables SET subcategory = 'accessories' 
WHERE category IN ('hardness', 'hardness testing')
  AND (
    subcategory ILIKE '%accessor%'
    OR type ILIKE '%accessor%'
  );

-- ============================================================================
-- 4. ADD INDEXES FOR SUBCATEGORY QUERIES
-- ============================================================================

CREATE INDEX IF NOT EXISTS idx_equipment_category_subcategory ON equipment(category, subcategory) WHERE status = 'active';
CREATE INDEX IF NOT EXISTS idx_consumables_category_subcategory ON consumables(category, subcategory) WHERE status = 'active' AND is_active = true;

-- ============================================================================
-- 5. UPDATE CATEGORY MAPPING FOR GRINDING-POLISHING
-- ============================================================================

-- Map 'grinding' and 'polishing' categories to 'grinding-polishing' for navigation
-- Note: This is handled in application code, but we ensure subcategories are standardized

