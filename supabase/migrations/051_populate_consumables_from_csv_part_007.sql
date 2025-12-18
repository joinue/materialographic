-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 7 of 16
-- Statements 1201 to 1400

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1015-5L',
  'WPC-1015-5L',
  'WPC-1015-5L',
  'wpc-1015-5l',
  '15 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  1050.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1030-250',
  'WPC-1030-250',
  'WPC-1030-250',
  'wpc-1030-250',
  '30 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1030-500',
  'WPC-1030-500',
  'WPC-1030-500',
  'wpc-1030-500',
  '30 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1030-1GL',
  'WPC-1030-1GL',
  'WPC-1030-1GL',
  'wpc-1030-1gl',
  '30 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  570.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1030-5L',
  'WPC-1030-5L',
  'WPC-1030-5L',
  'wpc-1030-5l',
  '30 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  1200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1045-250',
  'WPC-1045-250',
  'WPC-1045-250',
  'wpc-1045-250',
  '45 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1045-500',
  'WPC-1045-500',
  'WPC-1045-500',
  'wpc-1045-500',
  '45 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1045-1GL',
  'WPC-1045-1GL',
  'WPC-1045-1GL',
  'wpc-1045-1gl',
  '45 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  570.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1045-5L',
  'WPC-1045-5L',
  'WPC-1045-5L',
  'wpc-1045-5l',
  '45 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  1200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1001-1L',
  'PC-1001-1L',
  'PC-1001-1L',
  'pc-1001-1l',
  '1 micron (blue) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1001-1GLB',
  'PC-1001-1GLB',
  'PC-1001-1GLB',
  'pc-1001-1glb',
  '1 micron (blue) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  560.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1003-1L',
  'PC-1003-1L',
  'PC-1003-1L',
  'pc-1003-1l',
  '3 micron (green) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1003-1GLG',
  'PC-1003-1GLG',
  'PC-1003-1GLG',
  'pc-1003-1glg',
  '3 micron (green) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  570.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1006-1L',
  'PC-1006-1L',
  'PC-1006-1L',
  'pc-1006-1l',
  '6 micron (yellow) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1006-1GLY',
  'PC-1006-1GLY',
  'PC-1006-1GLY',
  'pc-1006-1gly',
  '6 micron (yellow) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  580.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1009-1L',
  'PC-1009-1L',
  'PC-1009-1L',
  'pc-1009-1l',
  '9 micron (red) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1009-1GLR',
  'PC-1009-1GLR',
  'PC-1009-1GLR',
  'pc-1009-1glr',
  '9 micron (red) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  580.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1015-1L',
  'PC-1015-1L',
  'PC-1015-1L',
  'pc-1015-1l',
  '15 micron (brown) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1015-1GLBR',
  'PC-1015-1GLBR',
  'PC-1015-1GLBR',
  'pc-1015-1glbr',
  '15 micron (brown) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  590.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1030-1L',
  'PC-1030-1L',
  'PC-1030-1L',
  'pc-1030-1l',
  '30 micron (orange) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1030-1GLO',
  'PC-1030-1GLO',
  'PC-1030-1GLO',
  'pc-1030-1glo',
  '30 micron (orange) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  590.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1045-1L',
  'PC-1045-1L',
  'PC-1045-1L',
  'pc-1045-1l',
  '45 micron (purple) Polycrystalline Dyed Diamond Suspension (1 liter)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'PC-1045-1GLP',
  'PC-1045-1GLP',
  'PC-1045-1GLP',
  'pc-1045-1glp',
  '45 micron (purple) Polycrystalline Dyed Diamond Suspension (1 gallon)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  590.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1001-250',
  'MA-1001-250',
  'MA-1001-250',
  'ma-1001-250',
  '1 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  37.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1001-500',
  'MA-1001-500',
  'MA-1001-500',
  'ma-1001-500',
  '1 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'MA-1001-1GL',
  'MA-1001-1GL',
  'MA-1001-1GL',
  'ma-1001-1gl',
  '1 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'MA-1001-5L',
  'MA-1001-5L',
  'MA-1001-5L',
  'ma-1001-5l',
  '1 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  575.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1003-250',
  'MA-1003-250',
  'MA-1003-250',
  'ma-1003-250',
  '3 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  42.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1003-500',
  'MA-1003-500',
  'MA-1003-500',
  'ma-1003-500',
  '3 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'MA-1003-1GL',
  'MA-1003-1GL',
  'MA-1003-1GL',
  'ma-1003-1gl',
  '3 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  380.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1003-5L',
  'MA-1003-5L',
  'MA-1003-5L',
  'ma-1003-5l',
  '3 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'MA-1006-250',
  'MA-1006-250',
  'MA-1006-250',
  'ma-1006-250',
  '6 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1006-500',
  'MA-1006-500',
  'MA-1006-500',
  'ma-1006-500',
  '6 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml.)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1006-1GL',
  'MA-1006-1GL',
  'MA-1006-1GL',
  'ma-1006-1gl',
  '6 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1006-5L',
  'MA-1006-5L',
  'MA-1006-5L',
  'ma-1006-5l',
  '6 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1009-250',
  'MA-1009-250',
  'MA-1009-250',
  'ma-1009-250',
  '9 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1009-500',
  'MA-1009-500',
  'MA-1009-500',
  'ma-1009-500',
  '9 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1009-1GL',
  'MA-1009-1GL',
  'MA-1009-1GL',
  'ma-1009-1gl',
  '9 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1009-5L',
  'MA-1009-5L',
  'MA-1009-5L',
  'ma-1009-5l',
  '9 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1015-250',
  'MA-1015-250',
  'MA-1015-250',
  'ma-1015-250',
  '15 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1015-500',
  'MA-1015-500',
  'MA-1015-500',
  'ma-1015-500',
  '15 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1015-1GL',
  'MA-1015-1GL',
  'MA-1015-1GL',
  'ma-1015-1gl',
  '15 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1015-5L',
  'MA-1015-5L',
  'MA-1015-5L',
  'ma-1015-5l',
  '15 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1030-250',
  'MA-1030-250',
  'MA-1030-250',
  'ma-1030-250',
  '30 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  52.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1030-500',
  'MA-1030-500',
  'MA-1030-500',
  'ma-1030-500',
  '30 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  94.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1030-1GL',
  'MA-1030-1GL',
  'MA-1030-1GL',
  'ma-1030-1gl',
  '30 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  410.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1030-5L',
  'MA-1030-5L',
  'MA-1030-5L',
  'ma-1030-5l',
  '30 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  710.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1045-250',
  'MA-1045-250',
  'MA-1045-250',
  'ma-1045-250',
  '45 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  52.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1045-500',
  'MA-1045-500',
  'MA-1045-500',
  'ma-1045-500',
  '45 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  94.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1045-1GL',
  'MA-1045-1GL',
  'MA-1045-1GL',
  'ma-1045-1gl',
  '45 micron DIAMAT Monocrystalline High Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  410.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-1045-5L',
  'MA-1045-5L',
  'MA-1045-5L',
  'ma-1045-5l',
  '45 micron high viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  710.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1001-250',
  'GMA-1001-250',
  'GMA-1001-250',
  'gma-1001-250',
  '1 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  36.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1001-500',
  'GMA-1001-500',
  'GMA-1001-500',
  'gma-1001-500',
  '1 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'GMA-1001-1GL',
  'GMA-1001-1GL',
  'GMA-1001-1GL',
  'gma-1001-1gl',
  '1 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  370.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1001-5L',
  'GMA-1001-5L',
  'GMA-1001-5L',
  'gma-1001-5l',
  '1 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  575.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1003-250',
  'GMA-1003-250',
  'GMA-1003-250',
  'gma-1003-250',
  '3 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  42.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1003-500',
  'GMA-1003-500',
  'GMA-1003-500',
  'gma-1003-500',
  '3 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'GMA-1003-1GL',
  'GMA-1003-1GL',
  'GMA-1003-1GL',
  'gma-1003-1gl',
  '3 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'GMA-1003-5L',
  'GMA-1003-5L',
  'GMA-1003-5L',
  'gma-1003-5l',
  '3 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  750.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1006-250',
  'GMA-1006-250',
  'GMA-1006-250',
  'gma-1006-250',
  '6 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1006-500',
  'GMA-1006-500',
  'GMA-1006-500',
  'gma-1006-500',
  '6 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1006-1GL',
  'GMA-1006-1GL',
  'GMA-1006-1GL',
  'gma-1006-1gl',
  '6 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1006-5L',
  'GMA-1006-5L',
  'GMA-1006-5L',
  'gma-1006-5l',
  '6 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1009-250',
  'GMA-1009-250',
  'GMA-1009-250',
  'gma-1009-250',
  '9 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1009-500',
  'GMA-1009-500',
  'GMA-1009-500',
  'gma-1009-500',
  '9 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1009-1GL',
  'GMA-1009-1GL',
  'GMA-1009-1GL',
  'gma-1009-1gl',
  '9 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1009-5L',
  'GMA-1009-5L',
  'GMA-1009-5L',
  'gma-1009-5l',
  '9 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1015-250',
  'GMA-1015-250',
  'GMA-1015-250',
  'gma-1015-250',
  '15 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  47.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1015-500',
  'GMA-1015-500',
  'GMA-1015-500',
  'gma-1015-500',
  '15 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  87.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1015-1GL',
  'GMA-1015-1GL',
  'GMA-1015-1GL',
  'gma-1015-1gl',
  '15 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1015-5L',
  'GMA-1015-5L',
  'GMA-1015-5L',
  'gma-1015-5l',
  '15 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  660.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1030-250',
  'GMA-1030-250',
  'GMA-1030-250',
  'gma-1030-250',
  '30 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  52.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1030-500',
  'GMA-1030-500',
  'GMA-1030-500',
  'gma-1030-500',
  '30 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'GMA-1030-1GL',
  'GMA-1030-1GL',
  'GMA-1030-1GL',
  'gma-1030-1gl',
  '30 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  410.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1030-5L',
  'GMA-1030-5L',
  'GMA-1030-5L',
  'gma-1030-5l',
  '30 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  710.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1045-250',
  'GMA-1045-250',
  'GMA-1045-250',
  'gma-1045-250',
  '45 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  52.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1045-500',
  'GMA-1045-500',
  'GMA-1045-500',
  'gma-1045-500',
  '45 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'GMA-1045-1GL',
  'GMA-1045-1GL',
  'GMA-1045-1GL',
  'gma-1045-1gl',
  '45 micron DIAMAT Monocrystalline Low Viscosity Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  410.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GMA-1045-5L',
  'GMA-1045-5L',
  'GMA-1045-5L',
  'gma-1045-5l',
  '45 micron low viscosity DIAMAT Monocrystalline diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  710.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1001-250',
  'WMA-1001-250',
  'WMA-1001-250',
  'wma-1001-250',
  '1 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1001-500',
  'WMA-1001-500',
  'WMA-1001-500',
  'wma-1001-500',
  '1 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  67.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1001-1GL',
  'WMA-1001-1GL',
  'WMA-1001-1GL',
  'wma-1001-1gl',
  '1 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  350.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1001-5L',
  'WMA-1001-5L',
  'WMA-1001-5L',
  'wma-1001-5l',
  '1 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  550.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1003-250',
  'WMA-1003-250',
  'WMA-1003-250',
  'wma-1003-250',
  '3 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  40.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1003-500',
  'WMA-1003-500',
  'WMA-1003-500',
  'wma-1003-500',
  '3 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1003-1GL',
  'WMA-1003-1GL',
  'WMA-1003-1GL',
  'wma-1003-1gl',
  '3 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  370.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1003-5L',
  'WMA-1003-5L',
  'WMA-1003-5L',
  'wma-1003-5l',
  '3 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  725.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1006-250',
  'WMA-1006-250',
  'WMA-1006-250',
  'wma-1006-250',
  '6 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  42.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1006-500',
  'WMA-1006-500',
  'WMA-1006-500',
  'wma-1006-500',
  '6 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1006-1GL',
  'WMA-1006-1GL',
  'WMA-1006-1GL',
  'wma-1006-1gl',
  '6 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1006-5L',
  'WMA-1006-5L',
  'WMA-1006-5L',
  'wma-1006-5l',
  '6 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1009-250',
  'WMA-1009-250',
  'WMA-1009-250',
  'wma-1009-250',
  '9 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  42.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1009-500',
  'WMA-1009-500',
  'WMA-1009-500',
  'wma-1009-500',
  '9 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension  (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1009-1GL',
  'WMA-1009-1GL',
  'WMA-1009-1GL',
  'wma-1009-1gl',
  '9 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1009-5L',
  'WMA-1009-5L',
  'WMA-1009-5L',
  'wma-1009-5l',
  '9 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1015-250',
  'WMA-1015-250',
  'WMA-1015-250',
  'wma-1015-250',
  '15 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  42.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1015-500',
  'WMA-1015-500',
  'WMA-1015-500',
  'wma-1015-500',
  '15 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1015-1GL',
  'WMA-1015-1GL',
  'WMA-1015-1GL',
  'wma-1015-1gl',
  '15 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  385.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1015-5L',
  'WMA-1015-5L',
  'WMA-1015-5L',
  'wma-1015-5l',
  '15 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1030-250',
  'WMA-1030-250',
  'WMA-1030-250',
  'wma-1030-250',
  '30 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  50.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1030-500',
  'WMA-1030-500',
  'WMA-1030-500',
  'wma-1030-500',
  '30 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1030-1GL',
  'WMA-1030-1GL',
  'WMA-1030-1GL',
  'wma-1030-1gl',
  '30 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  390.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1030-5L',
  'WMA-1030-5L',
  'WMA-1030-5L',
  'wma-1030-5l',
  '30 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  675.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1045-250',
  'WMA-1045-250',
  'WMA-1045-250',
  'wma-1045-250',
  '45 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  50.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1045-500',
  'WMA-1045-500',
  'WMA-1045-500',
  'wma-1045-500',
  '45 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
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
  'WMA-1045-1GL',
  'WMA-1045-1GL',
  'WMA-1045-1GL',
  'wma-1045-1gl',
  '45 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension (1 gallon)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  390.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WMA-1045-5L',
  'WMA-1045-5L',
  'WMA-1045-5L',
  'wma-1045-5l',
  '45 micron DIAMAT Monocrystalline water-based Diamond Abrasive Suspension diamond (5 liters)',
  'grinding-polishing',
  'Monocrystalline High Viscosity Diamond Abrasive',
  true,
  675.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-0210-05',
  'PC-0210-05',
  'PC-0210-05',
  'pc-0210-05',
  '0.10 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-0210-20',
  'PC-0210-20',
  'PC-0210-20',
  'pc-0210-20',
  '0.10 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-0225-05',
  'PC-0225-05',
  'PC-0225-05',
  'pc-0225-05',
  '0.25 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-0225-20',
  'PC-0225-20',
  'PC-0225-20',
  'pc-0225-20',
  '0.25 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-0250-05',
  'PC-0250-05',
  'PC-0250-05',
  'pc-0250-05',
  '0.50 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-0250-20',
  'PC-0250-20',
  'PC-0250-20',
  'pc-0250-20',
  '0.50 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2001-05',
  'PC-2001-05',
  'PC-2001-05',
  'pc-2001-05',
  '1 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2001-20',
  'PC-2001-20',
  'PC-2001-20',
  'pc-2001-20',
  '1 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
  true,
  130.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-2003-05',
  'PC-2003-05',
  'PC-2003-05',
  'pc-2003-05',
  '3 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2003-20',
  'PC-2003-20',
  'PC-2003-20',
  'pc-2003-20',
  '3 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2006-05',
  'PC-2006-05',
  'PC-2006-05',
  'pc-2006-05',
  '6 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2006-20',
  'PC-2006-20',
  'PC-2006-20',
  'pc-2006-20',
  '6 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2009-05',
  'PC-2009-05',
  'PC-2009-05',
  'pc-2009-05',
  '9 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2009-20',
  'PC-2009-20',
  'PC-2009-20',
  'pc-2009-20',
  '9 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2015-05',
  'PC-2015-05',
  'PC-2015-05',
  'pc-2015-05',
  '15 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2015-20',
  'PC-2015-20',
  'PC-2015-20',
  'pc-2015-20',
  '15 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2030-05',
  'PC-2030-05',
  'PC-2030-05',
  'pc-2030-05',
  '30 um DIAMAT Polycrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2030-20',
  'PC-2030-20',
  'PC-2030-20',
  'pc-2030-20',
  '30 um DIAMAT Polycrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC- 2045-05',
  'PC- 2045-05',
  'PC- 2045-05',
  'pc-2045-05',
  '45 um DIAMAT Polycrystalline Diamond Paste- 5 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'PC-2045-20',
  'PC-2045-20',
  'PC-2045-20',
  'pc-2045-20',
  '45 um DIAMAT Polycrystalline Diamond Paste- 20 gms',
  'grinding-polishing',
  'Polycrystalline Diamond Paste',
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
  'MA-0225-05',
  'MA-0225-05',
  'MA-0225-05',
  'ma-0225-05',
  '0.25 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-0225-20',
  'MA-0225-20',
  'MA-0225-20',
  'ma-0225-20',
  '0.25 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-0250-05',
  'MA-0250-05',
  'MA-0250-05',
  'ma-0250-05',
  '0.50 um DIAMAT Monocrystalline Diamond Paste-5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-0250-20',
  'MA-0250-20',
  'MA-0250-20',
  'ma-0250-20',
  '0.50 um DIAMAT Monocrystalline Diamond Paste-20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2001-05',
  'MA-2001-05',
  'MA-2001-05',
  'ma-2001-05',
  '1 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2001-20',
  'MA-2001-20',
  'MA-2001-20',
  'ma-2001-20',
  '1 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2003-05',
  'MA-2003-05',
  'MA-2003-05',
  'ma-2003-05',
  '3 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  22.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2003-20',
  'MA-2003-20',
  'MA-2003-20',
  'ma-2003-20',
  '3 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2006-05',
  'MA-2006-05',
  'MA-2006-05',
  'ma-2006-05',
  '6 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  22.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2006-20',
  'MA-2006-20',
  'MA-2006-20',
  'ma-2006-20',
  '6 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2009-05',
  'MA-2009-05',
  'MA-2009-05',
  'ma-2009-05',
  '9 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  22.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2009-20',
  'MA-2009-20',
  'MA-2009-20',
  'ma-2009-20',
  '9 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2015-05',
  'MA-2015-05',
  'MA-2015-05',
  'ma-2015-05',
  '15 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  25.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2015-20',
  'MA-2015-20',
  'MA-2015-20',
  'ma-2015-20',
  '15 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2030-05',
  'MA-2030-05',
  'MA-2030-05',
  'ma-2030-05',
  '30 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  25.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2030-20',
  'MA-2030-20',
  'MA-2030-20',
  'ma-2030-20',
  '30 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'MA-2045-05',
  'MA-2045-05',
  'MA-2045-05',
  'ma-2045-05',
  '45 um DIAMAT Monocrystalline Diamond Paste - 5 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
  true,
  25.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MA-2045-20',
  'MA-2045-20',
  'MA-2045-20',
  'ma-2045-20',
  '45 um DIAMAT Monocrystalline Diamond Paste - 20 gms',
  'grinding-polishing',
  'Monocrystalline Diamond Paste',
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
  'DL-3000-16',
  'DL-3000-16',
  'DL-3000-16',
  'dl-3000-16',
  'DIALUBE Diamond Lube Extender (16 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'DL-3000-32',
  'DL-3000-32',
  'DL-3000-32',
  'dl-3000-32',
  'DIALUBE Diamond Lube Extender (32 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  25.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DL-3000-64',
  'DL-3000-64',
  'DL-3000-64',
  'dl-3000-64',
  'DIALUBE Diamond Lube Extender (64 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  42.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DL-3000-128',
  'DL-3000-128',
  'DL-3000-128',
  'dl-3000-128',
  'DIALUBE Diamond Lube Extender (1 gallon)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'AOD-3000-32',
  'AOD-3000-32',
  'AOD-3000-32',
  'aod-3000-32',
  'DIALUBE Blue Diamond Lube Extender - blue alcohol based (32 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'AOD-3000-128',
  'AOD-3000-128',
  'AOD-3000-128',
  'aod-3000-128',
  'DIALUBE Blue Diamond Lube Extender - blue alcohol based (1 gallon)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'AOD-3000-640',
  'AOD-3000-640',
  'AOD-3000-640',
  'aod-3000-640',
  'DIALUBE Blue Diamond Lube Extender - blue alcohol based (5 gallons)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'ADL-3000-32',
  'ADL-3000-32',
  'ADL-3000-32',
  'adl-3000-32',
  'DIALUBE Purple Diamond Lube Extender - blue alcohol based  (32 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ADL-3000-128',
  'ADL-3000-128',
  'ADL-3000-128',
  'adl-3000-128',
  'DIALUBE Purple Diamond Lube Extender - blue alcohol based  (1 gallon)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'ADL-3000-640',
  'ADL-3000-640',
  'ADL-3000-640',
  'adl-3000-640',
  'DIALUBE Purple Diamond Lube Extender - blue alcohol based  (5 gallons)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'PDL-3000-32',
  'PDL-3000-32',
  'PDL-3000-32',
  'pdl-3000-32',
  'POLYLUBE Diamond Lube Extender - non-aqueous (32 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PDL-3000-128',
  'PDL-3000-128',
  'PDL-3000-128',
  'pdl-3000-128',
  'POLYLUBE Diamond Lube Extender - non-aqueous (1 gallon)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'PDL-3000R-32',
  'PDL-3000R-32',
  'PDL-3000R-32',
  'pdl-3000r-32',
  'POLYLUBE Red Diamond Lube Extender - anti-corrosion (32 oz)',
  'grinding-polishing',
  'Diamond Lube Extenders',
  true,
  20.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PDL-3000R-128',
  'PDL-3000R-128',
  'PDL-3000R-128',
  'pdl-3000r-128',
  'POLYLUBE Red Diamond Lube Extender - anti-corrosion (1 gallon)',
  'grinding-polishing',
  'Diamond Lube Extenders',
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
  'CMP-1005-16',
  'CMP-1005-16',
  'CMP-1005-16',
  'cmp-1005-16',
  'CMP Alumina-Silica Polishing Slurry (16 oz)',
  'grinding-polishing',
  'CMP Slurries',
  true,
  37.5,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CMP-1005-32',
  'CMP-1005-32',
  'CMP-1005-32',
  'cmp-1005-32',
  'CMP Alumina-Silica Polishing Slurry (32 oz)',
  'grinding-polishing',
  'CMP Slurries',
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
  'CMP-1005-64',
  'CMP-1005-64',
  'CMP-1005-64',
  'cmp-1005-64',
  'CMP Alumina-Silica Polishing Slurry (1/2 gallon)',
  'grinding-polishing',
  'CMP Slurries',
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
  'CMP-1005-128',
  'CMP-1005-128',
  'CMP-1005-128',
  'cmp-1005-128',
  'CMP Alumina-Silica Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'CMP Slurries',
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
  'ALPHA-NANO-1005-06',
  'ALPHA-NANO-1005-06',
  'ALPHA-NANO-1005-06',
  'alpha-nano-1005-06',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 10 (6 oz)',
  'grinding-polishing',
  'Alumina Polishing',
  true,
  27.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALPHA-NANO-1005-16',
  'ALPHA-NANO-1005-16',
  'ALPHA-NANO-1005-16',
  'alpha-nano-1005-16',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 10 (16 oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'ALPHA-NANO-1005-32',
  'ALPHA-NANO-1005-32',
  'ALPHA-NANO-1005-32',
  'alpha-nano-1005-32',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 10 (32 oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'ALPHA-NANO-1005-64',
  'ALPHA-NANO-1005-64',
  'ALPHA-NANO-1005-64',
  'alpha-nano-1005-64',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 10 (1/2 gallon)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'ALPHA-NANO-1005-1G',
  'ALPHA-NANO-1005-1G',
  'ALPHA-NANO-1005-1G',
  'alpha-nano-1005-1g',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 10 (1 gallon)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1005-16',
  'NA-1005-16',
  'NA-1005-16',
  'na-1005-16',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 4 (16 oz)',
  'grinding-polishing',
  'Alumina Polishing',
  true,
  50.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NA-1005-32',
  'NA-1005-32',
  'NA-1005-32',
  'na-1005-32',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 4 (32 oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1005-64',
  'NA-1005-64',
  'NA-1005-64',
  'na-1005-64',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 4 (1/2 gallon)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1005-128',
  'NA-1005-128',
  'NA-1005-128',
  'na-1005-128',
  '0.05 um NANOMETER Polycrystalline Alumina Polishing Slurry - pH 4 (1 gallon)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1020-16',
  'NA-1020-16',
  'NA-1020-16',
  'na-1020-16',
  '0.05 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1020-32',
  'NA-1020-32',
  'NA-1020-32',
  'na-1020-32',
  '0.05 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1020-64',
  'NA-1020-64',
  'NA-1020-64',
  'na-1020-64',
  '0.05 um NANO Low Viscosity Alumina Polishing Slurry (32oz)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NA-1020-128',
  'NA-1020-128',
  'NA-1020-128',
  'na-1020-128',
  '0.05 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Alumina Polishing',
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
  'NANO-1005-06',
  'NANO-1005-06',
  'NANO-1005-06',
  'nano-1005-06',
  '0.30 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1005-16',
  'NANO-1005-16',
  'NANO-1005-16',
  'nano-1005-16',
  '0.30 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1005-32',
  'NANO-1005-32',
  'NANO-1005-32',
  'nano-1005-32',
  '0.30 um NANO Low Viscosity Alumina Polishing Slurry (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1005-128',
  'NANO-1005-128',
  'NANO-1005-128',
  'nano-1005-128',
  '0.30 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1003-06',
  'NANO-1003-06',
  'NANO-1003-06',
  'nano-1003-06',
  '0.50 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1003-16',
  'NANO-1003-16',
  'NANO-1003-16',
  'nano-1003-16',
  '0.50 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1003-32',
  'NANO-1003-32',
  'NANO-1003-32',
  'nano-1003-32',
  '0.50 um NANO Low Viscosity Alumina Polishing Slurry (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1003-128',
  'NANO-1003-128',
  'NANO-1003-128',
  'nano-1003-128',
  '0.50 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1105-06',
  'NANO-1105-06',
  'NANO-1105-06',
  'nano-1105-06',
  '1 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1105-16',
  'NANO-1105-16',
  'NANO-1105-16',
  'nano-1105-16',
  '1 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1105-32',
  'NANO-1105-32',
  'NANO-1105-32',
  'nano-1105-32',
  '1 um NANO Low Viscosity Alumina Polishing Slurry (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1105-128',
  'NANO-1105-128',
  'NANO-1105-128',
  'nano-1105-128',
  '1 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1010-06',
  'NANO-1010-06',
  'NANO-1010-06',
  'nano-1010-06',
  '3 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1010-16',
  'NANO-1010-16',
  'NANO-1010-16',
  'nano-1010-16',
  '3 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1010-32',
  'NANO-1010-32',
  'NANO-1010-32',
  'nano-1010-32',
  '3 um NANO Low Viscosity Alumina Polishing Slurry (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1010-128',
  'NANO-1010-128',
  'NANO-1010-128',
  'nano-1010-128',
  '3 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1030-06',
  'NANO-1030-06',
  'NANO-1030-06',
  'nano-1030-06',
  '5 um NANO Low Viscosity Alumina Polishing Slurry (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1030-16',
  'NANO-1030-16',
  'NANO-1030-16',
  'nano-1030-16',
  '5 um NANO Low Viscosity Alumina Polishing Slurry (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1030-32',
  'NANO-1030-32',
  'NANO-1030-32',
  'nano-1030-32',
  '5 um NANO Low Viscosity Alumina Polishing Slurry (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1030-128',
  'NANO-1030-128',
  'NANO-1030-128',
  'nano-1030-128',
  '5 um NANO Low Viscosity Alumina Polishing Slurry (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1050-06',
  'NANO-1050-06',
  'NANO-1050-06',
  'nano-1050-06',
  '0.05 um Electronics Grade Deagglomerated Alumina Polishing Suspension (6 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  28.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NANO-1050-16',
  'NANO-1050-16',
  'NANO-1050-16',
  'nano-1050-16',
  '0.05 um Electronics Grade Deagglomerated Alumina Polishing Suspension (16 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1050-32',
  'NANO-1050-32',
  'NANO-1050-32',
  'nano-1050-32',
  '0.05 um Electronics Grade Deagglomerated Alumina Polishing Suspension (32 oz)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
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
  'NANO-1050-128',
  'NANO-1050-128',
  'NANO-1050-128',
  'nano-1050-128',
  '0.05 um Electronics Grade Deagglomerated Alumina Polishing Suspension (1 gallon)',
  'grinding-polishing',
  'Low Viscosity Alumina Slurry',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
