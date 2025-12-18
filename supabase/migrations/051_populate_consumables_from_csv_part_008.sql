-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 8 of 16
-- Statements 1401 to 1600

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1005-06E',
  'NANO2-1005-06E',
  'NANO2-1005-06E',
  'nano2-1005-06e',
  '0.30 um Electronics Grade Deagglomerated Alumina Polishing Suspension (6 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  62.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1005-16E',
  'NANO2-1005-16E',
  'NANO2-1005-16E',
  'nano2-1005-16e',
  '0.30 um Electronics Grade Deagglomerated Alumina Polishing Suspension (16 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  150.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1005-32E',
  'NANO2-1005-32E',
  'NANO2-1005-32E',
  'nano2-1005-32e',
  '0.30 um Electronics Grade Deagglomerated Alumina Polishing Suspension (32 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  270.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1005-128E',
  'NANO2-1005-128E',
  'NANO2-1005-128E',
  'nano2-1005-128e',
  '0.30 um Electronics Grade Deagglomerated Alumina Polishing Suspension (1 gallon)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  975.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1003-06E',
  'NANO2-1003-06E',
  'NANO2-1003-06E',
  'nano2-1003-06e',
  '1 um Electronics Grade Deagglomerated Alumina Polishing Suspension (6 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  62.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1003-16E',
  'NANO2-1003-16E',
  'NANO2-1003-16E',
  'nano2-1003-16e',
  '1 um Electronics Grade Deagglomerated Alumina Polishing Suspension (16 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  150.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1003-32E',
  'NANO2-1003-32E',
  'NANO2-1003-32E',
  'nano2-1003-32e',
  '1 um Electronics Grade Deagglomerated Alumina Polishing Suspension (32 oz)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  270.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1003-128E',
  'NANO2-1003-128E',
  'NANO2-1003-128E',
  'nano2-1003-128e',
  '1 um Electronics Grade Deagglomerated Alumina Polishing Suspension (1 gallon)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  975.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1010-06E',
  'NANO2-1010-06E',
  'NANO2-1010-06E',
  'nano2-1010-06e',
  '0.05 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (1 lb)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  62.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1010-16E',
  'NANO2-1010-16E',
  'NANO2-1010-16E',
  'nano2-1010-16e',
  '0.05 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (5 lb)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  150.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1010-32E',
  'NANO2-1010-32E',
  'NANO2-1010-32E',
  'nano2-1010-32e',
  '0.3 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (1 lb)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  270.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO2-1010-128E',
  'NANO2-1010-128E',
  'NANO2-1010-128E',
  'nano2-1010-128e',
  '0.3 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (5 lb)',
  'grinding-polishing',
  'Electronics Grade Deagglomerated Alumina Suspension',
  true,
  975.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALPHA-1005-01',
  'ALPHA-1005-01',
  'ALPHA-1005-01',
  'alpha-1005-01',
  '1 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (1 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  110.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALPHA-1005-05',
  'ALPHA-1005-05',
  'ALPHA-1005-05',
  'alpha-1005-05',
  '1 um Electronics Grade Deagglomerated Alumina Powder for Electronic and Soft Materials (5 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  495.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-1005-01E',
  'ALD-1005-01E',
  'ALD-1005-01E',
  'ald-1005-01e',
  '0.05 um Deagglomerated Colloidal Alumina Powder (1 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  220.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-1005-05E',
  'ALD-1005-05E',
  'ALD-1005-05E',
  'ald-1005-05e',
  '0.05 um Deagglomerated Colloidal Alumina Powder  (5 lbs)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  1000.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0103-01E',
  'ALD-0103-01E',
  'ALD-0103-01E',
  'ald-0103-01e',
  '0.30 um Deagglomerated Colloidal Alumina Powder (1 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  220.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0103-05E',
  'ALD-0103-05E',
  'ALD-0103-05E',
  'ald-0103-05e',
  '0.30 um Deagglomerated Colloidal Alumina Powder  (5 lbs)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  1000.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0110-01E',
  'ALD-0110-01E',
  'ALD-0110-01E',
  'ald-0110-01e',
  '0.30 um Deagglomerated Colloidal Alumina Powder (high density) (1 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  220.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0110-05E',
  'ALD-0110-05E',
  'ALD-0110-05E',
  'ald-0110-05e',
  '0.30 um Deagglomerated Colloidal Alumina Powder (high density) (5 lb)',
  'grinding-polishing',
  'Alumina Powders',
  true,
  1000.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-1005-01',
  'ALD-1005-01',
  'ALD-1005-01',
  'ald-1005-01',
  '0.50 um Colloidal Alumina Powder (1 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-1005-05',
  'ALD-1005-05',
  'ALD-1005-05',
  'ald-1005-05',
  '0.50 um Colloidal Alumina Powder  (5 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  495.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0103-01',
  'ALD-0103-01',
  'ALD-0103-01',
  'ald-0103-01',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALD-0103-05',
  'ALD-0103-05',
  'ALD-0103-05',
  'ald-0103-05',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  420.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0103-01',
  'ALR-0103-01',
  'ALR-0103-01',
  'alr-0103-01',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  68.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0103-05',
  'ALR-0103-05',
  'ALR-0103-05',
  'alr-0103-05',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  290.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0105-01',
  'ALR-0105-01',
  'ALR-0105-01',
  'alr-0105-01',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  70.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0105-05',
  'ALR-0105-05',
  'ALR-0105-05',
  'alr-0105-05',
  NULL,
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  310.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0110-01',
  'ALR-0110-01',
  'ALR-0110-01',
  'alr-0110-01',
  '1 um Alumina Powder  (1 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  70.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0110-05',
  'ALR-0110-05',
  'ALR-0110-05',
  'alr-0110-05',
  '1 um Alumina Powder (5 lbs)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  310.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0130-01',
  'ALR-0130-01',
  'ALR-0130-01',
  'alr-0130-01',
  '3 um Alumina Powder  (1 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  32.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0130-05',
  'ALR-0130-05',
  'ALR-0130-05',
  'alr-0130-05',
  '3 um Alumina Powder (5 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0150-01',
  'ALR-0150-01',
  'ALR-0150-01',
  'alr-0150-01',
  '5 um Alumina Powder (1 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  32.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0150-05',
  'ALR-0150-05',
  'ALR-0150-05',
  'alr-0150-05',
  '5 um Alumina Powder  (5 lb)',
  'grinding-polishing',
  'Fine Alumina Powders',
  true,
  100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-0190-05',
  'ALR-0190-05',
  'ALR-0190-05',
  'alr-0190-05',
  '9 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  64.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-1200-05',
  'ALR-1200-05',
  'ALR-1200-05',
  'alr-1200-05',
  '12 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-1500-05',
  'ALR-1500-05',
  'ALR-1500-05',
  'alr-1500-05',
  '15 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-2000-05',
  'ALR-2000-05',
  'ALR-2000-05',
  'alr-2000-05',
  '20 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-3000-05',
  'ALR-3000-05',
  'ALR-3000-05',
  'alr-3000-05',
  '30 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALR-4000-05',
  'ALR-4000-05',
  'ALR-4000-05',
  'alr-4000-05',
  '40 um alumina powder (5 lbs)',
  'grinding-polishing',
  'Coarse Alumina Powders',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100A-16',
  'SI-100A-16',
  'SI-100A-16',
  'si-100a-16',
  'SIAMAT Colloidal Silica Polishing Abrasive - 0.06 um (16 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  29.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100A-32',
  'SI-100A-32',
  'SI-100A-32',
  'si-100a-32',
  'SIAMAT Colloidal Silica Polishing Abrasive - 0.06 um (32 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  49.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100A-64',
  'SI-100A-64',
  'SI-100A-64',
  'si-100a-64',
  'SIAMAT Colloidal Silica Polishing Abrasive - 0.06 um (1/2 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  82.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100A-128',
  'SI-100A-128',
  'SI-100A-128',
  'si-100a-128',
  'SIAMAT Colloidal Silica Polishing Abrasive - 0.06 um (1 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  140.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100A-640',
  'SI-100A-640',
  'SI-100A-640',
  'si-100a-640',
  'SIAMAT Colloidal Silica Polishing Abrasive - 0.06 um (5 gallons)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  625.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI2-100A-16',
  'SI2-100A-16',
  'SI2-100A-16',
  'si2-100a-16',
  'SIAMAT 2 Low-Crystallizing Colloidal Silica Polishing Abrasive - 0.02 um (16 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  29.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI2-100A-32',
  'SI2-100A-32',
  'SI2-100A-32',
  'si2-100a-32',
  'SIAMAT 2 Low-Crystallizing Colloidal Silica Polishing Abrasive - 0.02 um (32 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  49.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI2-100A-64',
  'SI2-100A-64',
  'SI2-100A-64',
  'si2-100a-64',
  'SIAMAT 2 Low-Crystallizing Colloidal Silica Polishing Abrasive - 0.02 um (1/2 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  82.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI2-100A-128',
  'SI2-100A-128',
  'SI2-100A-128',
  'si2-100a-128',
  'SIAMAT 2 Low-Crystallizing Colloidal Silica Polishing Abrasive - 0.02 um (1 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  140.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI2-100A-640',
  'SI2-100A-640',
  'SI2-100A-640',
  'si2-100a-640',
  'SIAMAT 2 Low-Crystallizing Colloidal Silica Polishing Abrasive - 0.02 um (5 gallons)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  625.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100B-16',
  'SI-100B-16',
  'SI-100B-16',
  'si-100b-16',
  'SIAMAT Blue Colloidal Silica Final Polishing Abrasive - 0.06 um (16 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  29.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100B-32',
  'SI-100B-32',
  'SI-100B-32',
  'si-100b-32',
  'SIAMAT Blue Colloidal Silica Final Polishing Abrasive - 0.06 um (32 oz)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  49.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100B-64',
  'SI-100B-64',
  'SI-100B-64',
  'si-100b-64',
  'SIAMAT Blue Colloidal Silica Final Polishing Abrasive - 0.06 um (1/2 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  82.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100B-128',
  'SI-100B-128',
  'SI-100B-128',
  'si-100b-128',
  'SIAMAT Blue Colloidal Silica Final Polishing Abrasive - 0.06 um (1 gallon)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  140.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SI-100B-640',
  'SI-100B-640',
  'SI-100B-640',
  'si-100b-640',
  'SIAMAT Blue Colloidal Silica Final Polishing Abrasive - 0.06 um (5 gallons)',
  'grinding-polishing',
  'Colloidal Silica Polishing Abrasive',
  true,
  625.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-1P',
  'CeO2-1P',
  'CeO2-1P',
  'ceo2-1p',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  65.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-5P',
  'CeO2-5P',
  'CeO2-5P',
  'ceo2-5p',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  295.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-6S',
  'CeO2-6S',
  'CeO2-6S',
  'ceo2-6s',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  45.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-16S',
  'CeO2-16S',
  'CeO2-16S',
  'ceo2-16s',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  95.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-32S',
  'CeO2-32S',
  'CeO2-32S',
  'ceo2-32s',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-64S',
  'CeO2-64S',
  'CeO2-64S',
  'ceo2-64s',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  325.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CeO2-1GS',
  'CeO2-1GS',
  'CeO2-1GS',
  'ceo2-1gs',
  NULL,
  'grinding-polishing',
  'Cerium Oxide',
  true,
  650.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'UC2-1000-32',
  'UC2-1000-32',
  'UC2-1000-32',
  'uc2-1000-32',
  'ULTRACLEAN 2 Ultrasonic degreasing/ cleaning solution (32 oz)',
  'cleaning',
  NULL,
  true,
  18.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'UC2-1000-64',
  'UC2-1000-64',
  'UC2-1000-64',
  'uc2-1000-64',
  'ULTRACLEAN 2 Ultrasonic degreasing/ cleaning solution (1/2 gallon)',
  'cleaning',
  NULL,
  true,
  35.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'UC2-1000-128',
  'UC2-1000-128',
  'UC2-1000-128',
  'uc2-1000-128',
  'ULTRACLEAN 2 Ultrasonic degreasing/ cleaning solution (128 oz)',
  'cleaning',
  NULL,
  true,
  65.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PCC-7500-32',
  'PCC-7500-32',
  'PCC-7500-32',
  'pcc-7500-32',
  'IPA Anti-corrosion Additive (32 oz)',
  'cleaning',
  NULL,
  true,
  24.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PCC-7500-128',
  'PCC-7500-128',
  'PCC-7500-128',
  'pcc-7500-128',
  'Anti-corrosion Additive (32 oz)',
  'cleaning',
  NULL,
  true,
  75.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PCC-7500-640',
  'PCC-7500-640',
  'PCC-7500-640',
  'pcc-7500-640',
  'ULTRACLEAN cleaning solution (32 oz)',
  'cleaning',
  NULL,
  true,
  195.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PCC-5000-32',
  'PCC-5000-32',
  'PCC-5000-32',
  'pcc-5000-32',
  'ULTRACLEAN cleaning solution (128 oz)',
  'cleaning',
  NULL,
  true,
  35.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'AIR-1000',
  'AIR-1000',
  'AIR-1000',
  'air-1000',
  'Compressed non-flammable gas (10 oz)',
  'cleaning',
  NULL,
  true,
  14.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'URE-1000',
  'URE-1000',
  'URE-1000',
  'ure-1000',
  'Polyurethane clear protective coating spray (11 oz)',
  'cleaning',
  NULL,
  true,
  30.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RA10',
  'RA10',
  'RA10',
  'ra10',
  'A-Scale, C diamond, 60 kg, A60-A84, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  160.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RA20',
  'RA20',
  'RA20',
  'ra20',
  'A-Scale, C diamond, 60 kg, A20-A59, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  160.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RA30',
  'RA30',
  'RA30',
  'ra30',
  'A-Scale, A diamond (carbide), 60 kg, A88 & up, Carbide Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  510.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RB10',
  'RB10',
  'RB10',
  'rb10',
  'B-Scale, 1/16-inch ball, 100 kg, B10-B92, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RB20',
  'RB20',
  'RB20',
  'rb20',
  'B-Scale, 1/16-inch ball, 100 kg, B90-B130, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RC10',
  'RC10',
  'RC10',
  'rc10',
  'C-Scale, C Diamond, 150 kg, All, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RD10',
  'RD10',
  'RD10',
  'rd10',
  'D-Scale, C Diamond, 100 kg, All, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RE10',
  'RE10',
  'RE10',
  're10',
  'E-Scale, 1/8-inch ball, 100 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RF10',
  'RF10',
  'RF10',
  'rf10',
  'F-Scale, 1/16-inch ball, 60 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RG10',
  'RG10',
  'RG10',
  'rg10',
  'G-Scale, 1/16-inch ball, 150 kg, G82-91, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RG20',
  'RG20',
  'RG20',
  'rg20',
  'G-Scale, 1/16-inch ball, 150 kg, >G66, Steel Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RH10',
  'RH10',
  'RH10',
  'rh10',
  'H-Scale, 1/8-inch ball, 60 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RK10',
  'RK10',
  'RK10',
  'rk10',
  'K-Scale, 1/8-inch ball, 150 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RL10',
  'RL10',
  'RL10',
  'rl10',
  'L-Scale, 1/4-inch ball, 60 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RM10',
  'RM10',
  'RM10',
  'rm10',
  'M-Scale, 1/4-inch ball, 100 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RP10',
  'RP10',
  'RP10',
  'rp10',
  'P-Scale, 1/4-inch ball, 150 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RR10',
  'RR10',
  'RR10',
  'rr10',
  'R-Scale, 1/2-inch ball, 60 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RS10',
  'RS10',
  'RS10',
  'rs10',
  'S-Scale, 1/2-inch ball, 100 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RV10',
  'RV10',
  'RV10',
  'rv10',
  'V-Scale, 1/2-inch ball, 150 kg, All, Brass Rockwell hardness test block',
  'hardness-testing',
  'Rockwell',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S15N10',
  'S15N10',
  'S15N10',
  's15n10',
  '15 N Scale, N Diamond, 15 kg, All, Steel, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S30N10',
  'S30N10',
  'S30N10',
  's30n10',
  '30 N Scale, N Diamond, 30 kg, All, Steel, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S45N10',
  'S45N10',
  'S45N10',
  's45n10',
  '45 N Scale, N Diamond, 45 kg, All, Steel, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S15T10',
  'S15T10',
  'S15T10',
  's15t10',
  '15 T Scale, 1/16-inch Ball, 15 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S30T10',
  'S30T10',
  'S30T10',
  's30t10',
  '30 T Scale, 1/16-inch Ball, 30 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S45T10',
  'S45T10',
  'S45T10',
  's45t10',
  '45 T Scale, 1/16-inch Ball, 45 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S15W10',
  'S15W10',
  'S15W10',
  's15w10',
  '15 W Scale, 1/8-inch Ball, 15 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S30W10',
  'S30W10',
  'S30W10',
  's30w10',
  '30 W Scale, 1/8-inch Ball, 3015 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S45W10',
  'S45W10',
  'S45W10',
  's45w10',
  '45 W Scale, 1/8-inch Ball, 45 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S15X10',
  'S15X10',
  'S15X10',
  's15x10',
  '15 X Scale, 1/4-inch Ball, 15 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S30X10',
  'S30X10',
  'S30X10',
  's30x10',
  '30 X Scale, 1/4-inch Ball, 30 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S45X10',
  'S45X10',
  'S45X10',
  's45x10',
  '45 X Scale, 1/4-inch Ball, 45 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S15Y10',
  'S15Y10',
  'S15Y10',
  's15y10',
  '15 Y Scale, 1/2-inch Ball, 15 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S30Y10',
  'S30Y10',
  'S30Y10',
  's30y10',
  '30 Y Scale, 1/2-inch Ball, 30 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'S45Y10',
  'S45Y10',
  'S45Y10',
  's45y10',
  '45 Y Scale, 1/2-inch Ball, 45 kg, All, Brass, Superficial hardness test blocks',
  'hardness-testing',
  'Superficial',
  true,
  175.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20101',
  'P20101',
  'P20101',
  'p20101',
  '1/16-inch Rockwell Ball Penetrator Unit Indentron Certified',
  'hardness-testing',
  'Rockwell',
  true,
  500.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20150',
  'P20150',
  'P20150',
  'p20150',
  '1/16-inch Rockwell Carbide Ball Certified',
  'hardness-testing',
  'Rockwell',
  true,
  30.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20201',
  'P20201',
  'P20201',
  'p20201',
  '1/8-inch Rockwell Ball Penetrator Unit Indentron Certified',
  'hardness-testing',
  'Rockwell',
  true,
  360.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20250',
  'P20250',
  'P20250',
  'p20250',
  '1/8-inch Rockwell Carbide Ball Certified',
  'hardness-testing',
  'Rockwell',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20301',
  'P20301',
  'P20301',
  'p20301',
  '1/4-inch Rockwell Ball Penetrator Unit Indentron Certified',
  'hardness-testing',
  'Rockwell',
  true,
  650.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20350',
  'P20350',
  'P20350',
  'p20350',
  '1/4-inch Rockwell Carbide Ball Certified',
  'hardness-testing',
  'Rockwell',
  true,
  60.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20401',
  'P20401',
  'P20401',
  'p20401',
  '1/2-inch Rockwell Ball Penetrator Unit Indentron Certified',
  'hardness-testing',
  'Rockwell',
  true,
  490.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P20450',
  'P20450',
  'P20450',
  'p20450',
  '1/2-inch Rockwell Carbide Ball Certified',
  'hardness-testing',
  'Rockwell',
  true,
  85.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'A1010',
  'A1010',
  'A1010',
  'a1010',
  'Pedestal Spot (1/4-inch) Rockwell Anvil',
  'hardness-testing',
  'Anvils',
  true,
  295.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'A1020',
  'A1020',
  'A1020',
  'a1020',
  '1-1/2-inch Flat Rockwell Anvil',
  'hardness-testing',
  'Anvils',
  true,
  295.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'A1030',
  'A1030',
  'A1030',
  'a1030',
  '2-1/2-inch Flat Rockwell Anvil',
  'hardness-testing',
  'Anvils',
  true,
  340.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'A1040',
  'A1040',
  'A1040',
  'a1040',
  'Shallow V Rockwell Anvil',
  'hardness-testing',
  'Anvils',
  true,
  340.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'A1050',
  'A1050',
  'A1050',
  'a1050',
  'Standard V Rockwell Anvil',
  'hardness-testing',
  'Anvils',
  true,
  340.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B3000',
  'B3000',
  'B3000',
  'b3000',
  '3000 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B2000',
  'B2000',
  'B2000',
  'b2000',
  '2000 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B1500',
  'B1500',
  'B1500',
  'b1500',
  '1500 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B1000',
  'B1000',
  'B1000',
  'b1000',
  '1000 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B0500',
  'B0500',
  'B0500',
  'b0500',
  '500 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B0250',
  'B0250',
  'B0250',
  'b0250',
  '250 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'B0187',
  'B0187',
  'B0187',
  'b0187',
  '187.5 kg load, 10 mm ball Brinell test block for all hardness ranges',
  'hardness-testing',
  'Brinell',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3032',
  'P3032',
  'P3032',
  'p3032',
  '2.5 mm Brinell carbide balls (each) - certified',
  'hardness-testing',
  'Brinell',
  true,
  45.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3031',
  'P3031',
  'P3031',
  'p3031',
  '5 mm Brinell carbide balls (each) - certified',
  'hardness-testing',
  'Brinell',
  true,
  75.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3020',
  'P3020',
  'P3020',
  'p3020',
  '10 mm Brinell carbide balls (each) - certified',
  'hardness-testing',
  'Brinell',
  true,
  90.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3132',
  'P3132',
  'P3132',
  'p3132',
  '2.5 mm Brinell Indenter with carbide ball - certified',
  'hardness-testing',
  'Brinell',
  true,
  525.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3131',
  'P3131',
  'P3131',
  'p3131',
  '5 mm Brinell Indenter with carbide ball - certified',
  'hardness-testing',
  'Brinell',
  true,
  625.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P3134',
  'P3134',
  'P3134',
  'p3134',
  '10 mm Brinell Indenter with carbide ball - certified',
  'hardness-testing',
  'Brinell',
  true,
  775.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MV010',
  'MV010',
  'MV010',
  'mv010',
  'Vickers (1 gram to 1000 grams) for all microhardness hardness ranges',
  'hardness-testing',
  'Microhardness',
  true,
  775.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MV020',
  'MV020',
  'MV020',
  'mv020',
  'Heavy Load Vickers (1 kg to 50 kg)',
  'hardness-testing',
  'Microhardness',
  true,
  775.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MK010',
  'MK010',
  'MK010',
  'mk010',
  'Knoop (1 gram to 1000 grams) for all microhardness hardness ranges',
  'hardness-testing',
  'Microhardness',
  true,
  775.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P1110',
  'P1110',
  'P1110',
  'p1110',
  'Vickers microhardness Diamond Penetrator',
  'hardness-testing',
  'Microhardness',
  true,
  1800.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'P1120',
  'P1120',
  'P1120',
  'p1120',
  'Knoop microhardness Diamond Penetrator',
  'hardness-testing',
  'Microhardness',
  true,
  1800.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Adlers',
  'Adlers',
  'Adlers',
  'adlers',
  'Adler''s Etchant (300 series Austenitic stainless steels)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Ammonium Persulfate',
  'Ammonium Persulfate',
  'Ammonium Persulfate',
  'ammonium-persulfate',
  'Ammonium persulfate etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ASTM. No. 30',
  'ASTM. No. 30',
  'ASTM. No. 30',
  'astm-no-30',
  'ASTM No. 30 (Copper etchant)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ASTM. No. 157',
  'ASTM. No. 157',
  'ASTM. No. 157',
  'astm-no-157',
  'ASTM No. 157 etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Beraha''s',
  'Beraha''s',
  'Beraha''s',
  'beraha-s',
  'Beraha''s etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Carpenters',
  'Carpenters',
  'Carpenters',
  'carpenters',
  'Carpenters (300 series stainless steels)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Copper No.1',
  'Copper No.1',
  'Copper No.1',
  'copper-no-1',
  'Copper No. 1 (Copper and Brass (Nitric acid and Dl water)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Copper No.2',
  'Copper No.2',
  'Copper No.2',
  'copper-no-2',
  'Copper No. 2 (copper and brass (HCl and ferric chloride)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CU-PASS-SOL',
  'CU-PASS-SOL',
  'CU-PASS-SOL',
  'cu-pass-sol',
  'Copper Sulfate Passivation Reagent',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Dichromate',
  'Dichromate',
  'Dichromate',
  'dichromate',
  'Dichromate etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Fry''s',
  'Fry''s',
  'Fry''s',
  'fry-s',
  'Fry''s Reagent (Precipitation hardened stainless steel)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Inconel',
  'Inconel',
  'Inconel',
  'inconel',
  'Inconel etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Kallings No 2',
  'Kallings No 2',
  'Kallings No 2',
  'kallings-no-2',
  'Kallings No. 2 Reagent (Martensitic 400 stainless steels)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Kellers',
  'Kellers',
  'Kellers',
  'kellers',
  'Kellers Reagent (Most common etch for aluminum alloys)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'KLEMMS',
  'KLEMMS',
  'KLEMMS',
  'klemms',
  'Klemms Reagent (Stain etch for brass)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Krolls',
  'Krolls',
  'Krolls',
  'krolls',
  'Krolls Reagent (Most common etch for titanium alloys)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Marbles',
  'Marbles',
  'Marbles',
  'marbles',
  'Marbles Reagent (Nickel, nickel-iron alloys)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Murakamis',
  'Murakamis',
  'Murakamis',
  'murakamis',
  'Murakami''s Reagent (Chromium alloys)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NaOh',
  'NaOh',
  'NaOh',
  'naoh',
  'NaOH etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Nickel',
  'Nickel',
  'Nickel',
  'nickel',
  'Nickel etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Nital-2',
  'Nital-2',
  'Nital-2',
  'nital-2',
  '2% Nital Etchant (Most common for non-heat treated or welded steel)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Nital-3',
  'Nital-3',
  'Nital-3',
  'nital-3',
  '3% Nital Etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Nital-5',
  'Nital-5',
  'Nital-5',
  'nital-5',
  '5% Nital Etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Nital-8',
  'Nital-8',
  'Nital-8',
  'nital-8',
  '8% Nital Etchant',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Oberhoffers',
  'Oberhoffers',
  'Oberhoffers',
  'oberhoffers',
  'Oberhoffers reagent',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Picral',
  'Picral',
  'Picral',
  'picral',
  'Picral Etchant (Heat treated steels)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'TI-AP-16',
  'TI-AP-16',
  'TI-AP-16',
  'ti-ap-16',
  'Titanium attact polish',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Vilellas',
  'Vilellas',
  'Vilellas',
  'vilellas',
  'Vilella''s Reagent (Most common for carburized steel)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Waterless Kallings',
  'Waterless Kallings',
  'Waterless Kallings',
  'waterless-kallings',
  'Waterless Kalling''s (Iron and nickel base alloys)',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Weck''s',
  'Weck''s',
  'Weck''s',
  'weck-s',
  'Weck''s Etch',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'Winsteards',
  'Winsteards',
  'Winsteards',
  'winsteards',
  'Winsteards reagent',
  'etchants',
  NULL,
  true,
  120.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'abrasive', NULL, 
  'silicon-carbide/resin-rubber'
FROM consumables WHERE item_id = 'MAX-C250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-D250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-E250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-I250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'abrasive', NULL, 
  NULL
FROM consumables WHERE item_id = 'MAX-VHS250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'MAX-VHS2-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  'alumina/resin-rubber'
FROM consumables WHERE item_id = 'MAX-A300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  'silicon-carbide/resin-rubber'
FROM consumables WHERE item_id = 'MAX-C300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-D300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-E300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-I300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'abrasive', NULL, 
  NULL
FROM consumables WHERE item_id = 'MAX-VHS300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'MAX-VHS2-300' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'alumina/resin-rubber'
FROM consumables WHERE item_id = 'MAX-A350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'silicon-carbide/resin-rubber'
FROM consumables WHERE item_id = 'MAX-C350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-D350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-E350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-I350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-VHS350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'MAX-VHS2-350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  'alumina/resin-rubber'
FROM consumables WHERE item_id = 'MAX-A400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  'silicon-carbide/resin-rubber'
FROM consumables WHERE item_id = 'MAX-C400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-D400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-E400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  'alumina/resin'
FROM consumables WHERE item_id = 'MAX-I400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'abrasive', NULL, 
  NULL
FROM consumables WHERE item_id = 'MAX-VHS400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (consumable_id)
SELECT id FROM consumables WHERE item_id = 'MAX-VHS2-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 254, 10, 
  'diamond', '180', 
  'diamond'
FROM consumables WHERE item_id = 'DMAX-250' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 304, 12, 
  'diamond', '180', 
  'diamond'
FROM consumables WHERE item_id = 'DMAX-305' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 355, 14, 
  'diamond', '180', 
  'diamond'
FROM consumables WHERE item_id = 'DMAX-350' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 406, 16, 
  'diamond', '180', 
  'diamond'
FROM consumables WHERE item_id = 'DMAX-400' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 152, 6, 
  'wafering', NULL, 
  NULL
FROM consumables WHERE item_id = 'MAX-D150' ON CONFLICT DO NOTHING;

INSERT INTO consumables_sectioning (
  consumable_id, blade_size_mm, blade_size_inches, blade_type, grit_size, material_composition
) SELECT id, 177, 7, 
  'wafering', NULL, 
  NULL
FROM consumables WHERE item_id = 'MAX-7000S' ON CONFLICT DO NOTHING;
