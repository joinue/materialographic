-- Enhance materials table with top priorities for metallographers and scalability
-- This migration adds: time estimates, difficulty ratings, troubleshooting, 
-- material grades, and prepares for proper etchant relationships

-- ============================================================================
-- ADD NEW COLUMNS TO MATERIALS TABLE
-- ============================================================================

-- Time estimates (critical for lab planning)
ALTER TABLE materials
ADD COLUMN IF NOT EXISTS preparation_difficulty TEXT CHECK (preparation_difficulty IN ('easy', 'medium', 'hard', 'expert')),
ADD COLUMN IF NOT EXISTS estimated_sectioning_time_minutes INTEGER,
ADD COLUMN IF NOT EXISTS estimated_mounting_time_minutes INTEGER,
ADD COLUMN IF NOT EXISTS estimated_grinding_time_minutes INTEGER,
ADD COLUMN IF NOT EXISTS estimated_polishing_time_minutes INTEGER,
ADD COLUMN IF NOT EXISTS estimated_etching_time_minutes INTEGER,
ADD COLUMN IF NOT EXISTS total_preparation_time_minutes INTEGER;

-- Troubleshooting and common issues (saves time when problems occur)
ALTER TABLE materials
ADD COLUMN IF NOT EXISTS common_issues TEXT[],
ADD COLUMN IF NOT EXISTS troubleshooting_notes TEXT,
ADD COLUMN IF NOT EXISTS success_criteria TEXT,
ADD COLUMN IF NOT EXISTS quality_indicators TEXT[];

-- Material grades and variants (real-world accuracy)
ALTER TABLE materials
ADD COLUMN IF NOT EXISTS material_grade TEXT,
ADD COLUMN IF NOT EXISTS temper_condition TEXT,
ADD COLUMN IF NOT EXISTS parent_material_id UUID REFERENCES materials(id) ON DELETE SET NULL;

-- Enhanced images (visual reference is crucial)
ALTER TABLE materials
ADD COLUMN IF NOT EXISTS microstructure_images JSONB, -- Array of {url, description, magnification, etchant_used}
ADD COLUMN IF NOT EXISTS preparation_step_images JSONB; -- Images for each preparation step

-- Add comments for documentation
COMMENT ON COLUMN materials.preparation_difficulty IS 'Difficulty rating: easy (routine), medium (some skill required), hard (experienced needed), expert (specialized knowledge)';
COMMENT ON COLUMN materials.estimated_sectioning_time_minutes IS 'Estimated time for sectioning step in minutes';
COMMENT ON COLUMN materials.estimated_mounting_time_minutes IS 'Estimated time for mounting step in minutes';
COMMENT ON COLUMN materials.estimated_grinding_time_minutes IS 'Estimated time for grinding step in minutes';
COMMENT ON COLUMN materials.estimated_polishing_time_minutes IS 'Estimated time for polishing step in minutes';
COMMENT ON COLUMN materials.estimated_etching_time_minutes IS 'Estimated time for etching step in minutes';
COMMENT ON COLUMN materials.total_preparation_time_minutes IS 'Total estimated preparation time (can be calculated or manually set)';
COMMENT ON COLUMN materials.common_issues IS 'Common problems encountered during preparation (e.g., ["smearing", "pullout", "over-etching"])';
COMMENT ON COLUMN materials.troubleshooting_notes IS 'Material-specific troubleshooting guidance';
COMMENT ON COLUMN materials.success_criteria IS 'How to verify that preparation is successful';
COMMENT ON COLUMN materials.quality_indicators IS 'Visual or measurable indicators of good preparation';
COMMENT ON COLUMN materials.material_grade IS 'Specific grade designation (e.g., "T6", "H32", "Grade 5")';
COMMENT ON COLUMN materials.temper_condition IS 'Heat treatment condition/temper';
COMMENT ON COLUMN materials.parent_material_id IS 'Link to base material for variants (e.g., 6061-T6 links to 6061 base)';
COMMENT ON COLUMN materials.microstructure_images IS 'JSONB array of microstructure images: [{url, description, magnification, etchant_used}]';
COMMENT ON COLUMN materials.preparation_step_images IS 'JSONB object with images for each step: {sectioning: [...], mounting: [...], grinding: [...], etc.}';

-- ============================================================================
-- CREATE JUNCTION TABLE FOR MATERIAL-ETCHANT RELATIONSHIPS
-- ============================================================================
-- This replaces the string array approach with proper foreign keys for scalability

CREATE TABLE IF NOT EXISTS material_etchants (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  material_id UUID NOT NULL REFERENCES materials(id) ON DELETE CASCADE,
  etchant_id UUID NOT NULL REFERENCES etchants(id) ON DELETE CASCADE,
  
  -- Relationship metadata
  is_primary BOOLEAN DEFAULT false, -- Primary recommended etchant
  is_alternative BOOLEAN DEFAULT false, -- Alternative option
  recommended_for TEXT, -- Specific use case (e.g., "grain boundaries", "carbides")
  typical_results TEXT, -- What this etchant reveals for this material
  application_notes TEXT, -- Material-specific application notes
  
  -- Usage metadata
  usage_frequency TEXT CHECK (usage_frequency IN ('common', 'occasional', 'rare')), -- How often used for this material
  effectiveness_rating INTEGER CHECK (effectiveness_rating >= 1 AND effectiveness_rating <= 5), -- 1-5 rating
  
  -- Sort order for display
  sort_order INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  
  -- Ensure unique material-etchant pairs
  UNIQUE(material_id, etchant_id)
);

-- Create indexes for performance
CREATE INDEX IF NOT EXISTS idx_material_etchants_material_id ON material_etchants(material_id);
CREATE INDEX IF NOT EXISTS idx_material_etchants_etchant_id ON material_etchants(etchant_id);
CREATE INDEX IF NOT EXISTS idx_material_etchants_is_primary ON material_etchants(is_primary) WHERE is_primary = true;
CREATE INDEX IF NOT EXISTS idx_material_etchants_sort_order ON material_etchants(material_id, sort_order);

-- Add trigger to update updated_at
CREATE TRIGGER update_material_etchants_updated_at
  BEFORE UPDATE ON material_etchants
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Add comments
COMMENT ON TABLE material_etchants IS 'Junction table for many-to-many relationship between materials and etchants. Replaces string arrays for better scalability and queryability.';
COMMENT ON COLUMN material_etchants.is_primary IS 'True if this is the primary recommended etchant for this material';
COMMENT ON COLUMN material_etchants.recommended_for IS 'Specific use case or purpose for this etchant-material combination';
COMMENT ON COLUMN material_etchants.effectiveness_rating IS 'Rating 1-5 for how effective this etchant is for this material';

-- ============================================================================
-- CREATE INDEXES FOR NEW FIELDS
-- ============================================================================

CREATE INDEX IF NOT EXISTS idx_materials_preparation_difficulty ON materials(preparation_difficulty);
CREATE INDEX IF NOT EXISTS idx_materials_material_grade ON materials(material_grade);
CREATE INDEX IF NOT EXISTS idx_materials_parent_material_id ON materials(parent_material_id);
CREATE INDEX IF NOT EXISTS idx_materials_total_preparation_time ON materials(total_preparation_time_minutes);

-- GIN index for common_issues array
CREATE INDEX IF NOT EXISTS idx_materials_common_issues ON materials USING gin(common_issues);

-- ============================================================================
-- CREATE FUNCTION TO CALCULATE TOTAL PREPARATION TIME
-- ============================================================================

CREATE OR REPLACE FUNCTION calculate_total_preparation_time()
RETURNS TRIGGER AS $$
BEGIN
  -- Calculate total if individual times are set but total is not
  IF NEW.total_preparation_time_minutes IS NULL THEN
    NEW.total_preparation_time_minutes := 
      COALESCE(NEW.estimated_sectioning_time_minutes, 0) +
      COALESCE(NEW.estimated_mounting_time_minutes, 0) +
      COALESCE(NEW.estimated_grinding_time_minutes, 0) +
      COALESCE(NEW.estimated_polishing_time_minutes, 0) +
      COALESCE(NEW.estimated_etching_time_minutes, 0);
    
    -- Only set if sum is greater than 0
    IF NEW.total_preparation_time_minutes = 0 THEN
      NEW.total_preparation_time_minutes := NULL;
    END IF;
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to auto-calculate total preparation time
CREATE TRIGGER calculate_material_preparation_time
  BEFORE INSERT OR UPDATE ON materials
  FOR EACH ROW
  EXECUTE FUNCTION calculate_total_preparation_time();

-- ============================================================================
-- MIGRATION HELPER: POPULATE MATERIAL_ETCHANTS FROM EXISTING DATA
-- ============================================================================
-- This function helps migrate existing common_etchants string arrays to the junction table
-- Run this after populating the junction table manually or via script

CREATE OR REPLACE FUNCTION migrate_etchant_relationships()
RETURNS void AS $$
DECLARE
  material_record RECORD;
  etchant_record RECORD;
  etchant_name TEXT;
BEGIN
  -- Loop through materials with common_etchants
  FOR material_record IN 
    SELECT id, common_etchants 
    FROM materials 
    WHERE common_etchants IS NOT NULL 
      AND array_length(common_etchants, 1) > 0
  LOOP
    -- Loop through each etchant name in the array
    FOREACH etchant_name IN ARRAY material_record.common_etchants
    LOOP
      -- Try to find matching etchant by name or alternative name
      SELECT id INTO etchant_record
      FROM etchants
      WHERE name ILIKE etchant_name
         OR etchant_name = ANY(alternative_names)
      LIMIT 1;
      
      -- If found, create relationship
      IF etchant_record.id IS NOT NULL THEN
        INSERT INTO material_etchants (material_id, etchant_id, is_primary, sort_order)
        VALUES (material_record.id, etchant_record.id, false, 0)
        ON CONFLICT (material_id, etchant_id) DO NOTHING;
      END IF;
    END LOOP;
  END LOOP;
END;
$$ LANGUAGE plpgsql;

-- ============================================================================
-- CREATE VIEW FOR MATERIALS WITH ETCHANT COUNTS
-- ============================================================================
-- Useful for analytics and display

CREATE OR REPLACE VIEW materials_with_etchant_info AS
SELECT 
  m.*,
  COUNT(DISTINCT me.etchant_id) as etchant_count,
  COUNT(DISTINCT CASE WHEN me.is_primary THEN me.etchant_id END) as primary_etchant_count
FROM materials m
LEFT JOIN material_etchants me ON m.id = me.material_id
GROUP BY m.id;

-- ============================================================================
-- ROW LEVEL SECURITY FOR MATERIAL_ETCHANTS
-- ============================================================================

ALTER TABLE material_etchants ENABLE ROW LEVEL SECURITY;

-- Allow public read access
CREATE POLICY "Allow public read access to material_etchants" ON material_etchants
  FOR SELECT
  USING (true);

