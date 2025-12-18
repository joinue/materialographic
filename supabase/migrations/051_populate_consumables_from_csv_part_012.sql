-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 12 of 16
-- Statements 2201 to 2400

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '250 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-250M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-125M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '75 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-75M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '45 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-45M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '30 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-30M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-15M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD12-09M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '250 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '75 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '40 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '250 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '75 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '40 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '250 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '75 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '40 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '250 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '125 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '75 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '40 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '30 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '250 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '125 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '75 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '40 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '30 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '250 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M250-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '125 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M125-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '75 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M075-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '40 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M040-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '30 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M030-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  'metal',
  NULL,
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-M015-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '70 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '35 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '25 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-08-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '70 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '35 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '25 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-10-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '125 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '70 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '35 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '25 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-12-PSA' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '70 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '35 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '25 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-08-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '70 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '35 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '25 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-10-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R125-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '70 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R070-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '35 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R035-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '25 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R025-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R015-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-rubber',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-R009-12-MAG' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ORION-MD08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ORION-MD10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '6 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ORION-MD12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIRIUS-MD08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIRIUS-MD10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIRIUS-MD12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.05 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8105PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8103PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '1 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8001PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '3 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8003PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '5 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8005PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '9 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8009PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '12 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8012PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '15 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8015PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8030PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.05 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-10105PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-10103PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '1 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1001PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '3 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1003PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '5 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1005PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '9 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1009PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '12 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1012PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '15 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1015PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1030PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.05 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-12105PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-12103PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '1 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1201PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '3 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1203PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '5 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1205PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '9 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1209PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '12 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1212PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '15 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1215PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '30 micron',
  'alumina',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1230PB-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.05 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8105PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8103PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '1 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8001PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '3 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8003PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '5 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8005PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '9 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8009PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '12 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8012PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '15 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8015PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-8030PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.05 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-10105PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-10103PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '1 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1001PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '3 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1003PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '5 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1005PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '9 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1009PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '12 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1012PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '15 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1015PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1030PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.05 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-12105PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-12103PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '1 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1201PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '3 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1203PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '5 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1205PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '9 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1209PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '12 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1212PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '15 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1215PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '30 micron',
  'alumina',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1230PSA-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.10 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-01P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.25 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-025P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.50 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-05P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '1 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-1P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '3 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-3P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '6 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-6P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '9 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-9P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-15P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '30 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-30P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '45 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-45P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.10 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-01P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.25 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-025P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.50 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-05P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '1 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-1P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '3 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-3P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '6 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-6P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '9 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-9P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-15P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '30 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-30P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '45 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-45P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.10 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-01P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.25 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-025P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.50 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-05P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '1 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-1P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '3 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-3P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '6 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-6P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '9 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-9P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-15P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '30 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-30P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '45 micron',
  'diamond',
  NULL,
  'plain-back',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DA-45P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-01P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-025P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-05P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-1P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-3P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-6P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-9P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-15P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-30P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P8',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-45P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-01P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-025P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-05P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-1P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-3P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-6P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-9P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-15P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-30P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P10',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-45P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-01P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-025P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-05P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-1P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-3P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-6P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-9P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-15P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-30P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  'P12',
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDA-45P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.10 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-01P8' ON CONFLICT DO NOTHING;
