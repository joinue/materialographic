-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 9 of 16
-- Statements 1601 to 1800

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'silicon-carbide/resin'
FROM consumables WHERE item_id = 'MAX-C150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'silicon-carbide/resin'
FROM consumables WHERE item_id = 'MAX-C125' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 76, 3, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0030LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 76, 3, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0035LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 76, 3, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0035HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 76, 3, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0035' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0040LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0045LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0045HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0045' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-004GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-004LCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-004HCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 101, 4, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-040EPD' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'WB-0045CHC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0050LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0055LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0055HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0055' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-005GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-005LCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-005HCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 127, 5, 
  'diamond', '120', 
  'diamond'
FROM consumables WHERE item_id = 'WB-050EPD' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'WB-0055CHC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0060LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0065LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0065HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0065' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-006GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-006LCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-006HCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'diamond', '120', 
  'diamond'
FROM consumables WHERE item_id = 'WB-060EPD' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'WB-0065CHC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0070LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0075LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0075HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0075' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-007GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-007LCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-007HCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'diamond', '120', 
  'diamond'
FROM consumables WHERE item_id = 'WB-070EPD' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'WB-0075CHC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0080LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0085LC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-0085HC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'CBN'
FROM consumables WHERE item_id = 'WCBN-0085' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-008GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-008LCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'wafering', NULL, 
  'diamond'
FROM consumables WHERE item_id = 'WB-008HCS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 203, 8, 
  'diamond', '120', 
  'diamond'
FROM consumables WHERE item_id = 'WB-080EPD' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'WB-0085CHC' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, stick_size_mm, stick_size_inches, stick_material
) SELECT id, NULL, NULL, 
  CASE 
    WHEN 'Dressing Stick' ILIKE '%aluminum%oxide%' THEN 'aluminum-oxide'
    WHEN 'Dressing Stick' ILIKE '%silicon%carbide%' THEN 'silicon-carbide'
    ELSE 'aluminum-oxide'
  END
FROM consumables WHERE item_id = 'DRES-0010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'MAXCUT Abrasive Cutting Fluid (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT-1000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', NULL, NULL, 
  CASE WHEN 'MAXCUT Abrasive Cutting Fluid (1/2 gallon)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT-1000-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 3785, 128, 
  CASE WHEN 'MAXCUT Abrasive Cutting Fluid (128 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT-1000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', NULL, NULL, 
  CASE WHEN 'MAXCUT Abrasive cutting fluid (5 gallons)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT-1000-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT2-1000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', NULL, NULL, 
  CASE WHEN 'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (1/2 gallon)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT2-1000-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', NULL, NULL, 
  CASE WHEN 'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (1 gallon)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT2-1000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', NULL, NULL, 
  CASE WHEN 'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (5 gallons)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'MAXCUT2-1000-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 473, 16, 
  CASE WHEN 'DIACUT Water Based Diamond Cutting Fluid (16 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'WL-3000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'DIACUT Water Based Diamond Cutting Fluid (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'WL-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 473, 16, 
  CASE WHEN 'DIACUT Oil-based Diamond Cutting Fluid (16 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'OL-3000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'DIACUT Oil-based Diamond Cutting Fluid (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'OL-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 473, 16, 
  CASE WHEN 'DIACUT Water Based anti-corrosion Diamond Cutting Fluid (16 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'WL2-3000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'DIACUT Water Based anti-corrosion Diamond Cutting Fluid (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'WL2-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, fluid_type, volume_ml, volume_oz, anti_corrosion
) SELECT id, 'water-based', 946, 32, 
  CASE WHEN 'Anti-Corrosion Additive for Cutting Fluid (32 oz)' ILIKE '%anti%corrosion%' THEN true ELSE false END
FROM consumables WHERE item_id = 'PCC-5000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'black',
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2001B-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'red',
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2001R-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'red',
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2001R-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'green',
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2001G-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'green',
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2001G-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'black',
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500B-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'black',
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500B-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'red',
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500R-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'red',
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500R-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'green',
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500G-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  'green',
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'CM-2500G-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'acrylic',
  'transparent',
  'powder',
  2.267964547178199, 5.0,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'CM-2101A-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'acrylic',
  'transparent',
  'powder',
  11.339822735890994, 25.0,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'CM-2101A-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'acrylic',
  'transparent',
  'powder',
  1.0, 2.20462,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'CM-2501A-1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'acrylic',
  'transparent',
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'CM-2501A-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'acrylic',
  'transparent',
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'CM-2501A-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'epoxy',
  NULL,
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, True, False
FROM consumables WHERE item_id = 'EP-2201A-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'epoxy',
  NULL,
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, True, False
FROM consumables WHERE item_id = 'EP-2201A-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'epoxy',
  NULL,
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EPF-2201-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'epoxy',
  NULL,
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EPF-2201-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  NULL,
  NULL,
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, True
FROM consumables WHERE item_id = 'EPF-2500-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'phenolic',
  NULL,
  NULL,
  8.0, 17.63696,
  NULL, NULL,
  False, False, False, True
FROM consumables WHERE item_id = 'EPF-2500-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'diallyl-phthalate',
  'blue',
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'DY-2301A-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'diallyl-phthalate',
  'blue',
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'DY-2301B-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-1P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-5P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  11.339822735890994, 25.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-25P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  0.45359290943563974, 1.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU-1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  2.267964547178199, 5.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  11.339822735890994, 25.0,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU-25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  1.0, 2.20462,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-G1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-G2500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-G7500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  1.0, 2.20462,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  2.5, 5.51155,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU2500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  'conductive',
  NULL,
  NULL,
  7.5, 16.53465,
  NULL, NULL,
  True, False, False, False
FROM consumables WHERE item_id = 'CONDUCTO-CU7500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  30, 1,
  False, False, False, False
FROM consumables WHERE item_id = 'MS-1000-30' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, 'compression', 'silicone', 'liquid'
FROM consumables WHERE item_id = 'MR-1000-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, 'compression', 'silicone', 'liquid'
FROM consumables WHERE item_id = 'MR-1000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, 'compression', 'silicone', 'liquid'
FROM consumables WHERE item_id = 'MR-1000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GLOVES-S100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GLOVES-M100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'compression', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GLOVES-L100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'liquid',
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'UV-1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  1.0, 2.20462,
  500, 16,
  False, False, False, False
FROM consumables WHERE item_id = 'PAR-5000-K1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'PAR-5000-K2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  1.0, 2.20462,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'PAR-5000-P1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.5, 5.51155,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'PAR-5000-P2500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  7.5, 16.53465,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'PAR-5000-P7500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  'transparent',
  'liquid',
  NULL, NULL,
  500, 16,
  False, True, False, False
FROM consumables WHERE item_id = 'PAH-5000-H500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  'transparent',
  'liquid',
  NULL, NULL,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'PAH-5000-H1L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  'transparent',
  'liquid',
  NULL, NULL,
  NULL, NULL,
  False, True, False, False
FROM consumables WHERE item_id = 'PAH-5000-H5L' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  354, 12,
  False, False, False, False
FROM consumables WHERE item_id = 'AK-5000-K1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  1892, 64,
  False, False, False, False
FROM consumables WHERE item_id = 'AK-5000-K5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'AR-5000-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'AR-5000-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'AR-5000-P25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  45.35929094356398, 100.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'AR-5000-P100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 354, 12
FROM consumables WHERE item_id = 'AH-5000-H12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'AH-5000-H32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'AH-5000-H64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'AH-5000-H128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'AH-5000-H640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  354, 12,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-K1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  1892, 64,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-K5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-P25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  45.35929094356398, 100.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ACYP-5000-P100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 354, 12
FROM consumables WHERE item_id = 'ACYH-5000-H12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'ACYH-5000-H32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ACYH-5000-H64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ACYH-5000-H128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ACYH-5000-H640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  354, 12,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAK-5000-K1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  1892, 64,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAK-5000-K5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  0.45359290943563974, 1.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAR-5000-P1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  2.267964547178199, 5.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAR-5000-P5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  11.339822735890994, 25.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAR-5000-P25' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'acrylic',
  NULL,
  'powder',
  45.35929094356398, 100.0,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'GRAR-5000-P100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 354, 12
FROM consumables WHERE item_id = 'GRAH-3000-H12' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'GRAH-3000-H32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'GRAH-3000-H64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'GRAH-3000-H128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'GRAH-3000-H640' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'POLYCAST-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 59, 2
FROM consumables WHERE item_id = 'POLYHARD-02' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'DYE-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'EH-3000-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'EH-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'EH-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-32P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-128P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'EP-3000-5GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'EH-3000-08P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'EH-3000-32P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'EH-3000-128P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'ERF-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ERF-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ERF-3000-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'EHF-3000-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'EHF-3000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'EHF-3000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'ULTRA-3000H-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'ULTRA-3000H-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ULTRA-3000H-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-32P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-128P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ULTRA-3000R-5GP' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'ULTRA-3000H-08P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'ULTRA-3000H-32P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ULTRA-3000H-128P' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  946, 32,
  False, False, False, False
FROM consumables WHERE item_id = 'ELITE-3000-2R-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ELITE-3000-2R-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ELITE-3000-2R-5G' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 236, 8
FROM consumables WHERE item_id = 'ELITE-3000-2H-08' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', 946, 32
FROM consumables WHERE item_id = 'ELITE-3000-2H-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, hardener_type, volume_ml, volume_oz
) SELECT id, 'castable', 'standard', NULL, NULL
FROM consumables WHERE item_id = 'ELITE-3000-2H-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  'epoxy',
  NULL,
  NULL,
  NULL, NULL,
  NULL, NULL,
  False, False, False, False
FROM consumables WHERE item_id = 'ED-3000-01' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, 'castable', 'silicone', 'liquid'
FROM consumables WHERE item_id = 'MR-1000-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, release_type, release_form
) SELECT id, 'castable', 'silicone', 'liquid'
FROM consumables WHERE item_id = 'MR-1000-128' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'SS-1000-100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  88, 3,
  False, False, False, False
FROM consumables WHERE item_id = 'MCUPS-0100' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  266, 9,
  False, False, False, False
FROM consumables WHERE item_id = 'PCUPS-050' ON CONFLICT DO NOTHING;

INSERT INTO consumables_mounting (
  consumable_id, mounting_type, resin_type, resin_color, resin_form,
  weight_kg, weight_lbs, volume_ml, volume_oz,
  conductive, transparent, glass_reinforced, edge_retention
) SELECT id, 'castable', 
  NULL,
  NULL,
  NULL,
  NULL, NULL,
  100, 3,
  False, False, False, False
FROM consumables WHERE item_id = 'POUR-CUP-050' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'METPREP-0100' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'METPREP-0125' ON CONFLICT DO NOTHING;
