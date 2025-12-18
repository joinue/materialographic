-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 16 of 16
-- Statements 3001 to 3129

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
FROM consumables WHERE item_id = 'ALR-1200-05' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ALR-1500-05' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ALR-2000-05' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ALR-3000-05' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'ALR-4000-05' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100A-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100A-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100A-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100A-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100A-640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI2-100A-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI2-100A-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI2-100A-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI2-100A-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI2-100A-640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100B-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100B-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100B-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100B-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_grinding_polishing (
  consumable_id, product_type, size_inches, grit_size, abrasive_type,
  bond_type, backing_type, form, viscosity, diamond_type,
  waterproof, electronics_grade, deagglomerated
) SELECT id, 'abrasive', 
  NULL,
  NULL,
  'colloidal-silica',
  NULL,
  NULL,
  'abrasive',
  NULL,
  NULL,
  False, False, False
FROM consumables WHERE item_id = 'SI-100B-640' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-1P' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-5P' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-6S' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-16S' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-32S' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-64S' ON CONFLICT DO NOTHING;

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
FROM consumables WHERE item_id = 'CeO2-1GS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Ammonium Persulfate' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'ASTM. No. 30' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'ASTM. No. 157' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Beraha''s' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Carpenters' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Copper No.1' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Copper No.2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'CU-PASS-SOL' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Dichromate' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Fry''s' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Inconel' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Kallings No 2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Kellers' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'KLEMMS' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Krolls' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Marbles' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Murakamis' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'NaOh' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Nickel' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Nital-2' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Nital-3' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Nital-5' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Nital-8' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Oberhoffers' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Picral' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'TI-AP-16' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Vilellas' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Waterless Kallings' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Weck''s' ON CONFLICT DO NOTHING;

INSERT INTO consumables_etchants (consumable_id)
SELECT id FROM consumables WHERE item_id = 'Winsteards' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'UC2-1000-64' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'UC2-1000-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'PCC-7500-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'PCC-7500-128' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'PCC-7500-640' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'PCC-5000-32' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'AIR-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_cleaning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'URE-1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RA20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RA30' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RB10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RB20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RC10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RD10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RE10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RF10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RG10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RG20' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RH10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RK10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RL10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RM10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RP10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RR10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RS10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'rockwell'
FROM consumables WHERE item_id = 'RV10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S15N10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S30N10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S45N10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S15T10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S30T10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S45T10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S15W10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S30W10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S45W10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S15X10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S30X10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S45X10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S15Y10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S30Y10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'superficial'
FROM consumables WHERE item_id = 'S45Y10' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20101' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20201' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20301' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20401' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'P20450' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'A1010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'A1020' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'A1030' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'A1040' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'rockwell'
FROM consumables WHERE item_id = 'A1050' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B3000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B2000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B1500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B1000' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B0500' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B0250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'test-block', 'brinell'
FROM consumables WHERE item_id = 'B0187' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'brinell'
FROM consumables WHERE item_id = 'P3032' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'brinell'
FROM consumables WHERE item_id = 'P3031' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'brinell'
FROM consumables WHERE item_id = 'P3020' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'indenter', 'brinell'
FROM consumables WHERE item_id = 'P3132' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'indenter', 'brinell'
FROM consumables WHERE item_id = 'P3131' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'indenter', 'brinell'
FROM consumables WHERE item_id = 'P3134' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'vickers'
FROM consumables WHERE item_id = 'MV010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'vickers'
FROM consumables WHERE item_id = 'MV020' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'knoop'
FROM consumables WHERE item_id = 'MK010' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'vickers'
FROM consumables WHERE item_id = 'P1110' ON CONFLICT DO NOTHING;

INSERT INTO consumables_hardness_testing (
  consumable_id, product_type, test_type
) SELECT id, 'anvil', 'knoop'
FROM consumables WHERE item_id = 'P1120' ON CONFLICT DO NOTHING;
