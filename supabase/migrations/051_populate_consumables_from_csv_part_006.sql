-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 6 of 16
-- Statements 1001 to 1200

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NP-7012-MAG',
  'NP-7012-MAG',
  'NP-7012-MAG',
  'np-7012-mag',
  '12-inch NAPPAD Polishing Pad with Magnetic Rubber',
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
  'NP-7014-MAG',
  'NP-7014-MAG',
  'NP-7014-MAG',
  'np-7014-mag',
  '14-inch NAPPAD Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  190.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MT2-7008-MAG',
  'MT2-7008-MAG',
  'MT2-7008-MAG',
  'mt2-7008-mag',
  '8-inch MOLTEC 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
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
  'MT2-7010-MAG',
  'MT2-7010-MAG',
  'MT2-7010-MAG',
  'mt2-7010-mag',
  '10-inch MOLTEC 2 Polishing Pad with Magnetic Rubber',
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
  'MT2-7012-MAG',
  'MT2-7012-MAG',
  'MT2-7012-MAG',
  'mt2-7012-mag',
  '12-inch MOLTEC 2 Polishing Pad with Magnetic Rubber',
  'grinding-polishing',
  'Polishing Pads / Mag Rubber',
  true,
  162.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MT2-7014-MAG',
  'MT2-7014-MAG',
  'MT2-7014-MAG',
  'mt2-7014-mag',
  '14-inch MOLTEC 2 Polishing Pad with Magnetic Rubber',
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
  'FP-8125-08-MAG',
  'FP-8125-08-MAG',
  'FP-8125-08-MAG',
  'fp-8125-08-mag',
  '8-inch FELTPAD Polishing Pad with Magnetic Rubber',
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
  'FP-8125-10-MAG',
  'FP-8125-10-MAG',
  'FP-8125-10-MAG',
  'fp-8125-10-mag',
  '10-inch FELTPAD Polishing Pad with Magnetic Rubber',
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
  'FP-8125-12-MAG',
  'FP-8125-12-MAG',
  'FP-8125-12-MAG',
  'fp-8125-12-mag',
  '12-inch FELTPAD Polishing Pad with Magnetic Rubber',
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
  'FP-8125-14-MAG',
  'FP-8125-14-MAG',
  'FP-8125-14-MAG',
  'fp-8125-14-mag',
  '14-inch FELTPAD Polishing Pad with Magnetic Rubber',
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
  'CMESH-2008-SSMAG',
  'CMESH-2008-SSMAG',
  'CMESH-2008-SSMAG',
  'cmesh-2008-ssmag',
  '8-inch CERMESH Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'CMESH-2010-SSMAG',
  'CMESH-2010-SSMAG',
  'CMESH-2010-SSMAG',
  'cmesh-2010-ssmag',
  '10-inch CERMESH Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'CMESH-2012-SSMAG',
  'CMESH-2012-SSMAG',
  'CMESH-2012-SSMAG',
  'cmesh-2012-ssmag',
  '12-inch CERMESH Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  278.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CMESH-2014-SSMAG',
  'CMESH-2014-SSMAG',
  'CMESH-2014-SSMAG',
  'cmesh-2014-ssmag',
  '14-inch CERMESH Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'PP-6008-SSMAG',
  'PP-6008-SSMAG',
  'PP-6008-SSMAG',
  'pp-6008-ssmag',
  '8-inch POLYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'PP-6010-SSMAG',
  'PP-6010-SSMAG',
  'PP-6010-SSMAG',
  'pp-6010-ssmag',
  '10-inch POLYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'PP-6012-SSMAG',
  'PP-6012-SSMAG',
  'PP-6012-SSMAG',
  'pp-6012-ssmag',
  '12-inch POLYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'PP-6014-SSMAG',
  'PP-6014-SSMAG',
  'PP-6014-SSMAG',
  'pp-6014-ssmag',
  '14-inch POLYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  235.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'TP-5008-SSMAG',
  'TP-5008-SSMAG',
  'TP-5008-SSMAG',
  'tp-5008-ssmag',
  '8-inch TEXPAN Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TP-5010-SSMAG',
  'TP-5010-SSMAG',
  'TP-5010-SSMAG',
  'tp-5010-ssmag',
  '10-inch TEXPAN Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TP-5012-SSMAG',
  'TP-5012-SSMAG',
  'TP-5012-SSMAG',
  'tp-5012-ssmag',
  '12-inch TEXPAN Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TP-5014-SSMAG',
  'TP-5014-SSMAG',
  'TP-5014-SSMAG',
  'tp-5014-ssmag',
  '14-inch TEXPAN Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'BC2-8008-SSMAG',
  'BC2-8008-SSMAG',
  'BC2-8008-SSMAG',
  'bc2-8008-ssmag',
  '8-inch Black Chem 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  162.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'BC2-8010-SSMAG',
  'BC2-8010-SSMAG',
  'BC2-8010-SSMAG',
  'bc2-8010-ssmag',
  '10-inch Black Chem 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  190.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'BC2-8012-SSMAG',
  'BC2-8012-SSMAG',
  'BC2-8012-SSMAG',
  'bc2-8012-ssmag',
  '12-inch Black Chem 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'BC2-8014-SSMAG',
  'BC2-8014-SSMAG',
  'BC2-8014-SSMAG',
  'bc2-8014-ssmag',
  '14-inch Black Chem 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'DC2-3008-SSMAG',
  'DC2-3008-SSMAG',
  'DC2-3008-SSMAG',
  'dc2-3008-ssmag',
  '8-inch DACRON II Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  162.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DC2-3010-SSMAG',
  'DC2-3010-SSMAG',
  'DC2-3010-SSMAG',
  'dc2-3010-ssmag',
  '10-inch DACRON II Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  190.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DC2-3012-SSMAG',
  'DC2-3012-SSMAG',
  'DC2-3012-SSMAG',
  'dc2-3012-ssmag',
  '12-inch DACRON II Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'DC2-3014-SSMAG',
  'DC2-3014-SSMAG',
  'DC2-3014-SSMAG',
  'dc2-3014-ssmag',
  '14-inch DACRON II Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  305.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NY-3008-SSMAG',
  'NY-3008-SSMAG',
  'NY-3008-SSMAG',
  'ny-3008-ssmag',
  '8-inch NYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NY-3010-SSMAG',
  'NY-3010-SSMAG',
  'NY-3010-SSMAG',
  'ny-3010-ssmag',
  '10-inch NYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NY-3012-SSMAG',
  'NY-3012-SSMAG',
  'NY-3012-SSMAG',
  'ny-3012-ssmag',
  '12-inch NYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NY-3014-SSMAG',
  'NY-3014-SSMAG',
  'NY-3014-SSMAG',
  'ny-3014-ssmag',
  '14-inch NYPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'GP-4008-SSMAG',
  'GP-4008-SSMAG',
  'GP-4008-SSMAG',
  'gp-4008-ssmag',
  '8-inch GOLDPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'GP-4010-SSMAG',
  'GP-4010-SSMAG',
  'GP-4010-SSMAG',
  'gp-4010-ssmag',
  '10-inch GOLDPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'GP-4012-SSMAG',
  'GP-4012-SSMAG',
  'GP-4012-SSMAG',
  'gp-4012-ssmag',
  '12-inch GOLDPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'GP-4014-SSMAG',
  'GP-4014-SSMAG',
  'GP-4014-SSMAG',
  'gp-4014-ssmag',
  '14-inch GOLDPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'ATL-3008-SSMAG',
  'ATL-3008-SSMAG',
  'ATL-3008-SSMAG',
  'atl-3008-ssmag',
  '8-inch ATLANTIS Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'ATL-3010-SSMAG',
  'ATL-3010-SSMAG',
  'ATL-3010-SSMAG',
  'atl-3010-ssmag',
  '10-inch ATLANTIS Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'ATL-3012-SSMAG',
  'ATL-3012-SSMAG',
  'ATL-3012-SSMAG',
  'atl-3012-ssmag',
  '12-inch ATLANTIS Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  152.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ATL-3014-SSMAG',
  'ATL-3014-SSMAG',
  'ATL-3014-SSMAG',
  'atl-3014-ssmag',
  '14-inch ATLANTIS Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MP-9008-SSMAG',
  'MP-9008-SSMAG',
  'MP-9008-SSMAG',
  'mp-9008-ssmag',
  '8-inch MICROPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MP-9010-SSMAG',
  'MP-9010-SSMAG',
  'MP-9010-SSMAG',
  'mp-9010-ssmag',
  '10-inch MICROPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MP-9012-SSMAG',
  'MP-9012-SSMAG',
  'MP-9012-SSMAG',
  'mp-9012-ssmag',
  '12-inch MICROPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MP-9014-SSMAG',
  'MP-9014-SSMAG',
  'MP-9014-SSMAG',
  'mp-9014-ssmag',
  '14-inch MICROPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  178.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'TRI-4008-SSMAG',
  'TRI-4008-SSMAG',
  'TRI-4008-SSMAG',
  'tri-4008-ssmag',
  '8-inch TRICOTE Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TRI-4010-SSMAG',
  'TRI-4010-SSMAG',
  'TRI-4010-SSMAG',
  'tri-4010-ssmag',
  '10-inch TRICOTE Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TRI-4012-SSMAG',
  'TRI-4012-SSMAG',
  'TRI-4012-SSMAG',
  'tri-4012-ssmag',
  '12-inch TRICOTE Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'TRI-4014-SSMAG',
  'TRI-4014-SSMAG',
  'TRI-4014-SSMAG',
  'tri-4014-ssmag',
  '14-inch TRICOTE Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NP-7008-SSMAG',
  'NP-7008-SSMAG',
  'NP-7008-SSMAG',
  'np-7008-ssmag',
  '8-inch NAPPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  84.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'NP-7010-SSMAG',
  'NP-7010-SSMAG',
  'NP-7010-SSMAG',
  'np-7010-ssmag',
  '10-inch NAPPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NP-7012-SSMAG',
  'NP-7012-SSMAG',
  'NP-7012-SSMAG',
  'np-7012-ssmag',
  '12-inch NAPPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'NP-7014-SSMAG',
  'NP-7014-SSMAG',
  'NP-7014-SSMAG',
  'np-7014-ssmag',
  '14-inch NAPPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  178.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MT2-7008-SSMAG',
  'MT2-7008-SSMAG',
  'MT2-7008-SSMAG',
  'mt2-7008-ssmag',
  '8-inch MOLTEC 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MT2-7010-SSMAG',
  'MT2-7010-SSMAG',
  'MT2-7010-SSMAG',
  'mt2-7010-ssmag',
  '10-inch MOLTEC 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MT2-7012-SSMAG',
  'MT2-7012-SSMAG',
  'MT2-7012-SSMAG',
  'mt2-7012-ssmag',
  '12-inch MOLTEC 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MT2-7014-SSMAG',
  'MT2-7014-SSMAG',
  'MT2-7014-SSMAG',
  'mt2-7014-ssmag',
  '14-inch MOLTEC 2 Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'FP-8125-08-SSMAG',
  'FP-8125-08-SSMAG',
  'FP-8125-08-SSMAG',
  'fp-8125-08-ssmag',
  '8-inch FELTPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'FP-8125-10-SSMAG',
  'FP-8125-10-SSMAG',
  'FP-8125-10-SSMAG',
  'fp-8125-10-ssmag',
  '10-inch FELTPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'FP-8125-12-SSMAG',
  'FP-8125-12-SSMAG',
  'FP-8125-12-SSMAG',
  'fp-8125-12-ssmag',
  '12-inch FELTPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'FP-8125-14-SSMAG',
  'FP-8125-14-SSMAG',
  'FP-8125-14-SSMAG',
  'fp-8125-14-ssmag',
  '14-inch FELTPAD Polishing Pad with Magnetic Stainless Steel Backing',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-B08',
  'MAG-B08',
  'MAG-B08',
  'mag-b08',
  '8-inch MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  55.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAG-B10',
  'MAG-B10',
  'MAG-B10',
  'mag-b10',
  '10-inch MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-B12',
  'MAG-B12',
  'MAG-B12',
  'mag-b12',
  '12-inch MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-B14',
  'MAG-B14',
  'MAG-B14',
  'mag-b14',
  '14-inch MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-B200',
  'MAG-B200',
  'MAG-B200',
  'mag-b200',
  '200 mm MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
  true,
  55.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAG-B250',
  'MAG-B250',
  'MAG-B250',
  'mag-b250',
  '250 mm MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-B300',
  'MAG-B300',
  'MAG-B300',
  'mag-b300',
  '300 mm MAGNETON Magnetic Base Plate with PSA (adhesive backed)',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-P08',
  'MAG-P08',
  'MAG-P08',
  'mag-p08',
  '8-inch MAGNEPAD Teflon Coated Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-P10',
  'MAG-P10',
  'MAG-P10',
  'mag-p10',
  '10-inch MAGNEPAD Teflon Coated Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-P12',
  'MAG-P12',
  'MAG-P12',
  'mag-p12',
  '12-inch MAGNEPAD Teflon Coated Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'MAG-P14',
  'MAG-P14',
  'MAG-P14',
  'mag-p14',
  '14-inch MAGNEPAD Teflon Coated Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'SSMAG-P08',
  'SSMAG-P08',
  'SSMAG-P08',
  'ssmag-p08',
  '8-inch MAGNEPAD Stainless Steel Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'SSMAG-P10',
  'SSMAG-P10',
  'SSMAG-P10',
  'ssmag-p10',
  '10-inch MAGNEPAD Stainless Steel Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'SSMAG-P12',
  'SSMAG-P12',
  'SSMAG-P12',
  'ssmag-p12',
  '12-inch MAGNEPAD Stainless Steel Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'SSMAG-P14',
  'SSMAG-P14',
  'SSMAG-P14',
  'ssmag-p14',
  '14-inch MAGNEPAD Stainless Steel Magnetic Base Plate',
  'grinding-polishing',
  'Polishing Pads / SS Mag',
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
  'PC-0105-250',
  'PC-0105-250',
  'PC-0105-250',
  'pc-0105-250',
  '0.05 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0105-500',
  'PC-0105-500',
  'PC-0105-500',
  'pc-0105-500',
  '0.05 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0105-1GL',
  'PC-0105-1GL',
  'PC-0105-1GL',
  'pc-0105-1gl',
  '0.05 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-0105-5L',
  'PC-0105-5L',
  'PC-0105-5L',
  'pc-0105-5l',
  '0.05 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-0110-250',
  'PC-0110-250',
  'PC-0110-250',
  'pc-0110-250',
  '0.10 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0110-500',
  'PC-0110-500',
  'PC-0110-500',
  'pc-0110-500',
  '0.10 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0110-1GL',
  'PC-0110-1GL',
  'PC-0110-1GL',
  'pc-0110-1gl',
  '0.10 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0110-5L',
  'PC-0110-5L',
  'PC-0110-5L',
  'pc-0110-5l',
  '0.10 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-0125-250',
  'PC-0125-250',
  'PC-0125-250',
  'pc-0125-250',
  '0.25 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0125-500',
  'PC-0125-500',
  'PC-0125-500',
  'pc-0125-500',
  '0.25 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0125-1GL',
  'PC-0125-1GL',
  'PC-0125-1GL',
  'pc-0125-1gl',
  '0.25 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0125-5L',
  'PC-0125-5L',
  'PC-0125-5L',
  'pc-0125-5l',
  '0.25 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-0150-250',
  'PC-0150-250',
  'PC-0150-250',
  'pc-0150-250',
  '0.50 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0150-500',
  'PC-0150-500',
  'PC-0150-500',
  'pc-0150-500',
  '0.50 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0150-1GL',
  'PC-0150-1GL',
  'PC-0150-1GL',
  'pc-0150-1gl',
  '0.50 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-0150-5L',
  'PC-0150-5L',
  'PC-0150-5L',
  'pc-0150-5l',
  '0.50 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1001-250',
  'PC-1001-250',
  'PC-1001-250',
  'pc-1001-250',
  '1 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1001-500',
  'PC-1001-500',
  'PC-1001-500',
  'pc-1001-500',
  '1 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1001-1GL',
  'PC-1001-1GL',
  'PC-1001-1GL',
  'pc-1001-1gl',
  '1 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1001-5L',
  'PC-1001-5L',
  'PC-1001-5L',
  'pc-1001-5l',
  '1 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1003-250',
  'PC-1003-250',
  'PC-1003-250',
  'pc-1003-250',
  '3 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1003-500',
  'PC-1003-500',
  'PC-1003-500',
  'pc-1003-500',
  '3 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1003-1GL',
  'PC-1003-1GL',
  'PC-1003-1GL',
  'pc-1003-1gl',
  '3 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1003-5L',
  'PC-1003-5L',
  'PC-1003-5L',
  'pc-1003-5l',
  '3 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1006-250',
  'PC-1006-250',
  'PC-1006-250',
  'pc-1006-250',
  '6 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1006-500',
  'PC-1006-500',
  'PC-1006-500',
  'pc-1006-500',
  '6 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1006-1GL',
  'PC-1006-1GL',
  'PC-1006-1GL',
  'pc-1006-1gl',
  '6 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  585.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1006-5L',
  'PC-1006-5L',
  'PC-1006-5L',
  'pc-1006-5l',
  '6 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1009-250',
  'PC-1009-250',
  'PC-1009-250',
  'pc-1009-250',
  '9 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1009-500',
  'PC-1009-500',
  'PC-1009-500',
  'pc-1009-500',
  '9 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1009-1GL',
  'PC-1009-1GL',
  'PC-1009-1GL',
  'pc-1009-1gl',
  '9 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  585.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1009-5L',
  'PC-1009-5L',
  'PC-1009-5L',
  'pc-1009-5l',
  '9 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1015-250',
  'PC-1015-250',
  'PC-1015-250',
  'pc-1015-250',
  '15 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1015-500',
  'PC-1015-500',
  'PC-1015-500',
  'pc-1015-500',
  '15 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1015-1GL',
  'PC-1015-1GL',
  'PC-1015-1GL',
  'pc-1015-1gl',
  '15 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  585.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1015-5L',
  'PC-1015-5L',
  'PC-1015-5L',
  'pc-1015-5l',
  '15 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1030-250',
  'PC-1030-250',
  'PC-1030-250',
  'pc-1030-250',
  '30 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1030-500',
  'PC-1030-500',
  'PC-1030-500',
  'pc-1030-500',
  '30 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1030-1GL',
  'PC-1030-1GL',
  'PC-1030-1GL',
  'pc-1030-1gl',
  '30 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1030-5L',
  'PC-1030-5L',
  'PC-1030-5L',
  'pc-1030-5l',
  '30 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1045-250',
  'PC-1045-250',
  'PC-1045-250',
  'pc-1045-250',
  '45 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1045-500',
  'PC-1045-500',
  'PC-1045-500',
  'pc-1045-500',
  '45 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
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
  'PC-1045-1GL',
  'PC-1045-1GL',
  'PC-1045-1GL',
  'pc-1045-1gl',
  '45 micron DIAMAT Polycrystalline High Viscosity Diamond Abrasive (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PC-1045-5L',
  'PC-1045-5L',
  'PC-1045-5L',
  'pc-1045-5l',
  '45 micron high viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline High Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-0105-250',
  'GPC-0105-250',
  'GPC-0105-250',
  'gpc-0105-250',
  '0.05 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0105-500',
  'GPC-0105-500',
  'GPC-0105-500',
  'gpc-0105-500',
  '0.05 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0105-1GL',
  'GPC-0105-1GL',
  'GPC-0105-1GL',
  'gpc-0105-1gl',
  '0.05 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-0105-5L',
  'GPC-0105-5L',
  'GPC-0105-5L',
  'gpc-0105-5l',
  '0.05 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-0110-250',
  'GPC-0110-250',
  'GPC-0110-250',
  'gpc-0110-250',
  '0.10 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0110-500',
  'GPC-0110-500',
  'GPC-0110-500',
  'gpc-0110-500',
  '0.10 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0110-1GL',
  'GPC-0110-1GL',
  'GPC-0110-1GL',
  'gpc-0110-1gl',
  '0.10 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-0110-5L',
  'GPC-0110-5L',
  'GPC-0110-5L',
  'gpc-0110-5l',
  '0.10 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-0125-250',
  'GPC-0125-250',
  'GPC-0125-250',
  'gpc-0125-250',
  '0.25 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0125-500',
  'GPC-0125-500',
  'GPC-0125-500',
  'gpc-0125-500',
  '0.25 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0125-1GL',
  'GPC-0125-1GL',
  'GPC-0125-1GL',
  'gpc-0125-1gl',
  '0.25 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-0125-5L',
  'GPC-0125-5L',
  'GPC-0125-5L',
  'gpc-0125-5l',
  '0.25 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-0150-250',
  'GPC-0150-250',
  'GPC-0150-250',
  'gpc-0150-250',
  '0.50 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0150-500',
  'GPC-0150-500',
  'GPC-0150-500',
  'gpc-0150-500',
  '0.50 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-0150-1GL',
  'GPC-0150-1GL',
  'GPC-0150-1GL',
  'gpc-0150-1gl',
  '0.50 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-0150-5L',
  'GPC-0150-5L',
  'GPC-0150-5L',
  'gpc-0150-5l',
  '0.50 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1001-250',
  'GPC-1001-250',
  'GPC-1001-250',
  'gpc-1001-250',
  '1 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1001-500',
  'GPC-1001-500',
  'GPC-1001-500',
  'gpc-1001-500',
  '1 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1001-1GL',
  'GPC-1001-1GL',
  'GPC-1001-1GL',
  'gpc-1001-1gl',
  '1 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-1001-5L',
  'GPC-1001-5L',
  'GPC-1001-5L',
  'gpc-1001-5l',
  '1 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  900.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1003-250',
  'GPC-1003-250',
  'GPC-1003-250',
  'gpc-1003-250',
  '3 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1003-500',
  'GPC-1003-500',
  'GPC-1003-500',
  'gpc-1003-500',
  '3 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1003-1GL',
  'GPC-1003-1GL',
  'GPC-1003-1GL',
  'gpc-1003-1gl',
  '3 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1003-5L',
  'GPC-1003-5L',
  'GPC-1003-5L',
  'gpc-1003-5l',
  '3 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1006-250',
  'GPC-1006-250',
  'GPC-1006-250',
  'gpc-1006-250',
  '6 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1006-500',
  'GPC-1006-500',
  'GPC-1006-500',
  'gpc-1006-500',
  '6 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1006-1GL',
  'GPC-1006-1GL',
  'GPC-1006-1GL',
  'gpc-1006-1gl',
  '6 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-1006-5L',
  'GPC-1006-5L',
  'GPC-1006-5L',
  'gpc-1006-5l',
  '6 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1009-250',
  'GPC-1009-250',
  'GPC-1009-250',
  'gpc-1009-250',
  '9 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1009-500',
  'GPC-1009-500',
  'GPC-1009-500',
  'gpc-1009-500',
  '9 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1009-1GL',
  'GPC-1009-1GL',
  'GPC-1009-1GL',
  'gpc-1009-1gl',
  '9 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-1009-5L',
  'GPC-1009-5L',
  'GPC-1009-5L',
  'gpc-1009-5l',
  '9 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1015-250',
  'GPC-1015-250',
  'GPC-1015-250',
  'gpc-1015-250',
  '15 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1015-500',
  'GPC-1015-500',
  'GPC-1015-500',
  'gpc-1015-500',
  '15 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1015-1GL',
  'GPC-1015-1GL',
  'GPC-1015-1GL',
  'gpc-1015-1gl',
  '15 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
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
  'GPC-1015-5L',
  'GPC-1015-5L',
  'GPC-1015-5L',
  'gpc-1015-5l',
  '15 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1100.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1030-250',
  'GPC-1030-250',
  'GPC-1030-250',
  'gpc-1030-250',
  '30 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1030-500',
  'GPC-1030-500',
  'GPC-1030-500',
  'gpc-1030-500',
  '30 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1030-1GL',
  'GPC-1030-1GL',
  'GPC-1030-1GL',
  'gpc-1030-1gl',
  '30 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1030-5L',
  'GPC-1030-5L',
  'GPC-1030-5L',
  'gpc-1030-5l',
  '30 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1045-250',
  'GPC-1045-250',
  'GPC-1045-250',
  'gpc-1045-250',
  '45 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1045-500',
  'GPC-1045-500',
  'GPC-1045-500',
  'gpc-1045-500',
  '45 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
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
  'GPC-1045-1GL',
  'GPC-1045-1GL',
  'GPC-1045-1GL',
  'gpc-1045-1gl',
  '45 micron DIAMAT Polycrystalline Low Viscosity Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  600.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GPC-1045-5L',
  'GPC-1045-5L',
  'GPC-1045-5L',
  'gpc-1045-5l',
  '45 micron low viscosity DIAMAT PC diamond (5 liters)',
  'grinding-polishing',
  'Polycrystalline Low Viscosity Diamond Abrasive',
  true,
  1250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-0105-250',
  'WPC-0105-250',
  'WPC-0105-250',
  'wpc-0105-250',
  '0.05 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
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
  'WPC-0105-500',
  'WPC-0105-500',
  'WPC-0105-500',
  'wpc-0105-500',
  '0.05 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
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
  'WPC-0105-1GL',
  'WPC-0105-1GL',
  'WPC-0105-1GL',
  'wpc-0105-1gl',
  '0.05 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
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
  'WPC-0105-5L',
  'WPC-0105-5L',
  'WPC-0105-5L',
  'wpc-0105-5l',
  '0.05 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
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
  'WPC-0110-250',
  'WPC-0110-250',
  'WPC-0110-250',
  'wpc-0110-250',
  '0.10 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0110-500',
  'WPC-0110-500',
  'WPC-0110-500',
  'wpc-0110-500',
  '0.10 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0110-1GL',
  'WPC-0110-1GL',
  'WPC-0110-1GL',
  'wpc-0110-1gl',
  '0.10 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0110-5L',
  'WPC-0110-5L',
  'WPC-0110-5L',
  'wpc-0110-5l',
  '0.10 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  850.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-0125-250',
  'WPC-0125-250',
  'WPC-0125-250',
  'wpc-0125-250',
  '0.25 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0125-500',
  'WPC-0125-500',
  'WPC-0125-500',
  'wpc-0125-500',
  '0.25 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0125-1GL',
  'WPC-0125-1GL',
  'WPC-0125-1GL',
  'wpc-0125-1gl',
  '0.25 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0125-5L',
  'WPC-0125-5L',
  'WPC-0125-5L',
  'wpc-0125-5l',
  '0.25 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  850.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-0150-250',
  'WPC-0150-250',
  'WPC-0150-250',
  'wpc-0150-250',
  '0.50 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0150-500',
  'WPC-0150-500',
  'WPC-0150-500',
  'wpc-0150-500',
  '0.50 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0150-1GL',
  'WPC-0150-1GL',
  'WPC-0150-1GL',
  'wpc-0150-1gl',
  '0.50 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-0150-5L',
  'WPC-0150-5L',
  'WPC-0150-5L',
  'wpc-0150-5l',
  '0.50 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  850.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1001-250',
  'WPC-1001-250',
  'WPC-1001-250',
  'wpc-1001-250',
  '1 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1001-500',
  'WPC-1001-500',
  'WPC-1001-500',
  'wpc-1001-500',
  '1 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1001-1GL',
  'WPC-1001-1GL',
  'WPC-1001-1GL',
  'wpc-1001-1gl',
  '1 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1001-5L',
  'WPC-1001-5L',
  'WPC-1001-5L',
  'wpc-1001-5l',
  '1 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  850.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1003-250',
  'WPC-1003-250',
  'WPC-1003-250',
  'wpc-1003-250',
  '3 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1003-500',
  'WPC-1003-500',
  'WPC-1003-500',
  'wpc-1003-500',
  '3 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1003-1GL',
  'WPC-1003-1GL',
  'WPC-1003-1GL',
  'wpc-1003-1gl',
  '3 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1003-5L',
  'WPC-1003-5L',
  'WPC-1003-5L',
  'wpc-1003-5l',
  '3 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  995.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WPC-1006-250',
  'WPC-1006-250',
  'WPC-1006-250',
  'wpc-1006-250',
  '6 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1006-500',
  'WPC-1006-500',
  'WPC-1006-500',
  'wpc-1006-500',
  '6 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1006-1GL',
  'WPC-1006-1GL',
  'WPC-1006-1GL',
  'wpc-1006-1gl',
  '6 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1006-5L',
  'WPC-1006-5L',
  'WPC-1006-5L',
  'wpc-1006-5l',
  '6 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
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
  'WPC-1009-250',
  'WPC-1009-250',
  'WPC-1009-250',
  'wpc-1009-250',
  '9 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1009-500',
  'WPC-1009-500',
  'WPC-1009-500',
  'wpc-1009-500',
  '9 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1009-1GL',
  'WPC-1009-1GL',
  'WPC-1009-1GL',
  'wpc-1009-1gl',
  '9 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1009-5L',
  'WPC-1009-5L',
  'WPC-1009-5L',
  'wpc-1009-5l',
  '9 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (5 liters)',
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
  'WPC-1015-250',
  'WPC-1015-250',
  'WPC-1015-250',
  'wpc-1015-250',
  '15 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (250 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1015-500',
  'WPC-1015-500',
  'WPC-1015-500',
  'wpc-1015-500',
  '15 micron DIAMAT Polycrystalline water-based Diamond Abrasive Suspension (500 ml)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
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
  'WPC-1015-1GL',
  'WPC-1015-1GL',
  'WPC-1015-1GL',
  'wpc-1015-1gl',
  '15 micron DIAMAT Polycrystalline water-based Diamond Abrasive  (1 gallon refill)',
  'grinding-polishing',
  'Polycrystalline Water-Based Diamond Abrasive',
  true,
  550.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
