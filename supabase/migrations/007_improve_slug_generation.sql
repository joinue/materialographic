-- Improve slug generation to handle duplicates
-- This function will generate a unique slug by appending a number if the slug already exists

CREATE OR REPLACE FUNCTION generate_unique_material_slug(material_name TEXT)
RETURNS TEXT AS $$
DECLARE
  base_slug TEXT;
  final_slug TEXT;
  counter INTEGER := 0;
BEGIN
  -- Generate base slug
  base_slug := lower(regexp_replace(
    regexp_replace(material_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
  
  -- Remove leading/trailing hyphens
  base_slug := trim(both '-' from base_slug);
  
  -- Check if slug exists and append number if needed
  final_slug := base_slug;
  
  WHILE EXISTS (SELECT 1 FROM materials WHERE slug = final_slug) LOOP
    counter := counter + 1;
    final_slug := base_slug || '-' || counter;
  END LOOP;
  
  RETURN final_slug;
END;
$$ LANGUAGE plpgsql;

-- Update existing materials to ensure all have slugs
UPDATE materials 
SET slug = generate_unique_material_slug(name) 
WHERE slug IS NULL OR slug = '';

-- Create a trigger to automatically generate slugs on insert if not provided
CREATE OR REPLACE FUNCTION ensure_material_slug()
RETURNS TRIGGER AS $$
BEGIN
  -- Always generate a unique slug from the name to ensure uniqueness
  -- This handles both cases: when slug is provided and when it's not
  NEW.slug := generate_unique_material_slug(NEW.name);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Drop trigger if it exists
DROP TRIGGER IF EXISTS ensure_material_slug_trigger ON materials;

-- Create trigger
CREATE TRIGGER ensure_material_slug_trigger
  BEFORE INSERT OR UPDATE ON materials
  FOR EACH ROW
  EXECUTE FUNCTION ensure_material_slug();

