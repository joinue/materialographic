-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 13 of 16
-- Statements 2401 to 2600

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.25 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-025P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '0.50 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-05P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '1 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-1P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '3 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-3P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '6 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-6P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-9P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-15P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-30P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[8],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-45P8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.10 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-01P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.25 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-025P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '0.50 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-05P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '1 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-1P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '3 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-3P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '6 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-6P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-9P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-15P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-30P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[10],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-45P10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.10 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-01P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.25 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-025P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '0.50 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-05P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '1 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-1P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '3 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-3P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '6 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-6P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '9 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-9P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '15 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-15P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '30 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-30P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'film', 
  ARRAY[12],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'film',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DAA-45P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-01P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-025P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-05P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-1P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-3P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-6P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-9P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-15P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-30P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-45P8' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-01P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-025P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-05P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-1P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-3P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-6P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-9P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-15P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-30P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-45P10' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-01P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-025P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-05P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-1P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-3P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-6P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-9P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-15P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-30P12' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PDAA-45P12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMESH-2008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMESH-2009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMESH-2010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMESH-2012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMESH-2014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PP-6008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PP-6009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PP-6010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PP-6012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PP-6014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TP-5008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TP-5009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TP-5010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TP-5012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TP-5014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'BC2-8008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'BC2-8009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'BC2-8010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'BC2-8012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'BC2-8014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DC2-3008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DC2-3010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DC2-3012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DC2-3014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NY-3008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NY-3009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NY-3010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NY-3012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NY-3014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'GP-4014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ATL-3014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MP-9014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'TRI-4014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NP-7014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MT2-7014' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[9],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-09' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'pad', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  'PSA',
  'pad',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'FP-8125-14' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'GP-4008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'GP-4010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'GP-4012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'GP-4014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ATL-3008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ATL-3010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ATL-3012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ATL-3014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MP-9008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MP-9010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MP-9012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MP-9014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TRI-4008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TRI-4010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TRI-4012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TRI-4014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NP-7008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NP-7010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NP-7012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NP-7014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MT2-7008-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MT2-7010-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MT2-7012-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'MT2-7014-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'FP-8125-08-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'FP-8125-10-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'FP-8125-12-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'FP-8125-14-MAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CMESH-2014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'PP-6014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'TP-5014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'BC2-8014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DC2-3014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3008-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3010-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3012-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'NY-3014-SSMAG' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'GP-4008-SSMAG' ON CONFLICT DO NOTHING;
