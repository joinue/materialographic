-- ============================================================================
-- UPDATE SEMI-AUTOMATED SUBCATEGORY LABEL AND FIX EQUIPMENT CATEGORIZATION
-- ============================================================================
-- This migration:
-- 1. Updates the subcategory label for semi-automated grinding and polishing 
--    equipment from "Semi-Automated" to "Semi-Automated Polishing Systems"
-- 2. Updates the description to mention NANO base requirement
-- 3. Explicitly fixes FEMTO and ZETA items to be in 'semi-automated' subcategory
-- ============================================================================

-- Update subcategory metadata label and description
UPDATE subcategory_metadata
SET 
  subcategory_label = 'Semi-Automated Polishing Systems',
  description = 'Semi-automated polishing systems consist of FEMTO polishing heads and ZETA abrasive dispensers that attach to NANO grinder polisher bases. These systems feature programmable force, speed, and time per step, providing increased throughput and consistency while maintaining flexibility for different materials and sample types. Note: NANO grinder polisher bases are required for FEMTO polishing heads and ZETA dispensers to operate.',
  updated_at = NOW()
WHERE entity_type = 'equipment'
  AND category = 'grinding-polishing'
  AND subcategory_key = 'semi-automated';

-- Explicitly set all FEMTO items to semi-automated subcategory
-- This overrides any previous categorization that might have put them in 'automated'
UPDATE equipment
SET 
  subcategory = 'semi-automated',
  automation_level = 'semi-automated',
  updated_at = NOW()
WHERE category IN ('grinding', 'polishing')
  AND item_id ILIKE 'FEMTO-%';

-- Explicitly set all ZETA items to semi-automated subcategory
-- ZETA dispensers work with FEMTO heads and NANO bases, so they belong in semi-automated
UPDATE equipment
SET 
  subcategory = 'semi-automated',
  automation_level = 'semi-automated',
  updated_at = NOW()
WHERE category IN ('grinding', 'polishing')
  AND item_id ILIKE 'ZETA-%';

-- Verify the updates
DO $$
DECLARE
  metadata_count INTEGER;
  femto_count INTEGER;
  zeta_count INTEGER;
  femto_wrong_count INTEGER;
  zeta_wrong_count INTEGER;
BEGIN
  -- Check metadata update
  SELECT COUNT(*) INTO metadata_count 
  FROM subcategory_metadata
  WHERE entity_type = 'equipment'
    AND category = 'grinding-polishing'
    AND subcategory_key = 'semi-automated'
    AND subcategory_label = 'Semi-Automated Polishing Systems';
  
  -- Check FEMTO items
  SELECT COUNT(*) INTO femto_count 
  FROM equipment
  WHERE category IN ('grinding', 'polishing')
    AND item_id ILIKE 'FEMTO-%'
    AND subcategory = 'semi-automated';
  
  -- Check ZETA items
  SELECT COUNT(*) INTO zeta_count 
  FROM equipment
  WHERE category IN ('grinding', 'polishing')
    AND item_id ILIKE 'ZETA-%'
    AND subcategory = 'semi-automated';
  
  -- Check for any FEMTO items still in wrong subcategory
  SELECT COUNT(*) INTO femto_wrong_count 
  FROM equipment
  WHERE category IN ('grinding', 'polishing')
    AND item_id ILIKE 'FEMTO-%'
    AND subcategory != 'semi-automated';
  
  -- Check for any ZETA items still in wrong subcategory
  SELECT COUNT(*) INTO zeta_wrong_count 
  FROM equipment
  WHERE category IN ('grinding', 'polishing')
    AND item_id ILIKE 'ZETA-%'
    AND subcategory != 'semi-automated';
  
  RAISE NOTICE 'Migration Results:';
  RAISE NOTICE '  Metadata updated: % (expected 1)', metadata_count;
  RAISE NOTICE '  FEMTO items in semi-automated: %', femto_count;
  RAISE NOTICE '  ZETA items in semi-automated: %', zeta_count;
  RAISE NOTICE '  FEMTO items in wrong subcategory: % (should be 0)', femto_wrong_count;
  RAISE NOTICE '  ZETA items in wrong subcategory: % (should be 0)', zeta_wrong_count;
  
  IF femto_wrong_count > 0 OR zeta_wrong_count > 0 THEN
    RAISE WARNING 'Some FEMTO or ZETA items are still in the wrong subcategory!';
  END IF;
END $$;

