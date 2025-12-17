-- Create subcategory_metadata table for navigation and display
CREATE TABLE IF NOT EXISTS subcategory_metadata (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Classification
  entity_type TEXT NOT NULL CHECK (entity_type IN ('equipment', 'consumables')),
  category TEXT NOT NULL, -- 'sectioning', 'mounting', etc.
  subcategory_key TEXT NOT NULL, -- URL-friendly key: 'automated', 'manual', 'abrasive-cutting'
  subcategory_label TEXT NOT NULL, -- Display name: 'Automated', 'Manual', 'Abrasive Cutting'
  
  -- Display & Navigation
  display_order INTEGER DEFAULT 0, -- Order within category
  description TEXT, -- Short description for subcategory page
  cover_image_url TEXT, -- Path to cover image (e.g., '/images/consumables/sectioning-cover.webp')
  
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

-- Indexes
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_entity ON subcategory_metadata(entity_type, category);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_active ON subcategory_metadata(is_active);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_display_order ON subcategory_metadata(entity_type, category, display_order);

-- Add updated_at trigger
CREATE TRIGGER update_subcategory_metadata_updated_at BEFORE UPDATE ON subcategory_metadata
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

