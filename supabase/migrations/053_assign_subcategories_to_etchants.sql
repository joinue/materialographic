-- ============================================================================
-- ASSIGN SUBCATEGORIES TO ETCHANT PRODUCTS
-- ============================================================================
-- This migration updates consumables with category='etchants' to have
-- appropriate subcategories based on their name, description, and material
-- suitability.
-- ============================================================================

-- Update etchants for stainless steel
UPDATE consumables 
SET subcategory = 'stainless-steel'
WHERE category = 'etchants'
  AND (
    -- Name contains stainless steel keywords
    name ILIKE '%stainless%' 
    OR name ILIKE '%austenitic%'
    OR name ILIKE '%martensitic%'
    OR name ILIKE '%ferritic%'
    OR name ILIKE '%duplex%'
    OR name ILIKE '%superalloy%'
    OR name ILIKE '%super alloy%'
    -- Description contains stainless steel keywords
    OR description ILIKE '%stainless steel%'
    OR description ILIKE '%austenitic%'
    OR description ILIKE '%martensitic%'
    OR description ILIKE '%ferritic%'
    OR description ILIKE '%duplex%'
    OR description ILIKE '%superalloy%'
    OR description ILIKE '%super alloy%'
    -- Suitable for materials includes stainless steel
    OR suitable_for_material_types && ARRAY['stainless-steel', 'austenitic', 'martensitic', 'ferritic', 'duplex']
    -- Check consumables_etchants table if it exists
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['stainless-steel', 'austenitic', 'martensitic', 'ferritic', 'duplex']
          OR ce.composition ILIKE '%stainless%'
        )
    )
  )
  AND subcategory IS NULL;

-- Update etchants for steel (but not stainless)
UPDATE consumables 
SET subcategory = 'steel'
WHERE category = 'etchants'
  AND (
    -- Name contains steel keywords (but not stainless)
    (name ILIKE '%steel%' AND name NOT ILIKE '%stainless%')
    OR name ILIKE '%carbon steel%'
    OR name ILIKE '%alloy steel%'
    OR name ILIKE '%tool steel%'
    OR name ILIKE '%ferrous%'
    -- Description contains steel keywords
    OR (description ILIKE '%steel%' AND description NOT ILIKE '%stainless%')
    OR description ILIKE '%carbon steel%'
    OR description ILIKE '%alloy steel%'
    OR description ILIKE '%tool steel%'
    OR description ILIKE '%ferrous%'
    -- Suitable for materials includes steel
    OR suitable_for_material_types && ARRAY['steel', 'carbon-steel', 'alloy-steel', 'tool-steel', 'ferrous']
    -- Check consumables_etchants table
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['steel', 'carbon-steel', 'alloy-steel', 'tool-steel', 'ferrous']
          OR (ce.composition ILIKE '%steel%' AND ce.composition NOT ILIKE '%stainless%')
        )
    )
  )
  AND subcategory IS NULL;

-- Update etchants for aluminum
UPDATE consumables 
SET subcategory = 'aluminum'
WHERE category = 'etchants'
  AND (
    -- Name contains aluminum keywords
    name ILIKE '%aluminum%'
    OR name ILIKE '%aluminium%'
    OR name ILIKE '%aluminum alloy%'
    OR name ILIKE '%aluminium alloy%'
    OR name ILIKE '%magnesium%'
    OR name ILIKE '%light metal%'
    -- Description contains aluminum keywords
    OR description ILIKE '%aluminum%'
    OR description ILIKE '%aluminium%'
    OR description ILIKE '%aluminum alloy%'
    OR description ILIKE '%aluminium alloy%'
    OR description ILIKE '%magnesium%'
    OR description ILIKE '%light metal%'
    -- Suitable for materials includes aluminum
    OR suitable_for_material_types && ARRAY['aluminum', 'aluminium', 'magnesium', 'light-metal']
    -- Check consumables_etchants table
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['aluminum', 'aluminium', 'magnesium', 'light-metal']
          OR ce.composition ILIKE '%aluminum%'
          OR ce.composition ILIKE '%aluminium%'
        )
    )
  )
  AND subcategory IS NULL;

-- Update etchants for titanium
UPDATE consumables 
SET subcategory = 'titanium'
WHERE category = 'etchants'
  AND (
    -- Name contains titanium keywords
    name ILIKE '%titanium%'
    OR name ILIKE '%ti-%'
    OR name ILIKE '%ti %'
    -- Description contains titanium keywords
    OR description ILIKE '%titanium%'
    OR description ILIKE '%ti-%'
    OR description ILIKE '%ti %'
    -- Suitable for materials includes titanium
    OR suitable_for_material_types && ARRAY['titanium', 'ti-6al-4v', 'ti-alloy']
    -- Check consumables_etchants table
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['titanium', 'ti-6al-4v', 'ti-alloy']
          OR ce.composition ILIKE '%titanium%'
        )
    )
  )
  AND subcategory IS NULL;

-- Update etchants for copper and brass
UPDATE consumables 
SET subcategory = 'copper-brass'
WHERE category = 'etchants'
  AND (
    -- Name contains copper/brass keywords
    name ILIKE '%copper%'
    OR name ILIKE '%brass%'
    OR name ILIKE '%bronze%'
    OR name ILIKE '%cu-%'
    OR name ILIKE '%cu %'
    -- Description contains copper/brass keywords
    OR description ILIKE '%copper%'
    OR description ILIKE '%brass%'
    OR description ILIKE '%bronze%'
    OR description ILIKE '%cu-%'
    OR description ILIKE '%cu %'
    -- Suitable for materials includes copper/brass
    OR suitable_for_material_types && ARRAY['copper', 'brass', 'bronze', 'copper-alloy']
    -- Check consumables_etchants table
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['copper', 'brass', 'bronze', 'copper-alloy']
          OR ce.composition ILIKE '%copper%'
          OR ce.composition ILIKE '%brass%'
        )
    )
  )
  AND subcategory IS NULL;

-- Update etchants for nickel
UPDATE consumables 
SET subcategory = 'nickel'
WHERE category = 'etchants'
  AND (
    -- Name contains nickel keywords
    name ILIKE '%nickel%'
    OR name ILIKE '%inconel%'
    OR name ILIKE '%monel%'
    OR name ILIKE '%hastelloy%'
    OR name ILIKE '%waspaloy%'
    OR name ILIKE '%nimonic%'
    -- Description contains nickel keywords
    OR description ILIKE '%nickel%'
    OR description ILIKE '%inconel%'
    OR description ILIKE '%monel%'
    OR description ILIKE '%hastelloy%'
    OR description ILIKE '%waspaloy%'
    OR description ILIKE '%nimonic%'
    -- Suitable for materials includes nickel
    OR suitable_for_material_types && ARRAY['nickel', 'inconel', 'monel', 'hastelloy', 'nickel-alloy']
    -- Check consumables_etchants table
    OR EXISTS (
      SELECT 1 FROM consumables_etchants ce
      WHERE ce.consumable_id = consumables.id
        AND (
          ce.suitable_for_materials && ARRAY['nickel', 'inconel', 'monel', 'hastelloy', 'nickel-alloy']
          OR ce.composition ILIKE '%nickel%'
        )
    )
  )
  AND subcategory IS NULL;

-- Set remaining etchants to general-purpose (default)
UPDATE consumables 
SET subcategory = 'general-purpose'
WHERE category = 'etchants'
  AND subcategory IS NULL;

-- Verify the update
DO $$
DECLARE
  general_purpose_count INTEGER;
  steel_count INTEGER;
  stainless_steel_count INTEGER;
  aluminum_count INTEGER;
  titanium_count INTEGER;
  copper_brass_count INTEGER;
  nickel_count INTEGER;
  total_count INTEGER;
  unassigned_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO general_purpose_count FROM consumables WHERE category = 'etchants' AND subcategory = 'general-purpose';
  SELECT COUNT(*) INTO steel_count FROM consumables WHERE category = 'etchants' AND subcategory = 'steel';
  SELECT COUNT(*) INTO stainless_steel_count FROM consumables WHERE category = 'etchants' AND subcategory = 'stainless-steel';
  SELECT COUNT(*) INTO aluminum_count FROM consumables WHERE category = 'etchants' AND subcategory = 'aluminum';
  SELECT COUNT(*) INTO titanium_count FROM consumables WHERE category = 'etchants' AND subcategory = 'titanium';
  SELECT COUNT(*) INTO copper_brass_count FROM consumables WHERE category = 'etchants' AND subcategory = 'copper-brass';
  SELECT COUNT(*) INTO nickel_count FROM consumables WHERE category = 'etchants' AND subcategory = 'nickel';
  SELECT COUNT(*) INTO total_count FROM consumables WHERE category = 'etchants';
  SELECT COUNT(*) INTO unassigned_count FROM consumables WHERE category = 'etchants' AND subcategory IS NULL;
  
  RAISE NOTICE 'Migration complete:';
  RAISE NOTICE '  Total etchants: %', total_count;
  RAISE NOTICE '  General Purpose: %', general_purpose_count;
  RAISE NOTICE '  Steel: %', steel_count;
  RAISE NOTICE '  Stainless Steel: %', stainless_steel_count;
  RAISE NOTICE '  Aluminum: %', aluminum_count;
  RAISE NOTICE '  Titanium: %', titanium_count;
  RAISE NOTICE '  Copper & Brass: %', copper_brass_count;
  RAISE NOTICE '  Nickel: %', nickel_count;
  RAISE NOTICE '  Unassigned: %', unassigned_count;
END $$;

