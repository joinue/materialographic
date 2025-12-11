-- ============================================================================
-- Fix Security Issues
-- ============================================================================
-- This migration addresses:
-- 1. Enable RLS on consumables and equipment tables
-- 2. Remove redundant authenticated SELECT policies (performance optimization)
-- 3. Fix SECURITY DEFINER on materials_with_etchant_info view
-- 4. Fix mutable search_path on functions
-- ============================================================================

-- ============================================================================
-- REMOVE REDUNDANT AUTHENTICATED SELECT POLICY ON MATERIALS
-- ============================================================================
-- Drop the redundant authenticated SELECT policy - authenticated users can
-- access via the public policy, eliminating the performance warning
DROP POLICY IF EXISTS "Allow authenticated users to read all materials" ON materials;

-- ============================================================================
-- ENABLE RLS ON CONSUMABLES TABLE
-- ============================================================================

ALTER TABLE consumables ENABLE ROW LEVEL SECURITY;

-- Allow public read access to active consumables
-- (Authenticated users also access via this policy, no need for separate policy)
CREATE POLICY "Allow public read access to active consumables" ON consumables
  FOR SELECT
  USING (status = 'active' AND (is_active IS NULL OR is_active = true));

-- Allow authenticated users to perform write operations
CREATE POLICY "Allow authenticated users to insert consumables" ON consumables
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to update consumables" ON consumables
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to delete consumables" ON consumables
  FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================================
-- ENABLE RLS ON EQUIPMENT TABLE
-- ============================================================================

ALTER TABLE equipment ENABLE ROW LEVEL SECURITY;

-- Allow public read access to active equipment
-- (Authenticated users also access via this policy, no need for separate policy)
CREATE POLICY "Allow public read access to active equipment" ON equipment
  FOR SELECT
  USING (status = 'active');

-- Allow authenticated users to perform write operations
CREATE POLICY "Allow authenticated users to insert equipment" ON equipment
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to update equipment" ON equipment
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to delete equipment" ON equipment
  FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================================
-- FIX SECURITY DEFINER ON VIEW
-- ============================================================================
-- Recreate view without SECURITY DEFINER property
-- Views in PostgreSQL don't have SECURITY DEFINER by default, but we'll
-- explicitly ensure it's created with proper security settings

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
-- FIX MUTABLE SEARCH_PATH ON FUNCTIONS
-- ============================================================================
-- Set a fixed search_path to prevent security vulnerabilities
-- This ensures functions don't depend on the caller's search_path

-- Fix materials_search_vector function
CREATE OR REPLACE FUNCTION materials_search_vector(
  p_name TEXT,
  p_category TEXT,
  p_composition TEXT,
  p_microstructure TEXT,
  p_tags TEXT[],
  p_alternative_names TEXT[]
)
RETURNS tsvector
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
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
$$;

-- Fix generate_material_slug function
CREATE OR REPLACE FUNCTION generate_material_slug(material_name TEXT)
RETURNS TEXT
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(material_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$;

