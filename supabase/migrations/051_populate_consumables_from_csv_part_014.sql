-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 14 of 16
-- Statements 2601 to 2800

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3008-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9008-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4008-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7008-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7008-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7010-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7012-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7014-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-08-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-10-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-12-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-14-SSMAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B14' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-B300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-rubber',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-P08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-rubber',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-rubber',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-rubber',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MAG-P14' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SSMAG-P08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SSMAG-P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SSMAG-P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'magnetic-stainless-steel',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SSMAG-P14' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0105-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0105-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0105-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-0105-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0110-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0110-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0110-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-0110-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0125-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0125-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0125-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-0125-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0150-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0150-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0150-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-0150-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0105-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0105-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0105-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-0105-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0110-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0110-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0110-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-0110-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0125-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0125-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0125-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-0125-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0150-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0150-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-0150-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-0150-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1001-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1001-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1001-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1001-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1003-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1003-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1003-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1003-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1006-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1006-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1006-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1006-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1009-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1009-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1009-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1009-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1015-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1015-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1015-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1015-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1030-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1030-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1030-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1030-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1045-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1045-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GPC-1045-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GPC-1045-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0105-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0105-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0105-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.05 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0105-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0110-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0110-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0110-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.10 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0110-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0125-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0125-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0125-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.25 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0125-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0150-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0150-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0150-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '0.50 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-0150-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1001-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1001-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1001-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1001-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1003-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1003-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1003-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1003-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1006-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1006-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1006-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1006-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1009-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1009-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1009-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1009-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1015-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1015-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1015-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1015-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1030-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1030-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1030-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1030-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1045-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1045-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1045-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'water-based',
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WPC-1045-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1001-1GLB' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1003-1GLG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1006-1GLY' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '9 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1009-1GLR' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1015-1GLBR' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '30 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1030-1GLO' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '45 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-1045-1GLP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1001-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1001-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1001-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '1 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1001-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1003-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1003-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1003-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '3 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1003-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1006-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1006-500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1006-1GL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'abrasive',
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1006-5L' ON CONFLICT DO NOTHING;
