-- ============================================================================
-- Fix Final Security Issues
-- ============================================================================
-- This migration addresses:
-- 1. Fix SECURITY DEFINER on materials_with_etchant_info view (try explicit approach)
-- 2. Fix mutable search_path on update_updated_at_column function
-- 3. Fix mutable search_path on standards_search_vector function
-- ============================================================================

-- ============================================================================
-- FIX SECURITY DEFINER ON VIEW
-- ============================================================================
-- Recreate view with explicit SECURITY INVOKER setting (PostgreSQL 15+)
-- This ensures the view runs with the privileges of the user querying it,
-- not the view owner, which is more secure and respects RLS policies.

DROP VIEW IF EXISTS materials_with_etchant_info CASCADE;

-- Create view with explicit security_invoker setting
CREATE VIEW materials_with_etchant_info
WITH (security_invoker = true)
AS
SELECT 
  m.*,
  COUNT(DISTINCT me.etchant_id) as etchant_count,
  COUNT(DISTINCT CASE WHEN me.is_primary THEN me.etchant_id END) as primary_etchant_count
FROM materials m
LEFT JOIN material_etchants me ON m.id = me.material_id
GROUP BY m.id;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON update_updated_at_column FUNCTION
-- ============================================================================
-- This function is used by multiple tables with different timestamp formats.
-- We'll create a unified version that handles both cases and has a fixed search_path.

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  -- Use TIMEZONE('utc', NOW()) for consistency across all tables
  -- This works for both TIMESTAMPTZ and TIMESTAMP columns
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON standards_search_vector FUNCTION
-- ============================================================================

CREATE OR REPLACE FUNCTION standards_search_vector(
  p_standard TEXT,
  p_title TEXT,
  p_description TEXT,
  p_tags TEXT[],
  p_scope TEXT
)
RETURNS tsvector
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
BEGIN
  RETURN to_tsvector('english',
    coalesce(p_standard, '') || ' ' ||
    coalesce(p_title, '') || ' ' ||
    coalesce(p_description, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(p_scope, '')
  );
END;
$$;

