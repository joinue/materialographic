-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 11 of 16
-- Statements 2001 to 2200

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2208-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2108-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2210-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2110-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2212-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2112-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2214-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '60',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '80',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-080' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '120',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '180',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '240',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '320',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-320' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '360',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '400',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '600',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '800',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1000',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '1200',
  'silicon-carbide',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-2114-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DSA-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DSA-10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DSA-12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[14],
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DSA-14' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  NULL,
  'silicon-carbide',
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'REC-5008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  NULL,
  'silicon-carbide',
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'REC-5010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  NULL,
  'silicon-carbide',
  NULL,
  'PSA',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'REC-5012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  NULL,
  'silicon-carbide',
  NULL,
  'magnetic-rubber',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MREC-5008' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  NULL,
  'silicon-carbide',
  NULL,
  'magnetic-rubber',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MREC-5010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  NULL,
  'silicon-carbide',
  NULL,
  'magnetic-rubber',
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'MREC-5012' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5108-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5110-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-360' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-600' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-800' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-5112-1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-120P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '220',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-220P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '500',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-500P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1200P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-120P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '220',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-220P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '500',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-500P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '12000',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1200P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-120P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '220',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-220P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '500',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-500P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'alumina',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-1200P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2108-P120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '220',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2108-P220' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '500',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2108-P500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2108-P1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2110-P120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '220',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2110-P220' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '500',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2110-P500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2110-P1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2112-P120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '220',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2112-P220' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '500',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2112-P500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'alumina',
  NULL,
  'plain-back',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-2112-P1200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-120P08-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-220P08-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-120P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-220P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-120P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  NULL,
  'zirconia',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZR-220P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '60',
  'zirconia',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZRO2-B060' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '120',
  'zirconia',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ZRO2-B120' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8250' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8125' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8075' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-DISK-8045' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8030' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8015' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-8009' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10250' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10125' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10075' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-DISK-10045' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10030' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10015' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-10009' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12250' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12125' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12075' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[12],
  '45 micron',
  'diamond',
  NULL,
  'PSA',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DIA-DISK-12045' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12030' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12015' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DIA-DISK-12009' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '250 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-250M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-125M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '75 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-75M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '45 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-45M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '30 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-30M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-15M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[8],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD8-09M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '250 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-250M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '125 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-125M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '75 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-75M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '45 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-45M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '30 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-30M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '15 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-15M' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'disk', 
  ARRAY[10],
  '9 micron',
  'diamond',
  NULL,
  'magnetic-stainless-steel',
  'disk',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PGD10-09M' ON CONFLICT DO NOTHING;
