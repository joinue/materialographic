-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 3 of 16
-- Statements 401 to 600

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-240P12-100',
  'SIC-240P12-100',
  'SIC-240P12-100',
  'sic-240p12-100',
  '12-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P12-100',
  'SIC-320P12-100',
  'SIC-320P12-100',
  'sic-320p12-100',
  '12-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P12-100',
  'SIC-360P12-100',
  'SIC-360P12-100',
  'sic-360p12-100',
  '12-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P12-100',
  'SIC-400P12-100',
  'SIC-400P12-100',
  'sic-400p12-100',
  '12-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P12-100',
  'SIC-600P12-100',
  'SIC-600P12-100',
  'sic-600p12-100',
  '12-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P12-100',
  'SIC-800P12-100',
  'SIC-800P12-100',
  'sic-800p12-100',
  '12-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P12-100',
  'SIC-1000P12-100',
  'SIC-1000P12-100',
  'sic-1000p12-100',
  '12-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P12-100',
  'SIC-1200P12-100',
  'SIC-1200P12-100',
  'sic-1200p12-100',
  '12-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P14-25',
  'SIC-060P14-25',
  'SIC-060P14-25',
  'sic-060p14-25',
  '14-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P14-25',
  'SIC-080P14-25',
  'SIC-080P14-25',
  'sic-080p14-25',
  '14-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P14-25',
  'SIC-120P14-25',
  'SIC-120P14-25',
  'sic-120p14-25',
  '14-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P14-25',
  'SIC-180P14-25',
  'SIC-180P14-25',
  'sic-180p14-25',
  '14-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P14-25',
  'SIC-240P14-25',
  'SIC-240P14-25',
  'sic-240p14-25',
  '14-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P14-25',
  'SIC-320P14-25',
  'SIC-320P14-25',
  'sic-320p14-25',
  '14-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P14-25',
  'SIC-360P14-25',
  'SIC-360P14-25',
  'sic-360p14-25',
  '14-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P14-25',
  'SIC-400P14-25',
  'SIC-400P14-25',
  'sic-400p14-25',
  '14-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P14-25',
  'SIC-600P14-25',
  'SIC-600P14-25',
  'sic-600p14-25',
  '14-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P14-25',
  'SIC-800P14-25',
  'SIC-800P14-25',
  'sic-800p14-25',
  '14-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P14-25',
  'SIC-1000P14-25',
  'SIC-1000P14-25',
  'sic-1000p14-25',
  '14-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P14-25',
  'SIC-1200P14-25',
  'SIC-1200P14-25',
  'sic-1200p14-25',
  '14-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P14-50',
  'SIC-060P14-50',
  'SIC-060P14-50',
  'sic-060p14-50',
  '14-inch 60 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P14-50',
  'SIC-080P14-50',
  'SIC-080P14-50',
  'sic-080p14-50',
  '14-inch 80 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P14-50',
  'SIC-120P14-50',
  'SIC-120P14-50',
  'sic-120p14-50',
  '14-inch 120 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-180P14-50',
  'SIC-180P14-50',
  'SIC-180P14-50',
  'sic-180p14-50',
  '14-inch 180 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-240P14-50',
  'SIC-240P14-50',
  'SIC-240P14-50',
  'sic-240p14-50',
  '14-inch 240 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-320P14-50',
  'SIC-320P14-50',
  'SIC-320P14-50',
  'sic-320p14-50',
  '14-inch 320 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-360P14-50',
  'SIC-360P14-50',
  'SIC-360P14-50',
  'sic-360p14-50',
  '14-inch 360 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-400P14-50',
  'SIC-400P14-50',
  'SIC-400P14-50',
  'sic-400p14-50',
  '14-inch 400 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-600P14-50',
  'SIC-600P14-50',
  'SIC-600P14-50',
  'sic-600p14-50',
  '14-inch 600 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-800P14-50',
  'SIC-800P14-50',
  'SIC-800P14-50',
  'sic-800p14-50',
  '14-inch 800 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  540.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1000P14-50',
  'SIC-1000P14-50',
  'SIC-1000P14-50',
  'sic-1000p14-50',
  '14-inch 1000 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  540.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1200P14-50',
  'SIC-1200P14-50',
  'SIC-1200P14-50',
  'sic-1200p14-50',
  '14-inch 1200 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  540.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-060P14-100',
  'SIC-060P14-100',
  'SIC-060P14-100',
  'sic-060p14-100',
  '14-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P14-100',
  'SIC-080P14-100',
  'SIC-080P14-100',
  'sic-080p14-100',
  '14-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P14-100',
  'SIC-120P14-100',
  'SIC-120P14-100',
  'sic-120p14-100',
  '14-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P14-100',
  'SIC-180P14-100',
  'SIC-180P14-100',
  'sic-180p14-100',
  '14-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P14-100',
  'SIC-240P14-100',
  'SIC-240P14-100',
  'sic-240p14-100',
  '14-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P14-100',
  'SIC-320P14-100',
  'SIC-320P14-100',
  'sic-320p14-100',
  '14-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P14-100',
  'SIC-360P14-100',
  'SIC-360P14-100',
  'sic-360p14-100',
  '14-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P14-100',
  'SIC-400P14-100',
  'SIC-400P14-100',
  'sic-400p14-100',
  '14-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P14-100',
  'SIC-600P14-100',
  'SIC-600P14-100',
  'sic-600p14-100',
  '14-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P14-100',
  'SIC-800P14-100',
  'SIC-800P14-100',
  'sic-800p14-100',
  '14-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  720.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1000P14-100',
  'SIC-1000P14-100',
  'SIC-1000P14-100',
  'sic-1000p14-100',
  '14-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  720.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1200P14-100',
  'SIC-1200P14-100',
  'SIC-1200P14-100',
  'sic-1200p14-100',
  '14-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  720.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2208-060',
  'SIC-2208-060',
  'SIC-2208-060',
  'sic-2208-060',
  '8-inch 60 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-080',
  'SIC-2208-080',
  'SIC-2208-080',
  'sic-2208-080',
  '8-inch 80 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-120',
  'SIC-2208-120',
  'SIC-2208-120',
  'sic-2208-120',
  '8-inch 120 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-180',
  'SIC-2208-180',
  'SIC-2208-180',
  'sic-2208-180',
  '8-inch 180 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-240',
  'SIC-2208-240',
  'SIC-2208-240',
  'sic-2208-240',
  '8-inch 240 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-320',
  'SIC-2208-320',
  'SIC-2208-320',
  'sic-2208-320',
  '8-inch 320 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-360',
  'SIC-2208-360',
  'SIC-2208-360',
  'sic-2208-360',
  '8-inch 360 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-400',
  'SIC-2208-400',
  'SIC-2208-400',
  'sic-2208-400',
  '8-inch 400 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-600',
  'SIC-2208-600',
  'SIC-2208-600',
  'sic-2208-600',
  '8-inch 600 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-800',
  'SIC-2208-800',
  'SIC-2208-800',
  'sic-2208-800',
  '8-inch 800 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-1000',
  'SIC-2208-1000',
  'SIC-2208-1000',
  'sic-2208-1000',
  '8-inch 1000 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2208-1200',
  'SIC-2208-1200',
  'SIC-2208-1200',
  'sic-2208-1200',
  '8-inch 1200 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-060',
  'SIC-2108-060',
  'SIC-2108-060',
  'sic-2108-060',
  '8-inch 60 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-080',
  'SIC-2108-080',
  'SIC-2108-080',
  'sic-2108-080',
  '8-inch 80 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-120',
  'SIC-2108-120',
  'SIC-2108-120',
  'sic-2108-120',
  '8-inch 120 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-180',
  'SIC-2108-180',
  'SIC-2108-180',
  'sic-2108-180',
  '8-inch 180 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-240',
  'SIC-2108-240',
  'SIC-2108-240',
  'sic-2108-240',
  '8-inch 240 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-320',
  'SIC-2108-320',
  'SIC-2108-320',
  'sic-2108-320',
  '8-inch 320 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-360',
  'SIC-2108-360',
  'SIC-2108-360',
  'sic-2108-360',
  '8-inch 360 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-400',
  'SIC-2108-400',
  'SIC-2108-400',
  'sic-2108-400',
  '8-inch 400 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-600',
  'SIC-2108-600',
  'SIC-2108-600',
  'sic-2108-600',
  '8-inch 600 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-800',
  'SIC-2108-800',
  'SIC-2108-800',
  'sic-2108-800',
  '8-inch 800 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-1000',
  'SIC-2108-1000',
  'SIC-2108-1000',
  'sic-2108-1000',
  '8-inch 1000 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2108-1200',
  'SIC-2108-1200',
  'SIC-2108-1200',
  'sic-2108-1200',
  '8-inch 1200 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-060',
  'SIC-2210-060',
  'SIC-2210-060',
  'sic-2210-060',
  '10-inch 60 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-080',
  'SIC-2210-080',
  'SIC-2210-080',
  'sic-2210-080',
  '10-inch 80 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-120',
  'SIC-2210-120',
  'SIC-2210-120',
  'sic-2210-120',
  '10-inch 120 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-180',
  'SIC-2210-180',
  'SIC-2210-180',
  'sic-2210-180',
  '10-inch 180 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-240',
  'SIC-2210-240',
  'SIC-2210-240',
  'sic-2210-240',
  '10-inch 240 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-320',
  'SIC-2210-320',
  'SIC-2210-320',
  'sic-2210-320',
  '10-inch 320 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-360',
  'SIC-2210-360',
  'SIC-2210-360',
  'sic-2210-360',
  '10-inch 360 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-400',
  'SIC-2210-400',
  'SIC-2210-400',
  'sic-2210-400',
  '10-inch 400 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-600',
  'SIC-2210-600',
  'SIC-2210-600',
  'sic-2210-600',
  '10-inch 600 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-800',
  'SIC-2210-800',
  'SIC-2210-800',
  'sic-2210-800',
  '10-inch 800 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-1000',
  'SIC-2210-1000',
  'SIC-2210-1000',
  'sic-2210-1000',
  '10-inch 1000 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2210-1200',
  'SIC-2210-1200',
  'SIC-2210-1200',
  'sic-2210-1200',
  '10-inch 1200 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-060',
  'SIC-2110-060',
  'SIC-2110-060',
  'sic-2110-060',
  '10-inch 60 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-080',
  'SIC-2110-080',
  'SIC-2110-080',
  'sic-2110-080',
  '10-inch 80 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-120',
  'SIC-2110-120',
  'SIC-2110-120',
  'sic-2110-120',
  '10-inch 120 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-180',
  'SIC-2110-180',
  'SIC-2110-180',
  'sic-2110-180',
  '10-inch 180 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-240',
  'SIC-2110-240',
  'SIC-2110-240',
  'sic-2110-240',
  '10-inch 240 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-320',
  'SIC-2110-320',
  'SIC-2110-320',
  'sic-2110-320',
  '10-inch 320 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-360',
  'SIC-2110-360',
  'SIC-2110-360',
  'sic-2110-360',
  '10-inch 360 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-400',
  'SIC-2110-400',
  'SIC-2110-400',
  'sic-2110-400',
  '10-inch 400 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-600',
  'SIC-2110-600',
  'SIC-2110-600',
  'sic-2110-600',
  '10-inch 600 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2110-800',
  'SIC-2110-800',
  'SIC-2110-800',
  'sic-2110-800',
  '10-inch 800 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
  true,
  200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2110-1000',
  'SIC-2110-1000',
  'SIC-2110-1000',
  'sic-2110-1000',
  '10-inch 1000 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
  true,
  200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2110-1200',
  'SIC-2110-1200',
  'SIC-2110-1200',
  'sic-2110-1200',
  '10-inch 1200 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
  true,
  200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2212-060',
  'SIC-2212-060',
  'SIC-2212-060',
  'sic-2212-060',
  '12-inch 60 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-080',
  'SIC-2212-080',
  'SIC-2212-080',
  'sic-2212-080',
  '12-inch 80 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-120',
  'SIC-2212-120',
  'SIC-2212-120',
  'sic-2212-120',
  '12-inch 120 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-180',
  'SIC-2212-180',
  'SIC-2212-180',
  'sic-2212-180',
  '12-inch 180 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-240',
  'SIC-2212-240',
  'SIC-2212-240',
  'sic-2212-240',
  '12-inch 240 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-320',
  'SIC-2212-320',
  'SIC-2212-320',
  'sic-2212-320',
  '12-inch 320 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-360',
  'SIC-2212-360',
  'SIC-2212-360',
  'sic-2212-360',
  '12-inch 360 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-400',
  'SIC-2212-400',
  'SIC-2212-400',
  'sic-2212-400',
  '12-inch 400 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-600',
  'SIC-2212-600',
  'SIC-2212-600',
  'sic-2212-600',
  '12-inch 600 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-800',
  'SIC-2212-800',
  'SIC-2212-800',
  'sic-2212-800',
  '12-inch 800 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-1000',
  'SIC-2212-1000',
  'SIC-2212-1000',
  'sic-2212-1000',
  '12-inch 1000 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2212-1200',
  'SIC-2212-1200',
  'SIC-2212-1200',
  'sic-2212-1200',
  '12-inch 1200 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-060',
  'SIC-2112-060',
  'SIC-2112-060',
  'sic-2112-060',
  '12-inch 60 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-080',
  'SIC-2112-080',
  'SIC-2112-080',
  'sic-2112-080',
  '12-inch 80 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-120',
  'SIC-2112-120',
  'SIC-2112-120',
  'sic-2112-120',
  '12-inch 120 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-180',
  'SIC-2112-180',
  'SIC-2112-180',
  'sic-2112-180',
  '12-inch 180 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-240',
  'SIC-2112-240',
  'SIC-2112-240',
  'sic-2112-240',
  '12-inch 240 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-320',
  'SIC-2112-320',
  'SIC-2112-320',
  'sic-2112-320',
  '12-inch 320 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-360',
  'SIC-2112-360',
  'SIC-2112-360',
  'sic-2112-360',
  '12-inch 360 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-400',
  'SIC-2112-400',
  'SIC-2112-400',
  'sic-2112-400',
  '12-inch 400 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-600',
  'SIC-2112-600',
  'SIC-2112-600',
  'sic-2112-600',
  '12-inch 600 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-800',
  'SIC-2112-800',
  'SIC-2112-800',
  'sic-2112-800',
  '12-inch 800 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-1000',
  'SIC-2112-1000',
  'SIC-2112-1000',
  'sic-2112-1000',
  '12-inch 1000 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2112-1200',
  'SIC-2112-1200',
  'SIC-2112-1200',
  'sic-2112-1200',
  '12-inch 1200 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-060',
  'SIC-2214-060',
  'SIC-2214-060',
  'sic-2214-060',
  '14-inch 60 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-080',
  'SIC-2214-080',
  'SIC-2214-080',
  'sic-2214-080',
  '14-inch 80 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-120',
  'SIC-2214-120',
  'SIC-2214-120',
  'sic-2214-120',
  '14-inch 120 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-180',
  'SIC-2214-180',
  'SIC-2214-180',
  'sic-2214-180',
  '14-inch 180 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-240',
  'SIC-2214-240',
  'SIC-2214-240',
  'sic-2214-240',
  '14-inch 240 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-320',
  'SIC-2214-320',
  'SIC-2214-320',
  'sic-2214-320',
  '14-inch 320 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-360',
  'SIC-2214-360',
  'SIC-2214-360',
  'sic-2214-360',
  '14-inch 360 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-400',
  'SIC-2214-400',
  'SIC-2214-400',
  'sic-2214-400',
  '14-inch 400 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-600',
  'SIC-2214-600',
  'SIC-2214-600',
  'sic-2214-600',
  '14-inch 600 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-800',
  'SIC-2214-800',
  'SIC-2214-800',
  'sic-2214-800',
  '14-inch 800 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-1000',
  'SIC-2214-1000',
  'SIC-2214-1000',
  'sic-2214-1000',
  '14-inch 1000 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2214-1200',
  'SIC-2214-1200',
  'SIC-2214-1200',
  'sic-2214-1200',
  '14-inch 1200 grit Premium SiC Abrasive Grinding Paper (Plain Backed) (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-060',
  'SIC-2114-060',
  'SIC-2114-060',
  'sic-2114-060',
  '14-inch 60 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2114-080',
  'SIC-2114-080',
  'SIC-2114-080',
  'sic-2114-080',
  '14-inch 80 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
  true,
  245.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-2114-120',
  'SIC-2114-120',
  'SIC-2114-120',
  'sic-2114-120',
  '14-inch 120 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-180',
  'SIC-2114-180',
  'SIC-2114-180',
  'sic-2114-180',
  '14-inch 180 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-240',
  'SIC-2114-240',
  'SIC-2114-240',
  'sic-2114-240',
  '14-inch 240 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-320',
  'SIC-2114-320',
  'SIC-2114-320',
  'sic-2114-320',
  '14-inch 320 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-360',
  'SIC-2114-360',
  'SIC-2114-360',
  'sic-2114-360',
  '14-inch 360 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-400',
  'SIC-2114-400',
  'SIC-2114-400',
  'sic-2114-400',
  '14-inch 400 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-600',
  'SIC-2114-600',
  'SIC-2114-600',
  'sic-2114-600',
  '14-inch 600 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-800',
  'SIC-2114-800',
  'SIC-2114-800',
  'sic-2114-800',
  '14-inch 800 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-1000',
  'SIC-2114-1000',
  'SIC-2114-1000',
  'sic-2114-1000',
  '14-inch 1000 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'SIC-2114-1200',
  'SIC-2114-1200',
  'SIC-2114-1200',
  'sic-2114-1200',
  '14-inch 1200 grit SiC Abrasive Grinding Paper (Plain Backed) (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / Plain Back',
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
  'DSA-08',
  'DSA-08',
  'DSA-08',
  'dsa-08',
  '8-inch Double sided adhesive (10/pkg)',
  'grinding-polishing',
  'Double-sided Adhesive',
  true,
  38.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DSA-10',
  'DSA-10',
  'DSA-10',
  'dsa-10',
  '10-inch Double sided adhesive (10/pkg)',
  'grinding-polishing',
  'Double-sided Adhesive',
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
  'DSA-12',
  'DSA-12',
  'DSA-12',
  'dsa-12',
  '12-inch Double sided adhesive  (10/pkg)',
  'grinding-polishing',
  'Double-sided Adhesive',
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
  'DSA-14',
  'DSA-14',
  'DSA-14',
  'dsa-14',
  '14-inch Double sided adhesive  (10/pkg)',
  'grinding-polishing',
  'Double-sided Adhesive',
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
  'REC-5008',
  'REC-5008',
  'REC-5008',
  'rec-5008',
  '8-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) PSA (adhesive backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'REC-5010',
  'REC-5010',
  'REC-5010',
  'rec-5010',
  '10-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) PSA (adhesive backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'REC-5012',
  'REC-5012',
  'REC-5012',
  'rec-5012',
  '12-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) PSA (adhesive backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'MREC-5008',
  'MREC-5008',
  'MREC-5008',
  'mrec-5008',
  '8-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) (Magnetic backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'MREC-5010',
  'MREC-5010',
  'MREC-5010',
  'mrec-5010',
  '10-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) (Magnetic backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'MREC-5012',
  'MREC-5012',
  'MREC-5012',
  'mrec-5012',
  '12-inch Receiver for SiC Foil Abrasive Grinding (2/pkg) (Magnetic backed)',
  'grinding-polishing',
  'SiC Foil Receiver',
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
  'SIC-5108-120',
  'SIC-5108-120',
  'SIC-5108-120',
  'sic-5108-120',
  '8-inch 120 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5108-240',
  'SIC-5108-240',
  'SIC-5108-240',
  'sic-5108-240',
  '8-inch 240 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5108-360',
  'SIC-5108-360',
  'SIC-5108-360',
  'sic-5108-360',
  '8-inch 360 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5108-600',
  'SIC-5108-600',
  'SIC-5108-600',
  'sic-5108-600',
  '8-inch 600 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5108-800',
  'SIC-5108-800',
  'SIC-5108-800',
  'sic-5108-800',
  '8-inch 800 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5108-1200',
  'SIC-5108-1200',
  'SIC-5108-1200',
  'sic-5108-1200',
  '8-inch 1200 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-120',
  'SIC-5110-120',
  'SIC-5110-120',
  'sic-5110-120',
  '10-inch 120 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-240',
  'SIC-5110-240',
  'SIC-5110-240',
  'sic-5110-240',
  '10-inch 240 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-360',
  'SIC-5110-360',
  'SIC-5110-360',
  'sic-5110-360',
  '10-inch 360 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-600',
  'SIC-5110-600',
  'SIC-5110-600',
  'sic-5110-600',
  '10-inch 600 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-800',
  'SIC-5110-800',
  'SIC-5110-800',
  'sic-5110-800',
  '10-inch 800 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5110-1200',
  'SIC-5110-1200',
  'SIC-5110-1200',
  'sic-5110-1200',
  '10-inch 1200 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-120',
  'SIC-5112-120',
  'SIC-5112-120',
  'sic-5112-120',
  '12-inch 120 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-240',
  'SIC-5112-240',
  'SIC-5112-240',
  'sic-5112-240',
  '12-inch 240 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-360',
  'SIC-5112-360',
  'SIC-5112-360',
  'sic-5112-360',
  '12-inch 360 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-600',
  'SIC-5112-600',
  'SIC-5112-600',
  'sic-5112-600',
  '12-inch 600 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-800',
  'SIC-5112-800',
  'SIC-5112-800',
  'sic-5112-800',
  '12-inch 800 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'SIC-5112-1200',
  'SIC-5112-1200',
  'SIC-5112-1200',
  'sic-5112-1200',
  '12-inch 1200 grit SiC Foil Abrasive Grinding (50/pkg)',
  'grinding-polishing',
  'SiC Foil / Polyester Film Back',
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
  'ALO-120P8-100',
  'ALO-120P8-100',
  'ALO-120P8-100',
  'alo-120p8-100',
  '8-inch P120 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-220P8-100',
  'ALO-220P8-100',
  'ALO-220P8-100',
  'alo-220p8-100',
  '8-inch P220 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-500P8-100',
  'ALO-500P8-100',
  'ALO-500P8-100',
  'alo-500p8-100',
  '8-inch P500 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1200P8-100',
  'ALO-1200P8-100',
  'ALO-1200P8-100',
  'alo-1200p8-100',
  '8-inch P1200 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-120P10-100',
  'ALO-120P10-100',
  'ALO-120P10-100',
  'alo-120p10-100',
  '10-inch P120 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-220P10-100',
  'ALO-220P10-100',
  'ALO-220P10-100',
  'alo-220p10-100',
  '10-inch P220 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-500P10-100',
  'ALO-500P10-100',
  'ALO-500P10-100',
  'alo-500p10-100',
  '10-inch P500 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-1200P10-100',
  'ALO-1200P10-100',
  'ALO-1200P10-100',
  'alo-1200p10-100',
  '10-inch P12000 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-120P12-100',
  'ALO-120P12-100',
  'ALO-120P12-100',
  'alo-120p12-100',
  '12-inch P120 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-220P12-100',
  'ALO-220P12-100',
  'ALO-220P12-100',
  'alo-220p12-100',
  '12-inch P220 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-500P12-100',
  'ALO-500P12-100',
  'ALO-500P12-100',
  'alo-500p12-100',
  '12-inch P500 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-1200P12-100',
  'ALO-1200P12-100',
  'ALO-1200P12-100',
  'alo-1200p12-100',
  '12-inch P1200 grit Alumina Grinding Papers PSA (adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / PSA',
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
  'ALO-2108-P120',
  'ALO-2108-P120',
  'ALO-2108-P120',
  'alo-2108-p120',
  '8-inch P120 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2108-P220',
  'ALO-2108-P220',
  'ALO-2108-P220',
  'alo-2108-p220',
  '8-inch P220 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2108-P500',
  'ALO-2108-P500',
  'ALO-2108-P500',
  'alo-2108-p500',
  '8-inch P500 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2108-P1200',
  'ALO-2108-P1200',
  'ALO-2108-P1200',
  'alo-2108-p1200',
  '8-inch P1200 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2110-P120',
  'ALO-2110-P120',
  'ALO-2110-P120',
  'alo-2110-p120',
  '10-inch P120 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-2110-P220',
  'ALO-2110-P220',
  'ALO-2110-P220',
  'alo-2110-p220',
  '10-inch P220 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-2110-P500',
  'ALO-2110-P500',
  'ALO-2110-P500',
  'alo-2110-p500',
  '10-inch P500 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-2110-P1200',
  'ALO-2110-P1200',
  'ALO-2110-P1200',
  'alo-2110-p1200',
  '10-inch P1200 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
  true,
  135.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-2112-P120',
  'ALO-2112-P120',
  'ALO-2112-P120',
  'alo-2112-p120',
  '12-inch P120 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2112-P220',
  'ALO-2112-P220',
  'ALO-2112-P220',
  'alo-2112-p220',
  '12-inch P220 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2112-P500',
  'ALO-2112-P500',
  'ALO-2112-P500',
  'alo-2112-p500',
  '12-inch P500 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ALO-2112-P1200',
  'ALO-2112-P1200',
  'ALO-2112-P1200',
  'alo-2112-p1200',
  '12-inch P1200 grit Alumina Grinding Papers (Plain Backed) (100/pkg)',
  'grinding-polishing',
  'Grinding Papers / Alumina / Plain Back',
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
  'ZR-120P08-25',
  'ZR-120P08-25',
  'ZR-120P08-25',
  'zr-120p08-25',
  '8-inch 120-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZR-220P08-25',
  'ZR-220P08-25',
  'ZR-220P08-25',
  'zr-220p08-25',
  '8-inch 220-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZR-120P10-25',
  'ZR-120P10-25',
  'ZR-120P10-25',
  'zr-120p10-25',
  '10-inch 120-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZR-220P10-25',
  'ZR-220P10-25',
  'ZR-220P10-25',
  'zr-220p10-25',
  '10-inch 220-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZR-120P12-25',
  'ZR-120P12-25',
  'ZR-120P12-25',
  'zr-120p12-25',
  '12-inch 120-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZR-220P12-25',
  'ZR-220P12-25',
  'ZR-220P12-25',
  'zr-220p12-25',
  '12-inch 220-grit Zirconia (PSA adhesive backed) paper (25/pkg)',
  'grinding-polishing',
  'Grinding Papers / Zirconia / PSA',
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
  'ZRO2-B060',
  'ZRO2-B060',
  'ZRO2-B060',
  'zro2-b060',
  '60 grit Zirconia Abrasive Grinding Belts (4-inch x 36-inch) (5/box)',
  'grinding-polishing',
  'Abrasive Belts',
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
  'ZRO2-B120',
  'ZRO2-B120',
  'ZRO2-B120',
  'zro2-b120',
  '120 grit Zirconia Abrasive Grinding Belts (4-inch x 36-inch) (5/box)',
  'grinding-polishing',
  'Abrasive Belts',
  true,
  85.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
