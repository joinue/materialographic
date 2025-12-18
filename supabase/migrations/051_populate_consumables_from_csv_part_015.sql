-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 15 of 16
-- Statements 2801 to 3000

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
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1009-250' ON CONFLICT DO NOTHING;

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
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1009-500' ON CONFLICT DO NOTHING;

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
  'high',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1009-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1009-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1015-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1015-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1015-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1015-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1030-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1030-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1030-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1030-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1045-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1045-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1045-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-1045-5L' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1001-250' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1001-500' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1001-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1001-5L' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1003-250' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1003-500' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1003-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1003-5L' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1006-250' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1006-500' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1006-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1006-5L' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1009-250' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1009-500' ON CONFLICT DO NOTHING;

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
  'low',
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1009-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1009-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1015-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1015-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1015-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1015-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1030-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1030-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1030-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1030-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1045-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1045-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1045-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'GMA-1045-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1001-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1001-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1001-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1001-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1003-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1003-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1003-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1003-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1006-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1006-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1006-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1006-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1009-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1009-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1009-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1009-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1015-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1015-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1015-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1015-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1030-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1030-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1030-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1030-5L' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1045-250' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1045-500' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1045-1GL' ON CONFLICT DO NOTHING;

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
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'WMA-1045-5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0210-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0210-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0225-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0225-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0250-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-0250-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2001-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2001-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2003-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2003-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2006-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2006-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2009-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2009-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2015-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2015-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2030-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2030-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC- 2045-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'PC-2045-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-0225-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-0225-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-0250-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-0250-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2001-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2001-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2003-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2003-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2006-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2006-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2009-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2009-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2015-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2015-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2030-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2030-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2045-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paste', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'paste',
  NULL,
  'monocrystalline',
  False, False, False
FROM consumables WHERE item_id = 'MA-2045-20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DL-3000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DL-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DL-3000-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'DL-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'AOD-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'AOD-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'AOD-3000-640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ADL-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ADL-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ADL-3000-640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDL-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDL-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDL-3000R-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'diamond',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'PDL-3000R-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMP-1005-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMP-1005-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMP-1005-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'CMP-1005-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'ALPHA-NANO-1005-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'ALPHA-NANO-1005-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'ALPHA-NANO-1005-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'ALPHA-NANO-1005-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'ALPHA-NANO-1005-1G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'NA-1005-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'NA-1005-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'NA-1005-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  NULL,
  'polycrystalline',
  False, False, False
FROM consumables WHERE item_id = 'NA-1005-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NA-1020-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NA-1020-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NA-1020-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NA-1020-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1005-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1005-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1005-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1005-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1003-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1003-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1003-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1003-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1105-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1105-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1105-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1105-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1010-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1010-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1010-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1010-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1030-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1030-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1030-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'slurry', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'slurry',
  'low',
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'NANO-1030-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO-1050-06' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO-1050-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO-1050-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO-1050-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1005-06E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1005-16E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1005-32E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1005-128E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1003-06E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1003-16E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1003-32E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'suspension',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1003-128E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1010-06E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1010-16E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1010-32E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'NANO2-1010-128E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'ALPHA-1005-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, True, True
FROM consumables WHERE item_id = 'ALPHA-1005-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-1005-01E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-1005-05E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-0103-01E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-0103-05E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-0110-01E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, True
FROM consumables WHERE item_id = 'ALD-0110-05E' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALD-1005-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALD-1005-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALD-0103-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALD-0103-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0103-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0103-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0105-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0105-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0110-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0110-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0130-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0130-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0150-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0150-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  NULL,
  'alumina',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALR-0190-05' ON CONFLICT DO NOTHING;
