-- ============================================================================
-- Fix All Remaining Security Issues
-- ============================================================================
-- This migration addresses:
-- 1. Fix SECURITY DEFINER on materials_with_etchant_info view
-- 2. Fix mutable search_path on all slug and search functions
-- ============================================================================

-- ============================================================================
-- FIX SECURITY DEFINER ON VIEW
-- ============================================================================
-- Recreate view to ensure it doesn't have SECURITY DEFINER property
-- Use ALTER VIEW to explicitly set security invoker if supported, otherwise recreate

DROP VIEW IF EXISTS materials_with_etchant_info CASCADE;

CREATE VIEW materials_with_etchant_info AS
SELECT 
  m.*,
  COUNT(DISTINCT me.etchant_id) as etchant_count,
  COUNT(DISTINCT CASE WHEN me.is_primary THEN me.etchant_id END) as primary_etchant_count
FROM materials m
LEFT JOIN material_etchants me ON m.id = me.material_id
GROUP BY m.id;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON MATERIAL FUNCTIONS
-- ============================================================================

-- Fix generate_unique_material_slug function
CREATE OR REPLACE FUNCTION generate_unique_material_slug(material_name TEXT)
RETURNS TEXT
LANGUAGE plpgsql
SET search_path = public
AS $$
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
$$;

-- Fix ensure_material_slug function
CREATE OR REPLACE FUNCTION ensure_material_slug()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  -- Always generate a unique slug from the name to ensure uniqueness
  -- This handles both cases: when slug is provided and when it's not
  NEW.slug := generate_unique_material_slug(NEW.name);
  RETURN NEW;
END;
$$;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON ETCHANT FUNCTIONS
-- ============================================================================

-- Fix etchants_search_vector function
CREATE OR REPLACE FUNCTION etchants_search_vector(
  p_name TEXT,
  p_alternative_names TEXT[],
  p_composition TEXT,
  p_tags TEXT[],
  p_reveals TEXT,
  p_compatible_materials TEXT[]
)
RETURNS tsvector
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
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
$$;

-- Fix generate_etchant_slug function
CREATE OR REPLACE FUNCTION generate_etchant_slug(etchant_name TEXT)
RETURNS TEXT
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(etchant_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$;

-- Fix ensure_etchant_slug function
CREATE OR REPLACE FUNCTION ensure_etchant_slug()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_etchant_slug(NEW.name);
  END IF;
  RETURN NEW;
END;
$$;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON STANDARD FUNCTIONS
-- ============================================================================

-- Fix generate_standard_slug function
CREATE OR REPLACE FUNCTION generate_standard_slug(standard_name TEXT)
RETURNS TEXT
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(standard_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$;

-- Fix ensure_standard_slug function
CREATE OR REPLACE FUNCTION ensure_standard_slug()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_standard_slug(NEW.standard);
  END IF;
  RETURN NEW;
END;
$$;

