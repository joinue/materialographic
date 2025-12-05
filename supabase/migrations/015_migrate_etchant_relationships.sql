-- Migrate existing common_etchants string arrays to material_etchants junction table
-- This script populates the new junction table from the legacy common_etchants field

-- ============================================================================
-- IMPROVED MIGRATION FUNCTION
-- ============================================================================

CREATE OR REPLACE FUNCTION migrate_etchant_relationships_improved()
RETURNS TABLE(
  material_name TEXT,
  etchant_name TEXT,
  matched BOOLEAN,
  etchant_id_found UUID
) AS $$
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
$$ LANGUAGE plpgsql;

-- ============================================================================
-- RUN THE MIGRATION
-- ============================================================================

-- Execute the migration and store results in a temporary table for review
DO $$
DECLARE
  result RECORD;
  matched_count INTEGER := 0;
  unmatched_count INTEGER := 0;
BEGIN
  -- Create temp table for results
  CREATE TEMP TABLE IF NOT EXISTS migration_results AS
  SELECT * FROM migrate_etchant_relationships_improved();
  
  -- Count matches
  SELECT COUNT(*) INTO matched_count FROM migration_results WHERE matched = true;
  SELECT COUNT(*) INTO unmatched_count FROM migration_results WHERE matched = false;
  
  RAISE NOTICE 'Migration Results:';
  RAISE NOTICE '  Matched: %', matched_count;
  RAISE NOTICE '  Unmatched: %', unmatched_count;
  
  -- Show unmatched for manual review
  IF unmatched_count > 0 THEN
    RAISE NOTICE 'Unmatched etchants (review these manually):';
    FOR result IN 
      SELECT DISTINCT etchant_name 
      FROM migration_results 
      WHERE matched = false 
      ORDER BY etchant_name
    LOOP
      RAISE NOTICE '  - %', result.etchant_name;
    END LOOP;
  END IF;
END $$;

-- ============================================================================
-- MIGRATION COMPLETE
-- ============================================================================
-- The migration has been executed above. 
-- 
-- To verify the results, run these queries separately in the SQL editor:
--
-- 1. Count relationships created:
--    SELECT COUNT(*) as total_relationships FROM material_etchants;
--
-- 2. Count materials with relationships:
--    SELECT COUNT(DISTINCT material_id) as materials_with_relationships FROM material_etchants;
--
-- 3. Show primary etchants per material:
--    SELECT 
--      m.name as material_name,
--      e.name as primary_etchant,
--      me.recommended_for,
--      me.effectiveness_rating
--    FROM materials m
--    JOIN material_etchants me ON m.id = me.material_id
--    JOIN etchants e ON me.etchant_id = e.id
--    WHERE me.is_primary = true
--    ORDER BY m.name;
--
-- 4. Check for materials that might not have been migrated:
--    SELECT m.id, m.name, m.common_etchants
--    FROM materials m
--    WHERE m.common_etchants IS NOT NULL 
--      AND array_length(m.common_etchants, 1) > 0
--      AND NOT EXISTS (
--        SELECT 1 FROM material_etchants me WHERE me.material_id = m.id
--      );

