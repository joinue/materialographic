-- ============================================================================
-- SPLIT GRINDING-POLISHING INTO GRINDING-LAPPING AND POLISHING
-- ============================================================================
-- This migration splits the 'grinding-polishing' category into two separate
-- categories: 'grinding-lapping' and 'polishing' to align with navigation structure.
-- ============================================================================

-- Update grinding-lapping items (based on subcategory patterns)
UPDATE consumables
SET category = 'grinding-lapping'
WHERE category = 'grinding-polishing'
  AND (
    -- Subcategory matches
    subcategory ILIKE '%grinding paper%' OR
    subcategory ILIKE '%grinding powder%' OR
    subcategory ILIKE '%lapping film%' OR
    subcategory ILIKE '%grinding belt%' OR
    subcategory ILIKE '%abrasive belt%' OR
    subcategory ILIKE '%grinding roll%' OR
    subcategory ILIKE '%diamond grinding%' OR
    subcategory ILIKE '%grinding disk%' OR
    subcategory ILIKE '%foil%' OR
    subcategory ILIKE '%receiver%' OR
    -- Name matches
    name ILIKE '%grinding paper%' OR
    name ILIKE '%grinding powder%' OR
    name ILIKE '%lapping film%' OR
    name ILIKE '%grinding belt%' OR
    name ILIKE '%abrasive belt%' OR
    name ILIKE '%grinding roll%' OR
    name ILIKE '%foil%' OR
    name ILIKE '%receiver%' OR
    (name ILIKE '%diamond%' AND (name ILIKE '%grinding%' OR name ILIKE '%disk%')) OR
    -- Item ID patterns
    item_id ILIKE '%SIC%' OR
    item_id ILIKE '%ALUMINA%' OR
    item_id ILIKE '%ZIRCONIA%'
  )
  -- Exclude polishing items
  AND NOT (
    subcategory ILIKE '%polishing pad%' OR
    (subcategory ILIKE '%polishing%' AND subcategory NOT ILIKE '%grinding%') OR
    subcategory ILIKE '%diamond abrasive%' OR
    subcategory ILIKE '%slurry%' OR
    subcategory ILIKE '%suspension%' OR
    name ILIKE '%polishing pad%' OR
    (name ILIKE '%diamond%' AND (name ILIKE '%paste%' OR name ILIKE '%suspension%' OR name ILIKE '%abrasive%')) OR
    (name ILIKE '%alumina%' AND (name ILIKE '%slurry%' OR name ILIKE '%suspension%')) OR
    name ILIKE '%colloidal silica%'
  );

-- Update polishing items (everything else that was grinding-polishing)
UPDATE consumables
SET category = 'polishing'
WHERE category = 'grinding-polishing'
  AND (
    -- Subcategory matches
    subcategory ILIKE '%polishing%' OR
    subcategory ILIKE '%polishing pad%' OR
    subcategory ILIKE '%diamond abrasive%' OR
    subcategory ILIKE '%diamond paste%' OR
    subcategory ILIKE '%diamond suspension%' OR
    subcategory ILIKE '%slurry%' OR
    subcategory ILIKE '%suspension%' OR
    subcategory ILIKE '%final polishing%' OR
    subcategory ILIKE '%rough polishing%' OR
    subcategory ILIKE '%etchant%' OR
    subcategory ILIKE '%cleaning%' OR
    subcategory ILIKE '%accessory%' OR
    -- Name matches
    name ILIKE '%polishing pad%' OR
    name ILIKE '%diamond paste%' OR
    name ILIKE '%diamond suspension%' OR
    name ILIKE '%diamond abrasive%' OR
    name ILIKE '%diamond lube%' OR
    (name ILIKE '%alumina%' AND (name ILIKE '%slurry%' OR name ILIKE '%suspension%' OR name ILIKE '%powder%')) OR
    name ILIKE '%colloidal silica%' OR
    name ILIKE '%polycrystalline%' OR
    name ILIKE '%monocrystalline%' OR
    -- Description matches
    description ILIKE '%polishing%' OR
    description ILIKE '%final polish%'
  )
  -- Exclude grinding items
  AND NOT (
    subcategory ILIKE '%grinding paper%' OR
    subcategory ILIKE '%grinding powder%' OR
    subcategory ILIKE '%lapping film%' OR
    subcategory ILIKE '%grinding belt%' OR
    subcategory ILIKE '%grinding roll%' OR
    subcategory ILIKE '%diamond grinding%' OR
    subcategory ILIKE '%grinding disk%' OR
    name ILIKE '%grinding paper%' OR
    name ILIKE '%grinding powder%' OR
    name ILIKE '%lapping film%' OR
    name ILIKE '%grinding belt%' OR
    name ILIKE '%grinding roll%'
  );

-- Update any remaining grinding-polishing items to polishing (default)
-- This catches any items that didn't match the patterns above
UPDATE consumables
SET category = 'polishing'
WHERE category = 'grinding-polishing';

-- Verify the update
DO $$
DECLARE
  grinding_count INTEGER;
  polishing_count INTEGER;
  remaining_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO grinding_count FROM consumables WHERE category = 'grinding-lapping';
  SELECT COUNT(*) INTO polishing_count FROM consumables WHERE category = 'polishing';
  SELECT COUNT(*) INTO remaining_count FROM consumables WHERE category = 'grinding-polishing';
  
  RAISE NOTICE 'Migration complete:';
  RAISE NOTICE '  Grinding-lapping items: %', grinding_count;
  RAISE NOTICE '  Polishing items: %', polishing_count;
  RAISE NOTICE '  Remaining grinding-polishing items: %', remaining_count;
END $$;

