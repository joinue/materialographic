-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 10 of 16
-- Statements 1801 to 2000

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'METPREP-0150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'METPREP-0200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'MOUNT-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'MOUNT-0125' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'MOUNT-0150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0100C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0125' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0125C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0150C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-315R' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0200' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-0200C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-315R' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-315RC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-302R' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, mold_type, mold_material
) SELECT id, 'castable', 'round', 'steel'
FROM consumables WHERE item_id = 'RMOUNT-302RC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'STORE-0125' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'KLIP-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'MKLIP-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'SKLIP-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'SKLIP-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'MULTICLIP-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, clip_type, clip_material
) SELECT id, 'castable', 'standard', 'steel'
FROM consumables WHERE item_id = 'UNIKLIP-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'MIC-S' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'PETRO-S' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'C-SLIP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'Scribe' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'Gloves' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '80',
  'silicon-carbide',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-B80' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '120',
  'silicon-carbide',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-B120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '180',
  'silicon-carbide',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-B180' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '240',
  'silicon-carbide',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-B240' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'belt', 
  ARRAY[4],
  '120',
  'alumina',
  NULL,
  NULL,
  'belt',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'ALO-B120' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ZrO2-B060' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ZrO2-B120' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '120',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '240',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '320',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '360',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '400',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '600',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '800',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'roll', 
  ARRAY[16],
  '1200',
  'silicon-carbide',
  NULL,
  NULL,
  'roll',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200R-60' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P120',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P280',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P400',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P800',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P1200',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P2400',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P3000',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P4000',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P120',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P280',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P400',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P800',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P1200',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P2400',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P3000',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'powder', 
  NULL,
  'P4000',
  'silicon-carbide',
  NULL,
  NULL,
  'powder',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-P08C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-P10C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-P12C' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-P14C' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P8-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P8-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[8],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P8-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P10-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P10-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[10],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P10-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P12-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P12-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '180',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-180P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '240',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-240P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '320',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-320P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '360',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-360P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '600',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-600P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '800',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-800P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1000',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1000P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[12],
  '1200',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-1200P12-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P14-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P14-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-180P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-240P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-320P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-360P14-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-600P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-800P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-1000P14-25' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-1200P14-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P14-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P14-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-180P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-240P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-320P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-360P14-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '400',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-400P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-600P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-800P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-1000P14-50' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SIC-1200P14-50' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '60',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-060P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '80',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-080P14-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'paper', 
  ARRAY[14],
  '120',
  'silicon-carbide',
  NULL,
  'PSA',
  'paper',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SIC-120P14-100' ON CONFLICT DO NOTHING;
