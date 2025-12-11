-- ============================================================================
-- Fix Remaining Security Issues
-- ============================================================================
-- This migration addresses:
-- 1. Fix SECURITY DEFINER on materials_with_etchant_info view (recreate cleanly)
-- 2. Fix mutable search_path on calculate_total_preparation_time function
-- 3. Fix mutable search_path on migrate_etchant_relationships function
-- 4. Fix mutable search_path on migrate_etchant_relationships_improved function
-- ============================================================================

-- ============================================================================
-- FIX SECURITY DEFINER ON VIEW
-- ============================================================================
-- Recreate view to ensure it doesn't have SECURITY DEFINER property
-- Views should run with the permissions of the user querying them

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
-- FIX MUTABLE SEARCH_PATH ON calculate_total_preparation_time FUNCTION
-- ============================================================================
-- Set a fixed search_path to prevent security vulnerabilities

CREATE OR REPLACE FUNCTION calculate_total_preparation_time()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
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
$$;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON migrate_etchant_relationships FUNCTION
-- ============================================================================
-- Set a fixed search_path to prevent security vulnerabilities

CREATE OR REPLACE FUNCTION migrate_etchant_relationships()
RETURNS void
LANGUAGE plpgsql
SET search_path = public
AS $$
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
$$;

-- ============================================================================
-- FIX MUTABLE SEARCH_PATH ON migrate_etchant_relationships_improved FUNCTION
-- ============================================================================
-- Set a fixed search_path to prevent security vulnerabilities

CREATE OR REPLACE FUNCTION migrate_etchant_relationships_improved()
RETURNS TABLE(
  material_name TEXT,
  etchant_name TEXT,
  matched BOOLEAN,
  etchant_id_found UUID
)
LANGUAGE plpgsql
SET search_path = public
AS $$
DECLARE
  material_record RECORD;
  etchant_record RECORD;
  etchant_name TEXT;
  matched_count INTEGER := 0;
  unmatched_count INTEGER := 0;
  total_materials INTEGER := 0;
BEGIN
  -- Loop through materials with common_etchants
  FOR material_record IN 
    SELECT id, name, common_etchants 
    FROM materials 
    WHERE common_etchants IS NOT NULL 
      AND array_length(common_etchants, 1) > 0
    ORDER BY name
  LOOP
    total_materials := total_materials + 1;
    DECLARE
      sort_order_counter INTEGER := 0;
      is_first BOOLEAN := true;
    BEGIN
      -- Loop through each etchant name in the array
      FOREACH etchant_name IN ARRAY material_record.common_etchants
      LOOP
        sort_order_counter := sort_order_counter + 1;
        
        -- Try multiple matching strategies
        SELECT id INTO etchant_record
        FROM etchants
        WHERE 
          -- Exact match (case-insensitive)
          LOWER(TRIM(name)) = LOWER(TRIM(etchant_name))
          -- Or match in alternative names
          OR LOWER(TRIM(etchant_name)) = ANY(
            SELECT LOWER(TRIM(unnest(alternative_names)))
            FROM etchants e2
            WHERE e2.id = etchants.id
          )
          -- Or partial match (contains)
          OR LOWER(TRIM(name)) LIKE '%' || LOWER(TRIM(etchant_name)) || '%'
          OR LOWER(TRIM(etchant_name)) LIKE '%' || LOWER(TRIM(name)) || '%'
        ORDER BY 
          -- Prefer exact matches
          CASE 
            WHEN LOWER(TRIM(name)) = LOWER(TRIM(etchant_name)) THEN 1
            WHEN LOWER(TRIM(etchant_name)) = ANY(
              SELECT LOWER(TRIM(unnest(alternative_names)))
              FROM etchants e2
              WHERE e2.id = etchants.id
            ) THEN 2
            ELSE 3
          END
        LIMIT 1;
        
        -- If found, create relationship
        IF etchant_record.id IS NOT NULL THEN
          BEGIN
            INSERT INTO material_etchants (
              material_id, 
              etchant_id, 
              is_primary, 
              is_alternative,
              usage_frequency,
              sort_order
            )
            VALUES (
              material_record.id, 
              etchant_record.id, 
              is_first, -- First etchant is primary
              NOT is_first, -- Others are alternatives
              'common', -- Assume common usage
              sort_order_counter
            )
            ON CONFLICT (material_id, etchant_id) DO NOTHING;
            
            matched_count := matched_count + 1;
            
            -- Return matched record
            RETURN QUERY SELECT 
              material_record.name,
              etchant_name,
              true,
              etchant_record.id;
          EXCEPTION WHEN OTHERS THEN
            -- Skip on error, continue with next
            NULL;
          END;
        ELSE
          unmatched_count := unmatched_count + 1;
          
          -- Return unmatched record for review
          RETURN QUERY SELECT 
            material_record.name,
            etchant_name,
            false,
            NULL::UUID;
        END IF;
        
        is_first := false;
      END LOOP;
    END;
  END LOOP;
  
  -- Log summary
  RAISE NOTICE 'Migration complete: % materials processed, % etchants matched, % unmatched', 
    total_materials, matched_count, unmatched_count;
END;
$$;

