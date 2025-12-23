-- Create category_metadata table for navigation and display
-- Similar to subcategory_metadata but for categories
CREATE TABLE IF NOT EXISTS category_metadata (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Classification
  entity_type TEXT NOT NULL CHECK (entity_type IN ('equipment', 'consumables')),
  category_key TEXT NOT NULL, -- URL-friendly key: 'sectioning', 'mounting', etc.
  category_label TEXT NOT NULL, -- Display name: 'Sectioning', 'Mounting', etc.
  
  -- Display & Navigation
  display_order INTEGER DEFAULT 0, -- Order for display
  description TEXT, -- Short description for category page
  cover_image_url TEXT, -- Path to cover image
  
  -- SEO
  meta_title TEXT,
  meta_description TEXT,
  
  -- Metadata
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Unique constraint
  UNIQUE(entity_type, category_key)
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_category_metadata_entity ON category_metadata(entity_type);
CREATE INDEX IF NOT EXISTS idx_category_metadata_active ON category_metadata(is_active);
CREATE INDEX IF NOT EXISTS idx_category_metadata_display_order ON category_metadata(entity_type, display_order);

-- Add updated_at trigger
CREATE TRIGGER update_category_metadata_updated_at BEFORE UPDATE ON category_metadata
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Seed initial category metadata for equipment
INSERT INTO category_metadata (entity_type, category_key, category_label, display_order, description) VALUES
  ('equipment', 'sectioning', 'Sectioning', 1, 'Precision cutters, abrasive saws, and wafering systems for sectioning samples.'),
  ('equipment', 'mounting', 'Mounting', 2, 'Compression mounting presses and castable mounting systems for embedding samples in resin.'),
  ('equipment', 'grinding-polishing', 'Grinding & Polishing', 3, 'Grinder-polishers, automated systems, and vibratory polishers for sample preparation.'),
  ('equipment', 'microscopy', 'Microscopy', 4, 'Metallurgical and stereo microscopes for microstructural analysis.'),
  ('equipment', 'hardness-testing', 'Hardness Testing', 5, 'Rockwell, microhardness, and Brinell testers for material hardness evaluation.'),
  ('equipment', 'lab-furniture', 'Lab Furniture', 6, 'Workbenches, storage, and supporting equipment for the metallography lab.')
ON CONFLICT (entity_type, category_key) DO UPDATE SET
  category_label = EXCLUDED.category_label,
  display_order = EXCLUDED.display_order,
  description = EXCLUDED.description,
  updated_at = NOW();

-- Seed initial category metadata for consumables
INSERT INTO category_metadata (entity_type, category_key, category_label, display_order, description) VALUES
  ('consumables', 'sectioning', 'Sectioning', 1, 'Blades, cutting fluids, and accessories for sectioning samples.'),
  ('consumables', 'mounting', 'Mounting', 2, 'Mounting resins, molds, and accessories for embedding samples.'),
  ('consumables', 'grinding-lapping', 'Grinding & Lapping', 3, 'Grinding papers, powders, and lapping films for sample preparation.'),
  ('consumables', 'polishing', 'Polishing', 4, 'Polishing pads, diamond pastes, and suspensions for final polishing.'),
  ('consumables', 'etching', 'Etching', 5, 'Chemical etchants and solutions for revealing microstructures.'),
  ('consumables', 'hardness-testing', 'Hardness Testing', 6, 'Accessories and supplies for hardness testing.')
ON CONFLICT (entity_type, category_key) DO UPDATE SET
  category_label = EXCLUDED.category_label,
  display_order = EXCLUDED.display_order,
  description = EXCLUDED.description,
  updated_at = NOW();

