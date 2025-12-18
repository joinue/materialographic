-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 5 of 16
-- Statements 801 to 1000

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DA-9P12',
  'DA-9P12',
  'DA-9P12',
  'da-9p12',
  '12-inch 9 micron Diamond Lapping Film (plain-backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  230.0,
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
  'DA-15P12',
  'DA-15P12',
  'DA-15P12',
  'da-15p12',
  '12-inch 15 micron Diamond Lapping Film (plain-backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  230.0,
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
  'DA-30P12',
  'DA-30P12',
  'DA-30P12',
  'da-30p12',
  '12-inch 30 micron Diamond Lapping Film (plain-backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  275.0,
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
  'DA-45P12',
  'DA-45P12',
  'DA-45P12',
  'da-45p12',
  '12-inch 45 micron Diamond Lapping Film (plain-backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  275.0,
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
  'PDA-01P8',
  'PDA-01P8',
  'PDA-01P8',
  'pda-01p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-025P8',
  'PDA-025P8',
  'PDA-025P8',
  'pda-025p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-05P8',
  'PDA-05P8',
  'PDA-05P8',
  'pda-05p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-1P8',
  'PDA-1P8',
  'PDA-1P8',
  'pda-1p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-3P8',
  'PDA-3P8',
  'PDA-3P8',
  'pda-3p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-6P8',
  'PDA-6P8',
  'PDA-6P8',
  'pda-6p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-9P8',
  'PDA-9P8',
  'PDA-9P8',
  'pda-9p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-15P8',
  'PDA-15P8',
  'PDA-15P8',
  'pda-15p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  125.0,
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
  'PDA-30P8',
  'PDA-30P8',
  'PDA-30P8',
  'pda-30p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  199.5,
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
  'PDA-45P8',
  'PDA-45P8',
  'PDA-45P8',
  'pda-45p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  199.5,
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
  'PDA-01P10',
  'PDA-01P10',
  'PDA-01P10',
  'pda-01p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-025P10',
  'PDA-025P10',
  'PDA-025P10',
  'pda-025p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-05P10',
  'PDA-05P10',
  'PDA-05P10',
  'pda-05p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-1P10',
  'PDA-1P10',
  'PDA-1P10',
  'pda-1p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-3P10',
  'PDA-3P10',
  'PDA-3P10',
  'pda-3p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-6P10',
  'PDA-6P10',
  'PDA-6P10',
  'pda-6p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-9P10',
  'PDA-9P10',
  'PDA-9P10',
  'pda-9p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-15P10',
  'PDA-15P10',
  'PDA-15P10',
  'pda-15p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  185.0,
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
  'PDA-30P10',
  'PDA-30P10',
  'PDA-30P10',
  'pda-30p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-45P10',
  'PDA-45P10',
  'PDA-45P10',
  'pda-45p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-01P12',
  'PDA-01P12',
  'PDA-01P12',
  'pda-01p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-025P12',
  'PDA-025P12',
  'PDA-025P12',
  'pda-025p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-05P12',
  'PDA-05P12',
  'PDA-05P12',
  'pda-05p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-1P12',
  'PDA-1P12',
  'PDA-1P12',
  'pda-1p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-3P12',
  'PDA-3P12',
  'PDA-3P12',
  'pda-3p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-6P12',
  'PDA-6P12',
  'PDA-6P12',
  'pda-6p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-9P12',
  'PDA-9P12',
  'PDA-9P12',
  'pda-9p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-15P12',
  'PDA-15P12',
  'PDA-15P12',
  'pda-15p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  225.0,
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
  'PDA-30P12',
  'PDA-30P12',
  'PDA-30P12',
  'pda-30p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  275.0,
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
  'PDA-45P12',
  'PDA-45P12',
  'PDA-45P12',
  'pda-45p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  275.0,
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
  'DAA-01P8',
  'DAA-01P8',
  'DAA-01P8',
  'daa-01p8',
  '8-inch 0.10 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-025P8',
  'DAA-025P8',
  'DAA-025P8',
  'daa-025p8',
  '8-inch 0.25 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-05P8',
  'DAA-05P8',
  'DAA-05P8',
  'daa-05p8',
  '8-inch 0.50 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-1P8',
  'DAA-1P8',
  'DAA-1P8',
  'daa-1p8',
  '8-inch 1 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-3P8',
  'DAA-3P8',
  'DAA-3P8',
  'daa-3p8',
  '8-inch 3 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-6P8',
  'DAA-6P8',
  'DAA-6P8',
  'daa-6p8',
  '8-inch 6 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-9P8',
  'DAA-9P8',
  'DAA-9P8',
  'daa-9p8',
  '8-inch 9 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-15P8',
  'DAA-15P8',
  'DAA-15P8',
  'daa-15p8',
  '8-inch 15 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-30P8',
  'DAA-30P8',
  'DAA-30P8',
  'daa-30p8',
  '8-inch 30 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-45P8',
  'DAA-45P8',
  'DAA-45P8',
  'daa-45p8',
  '8-inch 45 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-01P10',
  'DAA-01P10',
  'DAA-01P10',
  'daa-01p10',
  '10-inch 0.10 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-025P10',
  'DAA-025P10',
  'DAA-025P10',
  'daa-025p10',
  '10-inch 0.25 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-05P10',
  'DAA-05P10',
  'DAA-05P10',
  'daa-05p10',
  '10-inch 0.50 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-1P10',
  'DAA-1P10',
  'DAA-1P10',
  'daa-1p10',
  '10-inch 1 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-3P10',
  'DAA-3P10',
  'DAA-3P10',
  'daa-3p10',
  '10-inch 3 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-6P10',
  'DAA-6P10',
  'DAA-6P10',
  'daa-6p10',
  '10-inch 6 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-9P10',
  'DAA-9P10',
  'DAA-9P10',
  'daa-9p10',
  '10-inch 9 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-15P10',
  'DAA-15P10',
  'DAA-15P10',
  'daa-15p10',
  '10-inch 15 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'DAA-30P10',
  'DAA-30P10',
  'DAA-30P10',
  'daa-30p10',
  '10-inch 30 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-45P10',
  'DAA-45P10',
  'DAA-45P10',
  'daa-45p10',
  '10-inch 45 micron Diamond Lapping Film PSA (adhesive backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-01P12',
  'DAA-01P12',
  'DAA-01P12',
  'daa-01p12',
  '12-inch 0.10 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-025P12',
  'DAA-025P12',
  'DAA-025P12',
  'daa-025p12',
  '12-inch 0.25 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-05P12',
  'DAA-05P12',
  'DAA-05P12',
  'daa-05p12',
  '12-inch 0.50 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-1P12',
  'DAA-1P12',
  'DAA-1P12',
  'daa-1p12',
  '12-inch 1 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-3P12',
  'DAA-3P12',
  'DAA-3P12',
  'daa-3p12',
  '12-inch 3 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-6P12',
  'DAA-6P12',
  'DAA-6P12',
  'daa-6p12',
  '12-inch 6 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-9P12',
  'DAA-9P12',
  'DAA-9P12',
  'daa-9p12',
  '12-inch 9 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-15P12',
  'DAA-15P12',
  'DAA-15P12',
  'daa-15p12',
  '12-inch 15 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-30P12',
  'DAA-30P12',
  'DAA-30P12',
  'daa-30p12',
  '12-inch 30 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'DAA-45P12',
  'DAA-45P12',
  'DAA-45P12',
  'daa-45p12',
  '12-inch 45 micron Diamond Lapping Film PSA (adhesive backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'PDAA-01P8',
  'PDAA-01P8',
  'PDAA-01P8',
  'pdaa-01p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-025P8',
  'PDAA-025P8',
  'PDAA-025P8',
  'pdaa-025p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-05P8',
  'PDAA-05P8',
  'PDAA-05P8',
  'pdaa-05p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-1P8',
  'PDAA-1P8',
  'PDAA-1P8',
  'pdaa-1p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-3P8',
  'PDAA-3P8',
  'PDAA-3P8',
  'pdaa-3p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-6P8',
  'PDAA-6P8',
  'PDAA-6P8',
  'pdaa-6p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-9P8',
  'PDAA-9P8',
  'PDAA-9P8',
  'pdaa-9p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-15P8',
  'PDAA-15P8',
  'PDAA-15P8',
  'pdaa-15p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  145.0,
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
  'PDAA-30P8',
  'PDAA-30P8',
  'PDAA-30P8',
  'pdaa-30p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'PDAA-45P8',
  'PDAA-45P8',
  'PDAA-45P8',
  'pdaa-45p8',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  225.0,
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
  'PDAA-01P10',
  'PDAA-01P10',
  'PDAA-01P10',
  'pdaa-01p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-025P10',
  'PDAA-025P10',
  'PDAA-025P10',
  'pdaa-025p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-05P10',
  'PDAA-05P10',
  'PDAA-05P10',
  'pdaa-05p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-1P10',
  'PDAA-1P10',
  'PDAA-1P10',
  'pdaa-1p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-3P10',
  'PDAA-3P10',
  'PDAA-3P10',
  'pdaa-3p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-6P10',
  'PDAA-6P10',
  'PDAA-6P10',
  'pdaa-6p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-9P10',
  'PDAA-9P10',
  'PDAA-9P10',
  'pdaa-9p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-15P10',
  'PDAA-15P10',
  'PDAA-15P10',
  'pdaa-15p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  215.0,
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
  'PDAA-30P10',
  'PDAA-30P10',
  'PDAA-30P10',
  'pdaa-30p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  260.0,
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
  'PDAA-45P10',
  'PDAA-45P10',
  'PDAA-45P10',
  'pdaa-45p10',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  260.0,
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
  'PDAA-01P12',
  'PDAA-01P12',
  'PDAA-01P12',
  'pdaa-01p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-025P12',
  'PDAA-025P12',
  'PDAA-025P12',
  'pdaa-025p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-05P12',
  'PDAA-05P12',
  'PDAA-05P12',
  'pdaa-05p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-1P12',
  'PDAA-1P12',
  'PDAA-1P12',
  'pdaa-1p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-3P12',
  'PDAA-3P12',
  'PDAA-3P12',
  'pdaa-3p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-6P12',
  'PDAA-6P12',
  'PDAA-6P12',
  'pdaa-6p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-9P12',
  'PDAA-9P12',
  'PDAA-9P12',
  'pdaa-9p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-15P12',
  'PDAA-15P12',
  'PDAA-15P12',
  'pdaa-15p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
  true,
  265.0,
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
  'PDAA-30P12',
  'PDAA-30P12',
  'PDAA-30P12',
  'pdaa-30p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'PDAA-45P12',
  'PDAA-45P12',
  'PDAA-45P12',
  'pdaa-45p12',
  NULL,
  'grinding-polishing',
  'Diamond Lapping Films / PSA',
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
  'CMESH-2008',
  'CMESH-2008',
  'CMESH-2008',
  'cmesh-2008',
  '8-inch CERMESH metal mesh Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  105.0,
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
  'CMESH-2009',
  'CMESH-2009',
  'CMESH-2009',
  'cmesh-2009',
  '9-inch CERMESH metal mesh Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'CMESH-2010',
  'CMESH-2010',
  'CMESH-2010',
  'cmesh-2010',
  '10-inch CERMESH metal mesh Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  180.0,
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
  'CMESH-2012',
  'CMESH-2012',
  'CMESH-2012',
  'cmesh-2012',
  '12-inch CERMESH metal mesh Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'CMESH-2014',
  'CMESH-2014',
  'CMESH-2014',
  'cmesh-2014',
  '14-inch CERMESH metal mesh Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  300.0,
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
  'PP-6008',
  'PP-6008',
  'PP-6008',
  'pp-6008',
  '8-inch POLYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  72.0,
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
  'PP-6009',
  'PP-6009',
  'PP-6009',
  'pp-6009',
  '9-inch POLYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'PP-6010',
  'PP-6010',
  'PP-6010',
  'pp-6010',
  '10-inch POLYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'PP-6012',
  'PP-6012',
  'PP-6012',
  'pp-6012',
  '12-inch POLYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  125.0,
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
  'PP-6014',
  'PP-6014',
  'PP-6014',
  'pp-6014',
  '14-inch POLYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  180.0,
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
  'TP-5008',
  'TP-5008',
  'TP-5008',
  'tp-5008',
  '8-inch TEXPAN polishing pad w/PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'TP-5009',
  'TP-5009',
  'TP-5009',
  'tp-5009',
  '9-inch TEXPAN Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'TP-5010',
  'TP-5010',
  'TP-5010',
  'tp-5010',
  '10-inch TEXPAN Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'TP-5012',
  'TP-5012',
  'TP-5012',
  'tp-5012',
  '12-inch TEXPAN Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  132.0,
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
  'TP-5014',
  'TP-5014',
  'TP-5014',
  'tp-5014',
  '14-inch TEXPAN Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'BC2-8008',
  'BC2-8008',
  'BC2-8008',
  'bc2-8008',
  '8-inch Black Chem 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  142.0,
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
  'BC2-8009',
  'BC2-8009',
  'BC2-8009',
  'bc2-8009',
  '9-inch Black Chem 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'BC2-8010',
  'BC2-8010',
  'BC2-8010',
  'bc2-8010',
  '10-inch Black Chem 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  170.0,
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
  'BC2-8012',
  'BC2-8012',
  'BC2-8012',
  'bc2-8012',
  '12-inch Black Chem 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  225.0,
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
  'BC2-8014',
  'BC2-8014',
  'BC2-8014',
  'bc2-8014',
  '14-inch Black Chem 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  320.0,
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
  'DC2-3008',
  'DC2-3008',
  'DC2-3008',
  'dc2-3008',
  '8-inch DACRON II Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'DC2-3010',
  'DC2-3010',
  'DC2-3010',
  'dc2-3010',
  '10-inch DACRON II Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'DC2-3012',
  'DC2-3012',
  'DC2-3012',
  'dc2-3012',
  '12-inch DACRON II Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  172.5,
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
  'DC2-3014',
  'DC2-3014',
  'DC2-3014',
  'dc2-3014',
  '14-inch DACRON II Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  250.0,
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
  'NY-3008',
  'NY-3008',
  'NY-3008',
  'ny-3008',
  '8-inch NYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  74.0,
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
  'NY-3009',
  'NY-3009',
  'NY-3009',
  'ny-3009',
  '9-inch NYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'NY-3010',
  'NY-3010',
  'NY-3010',
  'ny-3010',
  '10-inch NYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'NY-3012',
  'NY-3012',
  'NY-3012',
  'ny-3012',
  '12-inch NYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  132.0,
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
  'NY-3014',
  'NY-3014',
  'NY-3014',
  'ny-3014',
  '14-inch NYPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  205.0,
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
  'GP-4008',
  'GP-4008',
  'GP-4008',
  'gp-4008',
  '8-inch GOLDPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'GP-4009',
  'GP-4009',
  'GP-4009',
  'gp-4009',
  '9-inch GOLDPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'GP-4010',
  'GP-4010',
  'GP-4010',
  'gp-4010',
  '10-inch GOLDPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'GP-4012',
  'GP-4012',
  'GP-4012',
  'gp-4012',
  '12-inch GOLDPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  132.0,
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
  'GP-4014',
  'GP-4014',
  'GP-4014',
  'gp-4014',
  '14-inch GOLDPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  205.0,
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
  'ATL-3008',
  'ATL-3008',
  'ATL-3008',
  'atl-3008',
  '8-inch ATLANTIS Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  58.0,
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
  'ATL-3009',
  'ATL-3009',
  'ATL-3009',
  'atl-3009',
  '9-inch ATLANTIS Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'ATL-3010',
  'ATL-3010',
  'ATL-3010',
  'atl-3010',
  '10-inch ATLANTIS Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  74.0,
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
  'ATL-3012',
  'ATL-3012',
  'ATL-3012',
  'atl-3012',
  '12-inch ATLANTIS Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'ATL-3014',
  'ATL-3014',
  'ATL-3014',
  'atl-3014',
  '14-inch ATLANTIS Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  142.0,
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
  'MP-9008',
  'MP-9008',
  'MP-9008',
  'mp-9008',
  '8-inch MICROPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  58.0,
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
  'MP-9009',
  'MP-9009',
  'MP-9009',
  'mp-9009',
  '9-inch MICROPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'MP-9010',
  'MP-9010',
  'MP-9010',
  'mp-9010',
  '10-inch MICROPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'MP-9012',
  'MP-9012',
  'MP-9012',
  'mp-9012',
  '12-inch MICROPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'MP-9014',
  'MP-9014',
  'MP-9014',
  'mp-9014',
  '14-inch MICROPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  142.0,
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
  'TRI-4008',
  'TRI-4008',
  'TRI-4008',
  'tri-4008',
  '8-inch TRICOTE Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  58.0,
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
  'TRI-4009',
  'TRI-4009',
  'TRI-4009',
  'tri-4009',
  '9-inch TRICOTE Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'TRI-4010',
  'TRI-4010',
  'TRI-4010',
  'tri-4010',
  '10-inch TRICOTE Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'TRI-4012',
  'TRI-4012',
  'TRI-4012',
  'tri-4012',
  '12-inch TRICOTE Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  132.0,
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
  'TRI-4014',
  'TRI-4014',
  'TRI-4014',
  'tri-4014',
  '14-inch TRICOTE Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  184.0,
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
  'NP-7008',
  'NP-7008',
  'NP-7008',
  'np-7008',
  '8-inch NAPPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  58.0,
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
  'NP-7009',
  'NP-7009',
  'NP-7009',
  'np-7009',
  '9-inch NAPPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  74.0,
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
  'NP-7010',
  'NP-7010',
  'NP-7010',
  'np-7010',
  '10-inch NAPPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'NP-7012',
  'NP-7012',
  'NP-7012',
  'np-7012',
  '12-inch NAPPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'NP-7014',
  'NP-7014',
  'NP-7014',
  'np-7014',
  '14-inch NAPPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'MT2-7008',
  'MT2-7008',
  'MT2-7008',
  'mt2-7008',
  '8-inch MOLTEC 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'MT2-7009',
  'MT2-7009',
  'MT2-7009',
  'mt2-7009',
  '9-inch MOLTEC 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  NULL,
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
  'MT2-7010',
  'MT2-7010',
  'MT2-7010',
  'mt2-7010',
  '10-inch MOLTEC 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  NULL,
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
  'MT2-7012',
  'MT2-7012',
  'MT2-7012',
  'mt2-7012',
  '12-inch MOLTEC 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  105.0,
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
  'MT2-7014',
  'MT2-7014',
  'MT2-7014',
  'mt2-7014',
  '14-inch MOLTEC 2 Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'FP-8125-08',
  'FP-8125-08',
  'FP-8125-08',
  'fp-8125-08',
  '8-inch FELTPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'FP-8125-09',
  'FP-8125-09',
  'FP-8125-09',
  'fp-8125-09',
  '9-inch FELTPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
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
  'FP-8125-10',
  'FP-8125-10',
  'FP-8125-10',
  'fp-8125-10',
  '10-inch FELTPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  NULL,
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
  'FP-8125-12',
  'FP-8125-12',
  'FP-8125-12',
  'fp-8125-12',
  '12-inch FELTPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  105.0,
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
  'FP-8125-14',
  'FP-8125-14',
  'FP-8125-14',
  'fp-8125-14',
  '14-inch FELTPAD Polishing Pad with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing / PSA',
  true,
  155.0,
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
  'CMESH-2008-MAG',
  'CMESH-2008-MAG',
  'CMESH-2008-MAG',
  'cmesh-2008-mag',
  '8-inch CERMESH Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  125.0,
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
  'CMESH-2010-MAG',
  'CMESH-2010-MAG',
  'CMESH-2010-MAG',
  'cmesh-2010-mag',
  '10-inch CERMESH Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  215.0,
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
  'CMESH-2012-MAG',
  'CMESH-2012-MAG',
  'CMESH-2012-MAG',
  'cmesh-2012-mag',
  '12-inch CERMESH Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'CMESH-2014-MAG',
  'CMESH-2014-MAG',
  'CMESH-2014-MAG',
  'cmesh-2014-mag',
  '14-inch CERMESH Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  375.0,
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
  'PP-6008-MAG',
  'PP-6008-MAG',
  'PP-6008-MAG',
  'pp-6008-mag',
  '8-inch POLYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  78.0,
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
  'PP-6010-MAG',
  'PP-6010-MAG',
  'PP-6010-MAG',
  'pp-6010-mag',
  '10-inch POLYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'PP-6012-MAG',
  'PP-6012-MAG',
  'PP-6012-MAG',
  'pp-6012-mag',
  '12-inch POLYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  132.0,
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
  'PP-6014-MAG',
  'PP-6014-MAG',
  'PP-6014-MAG',
  'pp-6014-mag',
  '14-inch POLYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  184.0,
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
  'TP-5008-MAG',
  'TP-5008-MAG',
  'TP-5008-MAG',
  'tp-5008-mag',
  '8-inch TEXPAN Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'TP-5010-MAG',
  'TP-5010-MAG',
  'TP-5010-MAG',
  'tp-5010-mag',
  '10-inch TEXPAN Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'TP-5012-MAG',
  'TP-5012-MAG',
  'TP-5012-MAG',
  'tp-5012-mag',
  '12-inch TEXPAN Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'TP-5014-MAG',
  'TP-5014-MAG',
  'TP-5014-MAG',
  'tp-5014-mag',
  '14-inch TEXPAN Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  184.0,
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
  'BC2-8008-MAG',
  'BC2-8008-MAG',
  'BC2-8008-MAG',
  'bc2-8008-mag',
  '8-inch Black Chem 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  142.0,
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
  'BC2-8010-MAG',
  'BC2-8010-MAG',
  'BC2-8010-MAG',
  'bc2-8010-mag',
  '10-inch Black Chem 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  174.0,
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
  'BC2-8012-MAG',
  'BC2-8012-MAG',
  'BC2-8012-MAG',
  'bc2-8012-mag',
  '12-inch Black Chem 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'BC2-8014-MAG',
  'BC2-8014-MAG',
  'BC2-8014-MAG',
  'bc2-8014-mag',
  '14-inch Black Chem 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  335.0,
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
  'DC2-3008-MAG',
  'DC2-3008-MAG',
  'DC2-3008-MAG',
  'dc2-3008-mag',
  '8-inch DACRON II Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  132.0,
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
  'DC2-3010-MAG',
  'DC2-3010-MAG',
  'DC2-3010-MAG',
  'dc2-3010-mag',
  '10-inch DACRON II Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  174.0,
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
  'DC2-3012-MAG',
  'DC2-3012-MAG',
  'DC2-3012-MAG',
  'dc2-3012-mag',
  '12-inch DACRON II Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  230.0,
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
  'DC2-3014-MAG',
  'DC2-3014-MAG',
  'DC2-3014-MAG',
  'dc2-3014-mag',
  '14-inch DACRON II Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  320.0,
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
  'NY-3008-MAG',
  'NY-3008-MAG',
  'NY-3008-MAG',
  'ny-3008-mag',
  '8-inch NYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'NY-3010-MAG',
  'NY-3010-MAG',
  'NY-3010-MAG',
  'ny-3010-mag',
  '10-inch NYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'NY-3012-MAG',
  'NY-3012-MAG',
  'NY-3012-MAG',
  'ny-3012-mag',
  '12-inch NYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  115.0,
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
  'NY-3014-MAG',
  'NY-3014-MAG',
  'NY-3014-MAG',
  'ny-3014-mag',
  '14-inch NYPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  205.0,
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
  'GP-4008-MAG',
  'GP-4008-MAG',
  'GP-4008-MAG',
  'gp-4008-mag',
  '8-inch GOLDPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'GP-4010-MAG',
  'GP-4010-MAG',
  'GP-4010-MAG',
  'gp-4010-mag',
  '10-inch GOLDPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  NULL,
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
  'GP-4012-MAG',
  'GP-4012-MAG',
  'GP-4012-MAG',
  'gp-4012-mag',
  '12-inch GOLDPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'GP-4014-MAG',
  'GP-4014-MAG',
  'GP-4014-MAG',
  'gp-4014-mag',
  '14-inch GOLDPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  184.0,
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
  'ATL-3008-MAG',
  'ATL-3008-MAG',
  'ATL-3008-MAG',
  'atl-3008-mag',
  '8-inch ATLANTIS Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'ATL-3010-MAG',
  'ATL-3010-MAG',
  'ATL-3010-MAG',
  'atl-3010-mag',
  '10-inch ATLANTIS Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'ATL-3012-MAG',
  'ATL-3012-MAG',
  'ATL-3012-MAG',
  'atl-3012-mag',
  '12-inch ATLANTIS Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'ATL-3014-MAG',
  'ATL-3014-MAG',
  'ATL-3014-MAG',
  'atl-3014-mag',
  '14-inch ATLANTIS Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'MP-9008-MAG',
  'MP-9008-MAG',
  'MP-9008-MAG',
  'mp-9008-mag',
  '8-inch MICROPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'MP-9010-MAG',
  'MP-9010-MAG',
  'MP-9010-MAG',
  'mp-9010-mag',
  '10-inch MICROPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  NULL,
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
  'MP-9012-MAG',
  'MP-9012-MAG',
  'MP-9012-MAG',
  'mp-9012-mag',
  '12-inch MICROPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'MP-9014-MAG',
  'MP-9014-MAG',
  'MP-9014-MAG',
  'mp-9014-mag',
  '14-inch MICROPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  174.0,
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
  'TRI-4008-MAG',
  'TRI-4008-MAG',
  'TRI-4008-MAG',
  'tri-4008-mag',
  '8-inch TRICOTE Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  80.0,
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
  'TRI-4010-MAG',
  'TRI-4010-MAG',
  'TRI-4010-MAG',
  'tri-4010-mag',
  '10-inch TRICOTE Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'TRI-4012-MAG',
  'TRI-4012-MAG',
  'TRI-4012-MAG',
  'tri-4012-mag',
  '12-inch TRICOTE Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'TRI-4014-MAG',
  'TRI-4014-MAG',
  'TRI-4014-MAG',
  'tri-4014-mag',
  '14-inch TRICOTE Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  210.0,
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
  'NP-7008-MAG',
  'NP-7008-MAG',
  'NP-7008-MAG',
  'np-7008-mag',
  '8-inch NAPPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'NP-7010-MAG',
  'NP-7010-MAG',
  'NP-7010-MAG',
  'np-7010-mag',
  '10-inch NAPPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  82.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
