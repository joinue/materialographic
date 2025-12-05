-- Create comprehensive etchants table
CREATE TABLE IF NOT EXISTS etchants (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  slug TEXT UNIQUE,
  alternative_names TEXT[],
  tags TEXT[],
  category TEXT, -- 'general-purpose', 'material-specific', 'specialty', 'electrolytic', etc.
  
  -- Composition
  composition TEXT NOT NULL, -- Chemical formula or description
  concentration TEXT, -- e.g., "2%", "10%", "Saturated"
  ingredients JSONB, -- Array of {name, percentage, role} objects
  
  -- Application
  application_method TEXT CHECK (application_method IN ('immersion', 'swabbing', 'electrolytic', 'vapor', 'multiple')),
  typical_time_seconds INTEGER, -- Typical etching time in seconds
  temperature_celsius NUMERIC, -- If temperature-specific
  voltage NUMERIC, -- For electrolytic etchants
  current_density NUMERIC, -- For electrolytic etchants
  
  -- Safety
  hazards TEXT[], -- e.g., ['corrosive', 'toxic', 'flammable']
  safety_notes TEXT,
  ppe_required TEXT[], -- Personal protective equipment required
  
  -- Results
  reveals TEXT, -- What it reveals (e.g., "grain boundaries", "carbides", "phases")
  typical_results TEXT, -- Description of typical microstructural features revealed
  color_effects TEXT, -- Any color effects produced
  
  -- Compatibility
  compatible_materials TEXT[], -- Material categories this etchant works well with
  incompatible_materials TEXT[], -- Materials to avoid
  
  -- PACE Product Information
  pace_product_available BOOLEAN DEFAULT false,
  pace_product_slug TEXT, -- Slug for shop.metallographic.com URL
  pace_product_url TEXT, -- Full URL if different from standard pattern
  
  -- Usage Notes
  preparation_notes TEXT, -- How to prepare the etchant
  application_notes TEXT, -- Detailed application instructions
  troubleshooting_notes TEXT, -- Common issues and solutions
  storage_notes TEXT, -- How to store the etchant
  
  -- Alternatives
  alternative_etchants TEXT[], -- Names of alternative etchants
  similar_etchants TEXT[], -- Names of similar etchants
  
  -- Standards and References
  astm_references TEXT[], -- ASTM standard references
  iso_references TEXT[], -- ISO standard references
  other_references TEXT[], -- Other standard or reference citations
  
  -- Media
  example_image_url TEXT, -- Example microstructure image
  before_after_image_url TEXT, -- Before/after comparison
  
  -- Relationships
  related_material_ids UUID[], -- Links to materials table
  related_etchant_ids UUID[], -- Links to other etchants
  
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
CREATE INDEX IF NOT EXISTS idx_etchants_slug ON etchants(slug);
CREATE INDEX IF NOT EXISTS idx_etchants_category ON etchants(category);
CREATE INDEX IF NOT EXISTS idx_etchants_status ON etchants(status);
CREATE INDEX IF NOT EXISTS idx_etchants_pace_available ON etchants(pace_product_available) WHERE pace_product_available = true;

-- Full-text search index
CREATE OR REPLACE FUNCTION etchants_search_vector(
  p_name TEXT,
  p_alternative_names TEXT[],
  p_composition TEXT,
  p_tags TEXT[],
  p_reveals TEXT,
  p_compatible_materials TEXT[]
)
RETURNS tsvector AS $$
BEGIN
  RETURN to_tsvector('english',
    coalesce(p_name, '') || ' ' ||
    coalesce(array_to_string(p_alternative_names, ' '), '') || ' ' ||
    coalesce(p_composition, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(p_reveals, '') || ' ' ||
    coalesce(array_to_string(p_compatible_materials, ' '), '')
  );
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE INDEX IF NOT EXISTS idx_etchants_fulltext_search ON etchants
  USING gin(etchants_search_vector(name, alternative_names, composition, tags, reveals, compatible_materials));

-- Trigger to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_etchants_updated_at BEFORE UPDATE ON etchants
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Function to generate slug from etchant name
CREATE OR REPLACE FUNCTION generate_etchant_slug(etchant_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(etchant_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

-- Trigger to auto-generate slugs
CREATE OR REPLACE FUNCTION ensure_etchant_slug()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_etchant_slug(NEW.name);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ensure_etchant_slug_trigger
  BEFORE INSERT OR UPDATE ON etchants
  FOR EACH ROW
  EXECUTE FUNCTION ensure_etchant_slug();

-- RLS Policies (if needed in future)
ALTER TABLE etchants ENABLE ROW LEVEL SECURITY;

-- Allow public read access
CREATE POLICY "Allow public read access to published etchants"
  ON etchants FOR SELECT
  USING (status = 'published');

-- Add table and column comments
COMMENT ON TABLE etchants IS 'Comprehensive database of metallographic etchants with composition, application methods, safety data, and PACE product links.';
COMMENT ON COLUMN etchants.slug IS 'URL-friendly identifier for SEO (e.g., "2-percent-nital")';
COMMENT ON COLUMN etchants.pace_product_slug IS 'Slug for PACE product URL: shop.metallographic.com/collections/etchants/products/{slug}';
COMMENT ON COLUMN etchants.compatible_materials IS 'Material categories this etchant works well with (e.g., ["carbon-steel", "low-alloy-steel"])';

