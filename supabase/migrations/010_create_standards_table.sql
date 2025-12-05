-- Create comprehensive standards table
CREATE TABLE IF NOT EXISTS standards (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  standard TEXT NOT NULL, -- e.g., "ASTM E3", "ISO 6507"
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  slug TEXT UNIQUE,
  
  -- Categorization
  category TEXT NOT NULL, -- 'Preparation', 'Etching', 'Analysis', 'Testing', 'Documentation', 'Calibration', 'Reference'
  tags TEXT[],
  organization TEXT DEFAULT 'ASTM', -- 'ASTM', 'ISO', 'SAE', 'JIS', etc.
  
  -- Additional Information
  scope TEXT, -- What the standard covers in detail
  key_procedures TEXT[], -- Key procedures or methods covered
  applicable_materials TEXT[], -- Material categories this standard applies to
  related_topics TEXT[], -- Related topics or concepts
  
  -- References and Links
  official_url TEXT, -- Link to official standard document
  purchase_url TEXT, -- Link to purchase the standard
  related_standard_ids UUID[], -- Links to other standards
  related_guide_slugs TEXT[], -- Links to preparation guides
  
  -- Metadata
  status TEXT DEFAULT 'published' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  view_count INTEGER DEFAULT 0,
  save_count INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Create indexes for common queries
CREATE INDEX IF NOT EXISTS idx_standards_slug ON standards(slug);
CREATE INDEX IF NOT EXISTS idx_standards_category ON standards(category);
CREATE INDEX IF NOT EXISTS idx_standards_organization ON standards(organization);
CREATE INDEX IF NOT EXISTS idx_standards_status ON standards(status);
CREATE INDEX IF NOT EXISTS idx_standards_featured ON standards(featured);
CREATE INDEX IF NOT EXISTS idx_standards_sort_order ON standards(sort_order);
CREATE INDEX IF NOT EXISTS idx_standards_standard ON standards(standard);

-- GIN indexes for array fields
CREATE INDEX IF NOT EXISTS idx_standards_tags ON standards USING gin(tags);
CREATE INDEX IF NOT EXISTS idx_standards_applicable_materials ON standards USING gin(applicable_materials);
CREATE INDEX IF NOT EXISTS idx_standards_key_procedures ON standards USING gin(key_procedures);

-- Full-text search index
CREATE OR REPLACE FUNCTION standards_search_vector(
  p_standard TEXT,
  p_title TEXT,
  p_description TEXT,
  p_tags TEXT[],
  p_scope TEXT
)
RETURNS tsvector AS $$
BEGIN
  RETURN to_tsvector('english',
    coalesce(p_standard, '') || ' ' ||
    coalesce(p_title, '') || ' ' ||
    coalesce(p_description, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(p_scope, '')
  );
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE INDEX IF NOT EXISTS idx_standards_fulltext_search ON standards
  USING gin(standards_search_vector(standard, title, description, tags, scope));

-- Trigger to update updated_at timestamp
CREATE TRIGGER update_standards_updated_at BEFORE UPDATE ON standards
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Function to generate slug from standard name
CREATE OR REPLACE FUNCTION generate_standard_slug(standard_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(standard_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

-- Trigger to auto-generate slugs
CREATE OR REPLACE FUNCTION ensure_standard_slug()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_standard_slug(NEW.standard);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ensure_standard_slug_trigger
  BEFORE INSERT OR UPDATE ON standards
  FOR EACH ROW
  EXECUTE FUNCTION ensure_standard_slug();

-- RLS Policies
ALTER TABLE standards ENABLE ROW LEVEL SECURITY;

-- Allow public read access
CREATE POLICY "Allow public read access to published standards"
  ON standards FOR SELECT
  USING (status = 'published');

-- Add table and column comments
COMMENT ON TABLE standards IS 'Comprehensive database of metallography and materials testing standards (ASTM, ISO, etc.) with descriptions, categories, and relationships.';
COMMENT ON COLUMN standards.slug IS 'URL-friendly identifier for SEO (e.g., "astm-e3")';
COMMENT ON COLUMN standards.organization IS 'Standards organization: ASTM, ISO, SAE, JIS, etc.';
COMMENT ON COLUMN standards.applicable_materials IS 'Material categories this standard applies to (e.g., ["carbon-steel", "stainless-steel"])';
COMMENT ON COLUMN standards.related_standard_ids IS 'Links to other related standards';

