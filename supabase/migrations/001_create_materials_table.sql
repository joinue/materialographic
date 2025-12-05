-- Create comprehensive materials table with all fields
CREATE TABLE IF NOT EXISTS materials (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  slug TEXT UNIQUE,
  category TEXT NOT NULL,
  alternative_names TEXT[],
  tags TEXT[],
  
  -- Material Properties
  hardness TEXT, -- Legacy field for display (e.g., "36 HB")
  hardness_hb NUMERIC,
  hardness_hrc NUMERIC,
  hardness_hv NUMERIC,
  density NUMERIC,
  melting_point_celsius NUMERIC,
  tensile_strength_mpa NUMERIC,
  yield_strength_mpa NUMERIC,
  
  -- Composition and Structure
  composition TEXT NOT NULL,
  microstructure TEXT NOT NULL,
  
  -- Material Characteristics
  material_type TEXT, -- 'metal', 'alloy', 'ceramic', 'composite', etc.
  hardness_category TEXT CHECK (hardness_category IN ('soft', 'medium', 'hard', 'very-hard')),
  work_hardening BOOLEAN DEFAULT false,
  magnetic BOOLEAN,
  corrosion_resistance TEXT CHECK (corrosion_resistance IN ('low', 'medium', 'high', 'excellent')),
  
  -- Heat Treatment
  heat_treatment TEXT,
  annealing_temperature_celsius NUMERIC,
  solution_treatment_temp_celsius NUMERIC,
  aging_temperature_celsius NUMERIC,
  
  -- Preparation Notes (General)
  special_notes TEXT,
  preparation_notes TEXT,
  
  -- Detailed Preparation Notes (by step)
  sectioning_notes TEXT,
  mounting_notes TEXT,
  grinding_notes TEXT,
  polishing_notes TEXT,
  etching_notes TEXT,
  
  -- Preparation Sequences
  recommended_grinding_sequence TEXT[],
  recommended_polishing_sequence TEXT[],
  
  -- Etching
  common_etchants TEXT[],
  
  -- Media and Images
  microstructure_image_url TEXT,
  material_image_url TEXT,
  
  -- Standards and References
  astm_standards TEXT[],
  iso_standards TEXT[],
  related_guide_slugs TEXT[], -- Links to preparation guides
  
  -- Relationships
  related_material_ids UUID[],
  similar_materials UUID[],
  
  -- Applications
  applications TEXT[],
  typical_uses TEXT[],
  detailed_description TEXT,
  
  -- Metadata and Status
  status TEXT DEFAULT 'published' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  
  -- Analytics (for future features)
  view_count INTEGER DEFAULT 0,
  save_count INTEGER DEFAULT 0, -- For future user saves feature
  
  -- Timestamps
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Create indexes for faster searches and queries
CREATE INDEX IF NOT EXISTS idx_materials_category ON materials(category);
CREATE INDEX IF NOT EXISTS idx_materials_name ON materials(name);
CREATE INDEX IF NOT EXISTS idx_materials_slug ON materials(slug);
CREATE INDEX IF NOT EXISTS idx_materials_status ON materials(status);
CREATE INDEX IF NOT EXISTS idx_materials_featured ON materials(featured);
CREATE INDEX IF NOT EXISTS idx_materials_hardness_category ON materials(hardness_category);
CREATE INDEX IF NOT EXISTS idx_materials_material_type ON materials(material_type);
CREATE INDEX IF NOT EXISTS idx_materials_sort_order ON materials(sort_order);

-- GIN indexes for array fields (faster array searches)
CREATE INDEX IF NOT EXISTS idx_materials_tags ON materials USING gin(tags);
CREATE INDEX IF NOT EXISTS idx_materials_alternative_names ON materials USING gin(alternative_names);
CREATE INDEX IF NOT EXISTS idx_materials_common_etchants ON materials USING gin(common_etchants);

-- Create immutable function for full-text search
CREATE OR REPLACE FUNCTION materials_search_vector(
  p_name TEXT,
  p_category TEXT,
  p_composition TEXT,
  p_microstructure TEXT,
  p_tags TEXT[],
  p_alternative_names TEXT[]
)
RETURNS tsvector AS $$
BEGIN
  RETURN to_tsvector('english', 
    coalesce(p_name, '') || ' ' || 
    coalesce(p_category, '') || ' ' || 
    coalesce(p_composition, '') || ' ' || 
    coalesce(p_microstructure, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(array_to_string(p_alternative_names, ' '), '')
  );
END;
$$ LANGUAGE plpgsql IMMUTABLE;

-- Full-text search index for enhanced search capabilities
CREATE INDEX IF NOT EXISTS idx_materials_fulltext_search ON materials 
  USING gin(materials_search_vector(name, category, composition, microstructure, tags, alternative_names));

-- Enable Row Level Security (public read access for now)
ALTER TABLE materials ENABLE ROW LEVEL SECURITY;

-- Create policy to allow public read access (only published materials)
CREATE POLICY "Allow public read access to published materials" ON materials
  FOR SELECT
  USING (status = 'published' OR status IS NULL);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update updated_at
CREATE TRIGGER update_materials_updated_at
  BEFORE UPDATE ON materials
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Function to generate slug from material name
CREATE OR REPLACE FUNCTION generate_material_slug(material_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(material_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

-- Add table and column comments for documentation
COMMENT ON TABLE materials IS 'Comprehensive materials database for metallographic analysis with properties, preparation notes, and relationships. Supports 100+ materials and future user features.';
COMMENT ON COLUMN materials.slug IS 'URL-friendly identifier for SEO (e.g., "titanium-grade-5-ti-6al-4v")';
COMMENT ON COLUMN materials.tags IS 'Searchable tags for flexible categorization (e.g., ["aerospace", "high-strength", "corrosion-resistant"])';
COMMENT ON COLUMN materials.alternative_names IS 'Common trade names, synonyms, or alternative designations';
COMMENT ON COLUMN materials.hardness_category IS 'General hardness classification for filtering and recommendations';
COMMENT ON COLUMN materials.related_material_ids IS 'Materials commonly used together or in similar applications';
COMMENT ON COLUMN materials.similar_materials IS 'Materials with similar properties or preparation requirements';
COMMENT ON COLUMN materials.save_count IS 'Number of times users have saved this material (for future user favorites feature)';
COMMENT ON COLUMN materials.view_count IS 'Number of times this material has been viewed (for analytics)';
COMMENT ON COLUMN materials.status IS 'Publication status: draft (not visible), published (visible), archived (hidden but kept)';
