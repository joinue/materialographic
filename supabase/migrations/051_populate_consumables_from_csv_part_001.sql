-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 1 of 16
-- Statements 1 to 200

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-C250',
  'MAX-C250',
  'MAX-C250',
  'max-c250',
  '10-inch x 0.039-inch x 32 mm (~1.25-inch) MAXCUT Silicon carbide/resin-rubber bonded abrasive blade (MOS 3440) (Hard non-ferrous metals- titanium, zirconium, etc.)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-D250',
  'MAX-D250',
  'MAX-D250',
  'max-d250',
  '10-inch x 0.059-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 4585) (General purpose blade for steels and ferrous metals)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-E250',
  'MAX-E250',
  'MAX-E250',
  'max-e250',
  '10-inch x 0.059-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 4500) (Soft non-ferrous metals- aluminum, brass, zinc, etc)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-I250',
  'MAX-I250',
  'MAX-I250',
  'max-i250',
  '10-inch x 0.059-inch x 32 mm (~1.25-inch) MAXCUT reinforced alumina/resin bonded abrasive blade (MOS 4500) (Industrial purpose blade)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-VHS250',
  'MAX-VHS250',
  'MAX-VHS250',
  'max-vhs250',
  '10-inch x 0.075-inch x 32 mm (~1.25-inch) MAXCUT alumina/rubber bonded abrasive blade (MOS 3055 rpm) (Hardened steels)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-VHS2-250',
  'MAX-VHS2-250',
  'MAX-VHS2-250',
  'max-vhs2-250',
  NULL,
  'sectioning',
  'Abrasive Blades',
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
  'MAX-A300',
  'MAX-A300',
  'MAX-A300',
  'max-a300',
  '12-inch x 0.055-inch x 32 mm (~1.25-inch) MAXCUT Alumina resin-rubber bonded abrasive blade (MOS 3185 rpm) (Universal thin blade)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-C300',
  'MAX-C300',
  'MAX-C300',
  'max-c300',
  '12-inch x 0.055-inch x 32 mm (~1.25-inch) MAXCUT silicon carbide/resin-rubber bonded abrasive blade (MOS 3185) (Hard non-ferrous metals- titanium, zirconium, etc.)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-D300',
  'MAX-D300',
  'MAX-D300',
  'max-d300',
  '12-inch x 0.075-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3820) (General purpose blade for steels and ferrous metals)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-E300',
  'MAX-E300',
  'MAX-E300',
  'max-e300',
  '12-inch x 0.069-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3800) (Soft non-ferrous metals- aluminum, brass, zinc, etc)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-I300',
  'MAX-I300',
  'MAX-I300',
  'max-i300',
  '12-inch x 0.069-inch x 32 mm (~1.25-inch) MAXCUT reinforced alumina/resin bonded abrasive blade (MOS 3800) (Industrial purpose blade)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-VHS300',
  'MAX-VHS300',
  'MAX-VHS300',
  'max-vhs300',
  '12-inch x 0.078-inch x 32 mm (~1.25-inch) MAXCUT alumina/rubber bonded abrasive blade (MOS 3350 rpm) (Hardened steels)',
  'sectioning',
  'Abrasive Blades',
  true,
  450.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-VHS2-300',
  'MAX-VHS2-300',
  'MAX-VHS2-300',
  'max-vhs2-300',
  NULL,
  'sectioning',
  'Abrasive Blades',
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
  'MAX-A350',
  'MAX-A350',
  'MAX-A350',
  'max-a350',
  '14-inch x 0.055-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin-rubber bonded abrasive blade (MOS 2730 rpm) (Universal thin blade)',
  'sectioning',
  'Abrasive Blades',
  true,
  450.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-C350',
  'MAX-C350',
  'MAX-C350',
  'max-c350',
  '14-inch x 0.055-inch x 32 mm (~1.25-inch) MAXCUT silicon carbide/resin-rubber bonded abrasive blade (MOS 2460) (Hard non-ferrous metals- titanium, zirconium, etc.)',
  'sectioning',
  'Abrasive Blades',
  true,
  450.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-D350',
  'MAX-D350',
  'MAX-D350',
  'max-d350',
  '14-inch x 0.085-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3275) (General purpose blade for steels and ferrous metals)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-E350',
  'MAX-E350',
  'MAX-E350',
  'max-e350',
  '14-inch x 0.085-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3200) (Soft non-ferrous metals- aluminum, brass, zinc, etc)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-I350',
  'MAX-I350',
  'MAX-I350',
  'max-i350',
  '14-inch x 0.085-inch x 32 mm (~1.25-inch) MAXCUT reinforced alumina/resin bonded abrasive blade (MOS 2220) (Industrial purpose blade)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-VHS350',
  'MAX-VHS350',
  'MAX-VHS350',
  'max-vhs350',
  '14-inch x 0.098-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3200 rpm) (Hardened steels)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-VHS2-350',
  'MAX-VHS2-350',
  'MAX-VHS2-350',
  'max-vhs2-350',
  NULL,
  'sectioning',
  'Abrasive Blades',
  true,
  475.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-A400',
  'MAX-A400',
  'MAX-A400',
  'max-a400',
  '16-inch x 0.079-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin-rubber bonded abrasive blade (MOS 2860 rpm) (Universal thin blade)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-C400',
  'MAX-C400',
  'MAX-C400',
  'max-c400',
  '16-inch x 0.079-inch x 32 mm (~1.25-inch) MAXCUT silicon carbide/resin-rubber bonded abrasive blade (MOS 2390) (Hard non-ferrous metals- titanium, zirconium, etc.)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-D400',
  'MAX-D400',
  'MAX-D400',
  'max-d400',
  '16-inch x 0.130-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3800) (General purpose blade for steels and ferrous metals)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-E400',
  'MAX-E400',
  'MAX-E400',
  'max-e400',
  '16-inch x 0.130-inch x 32 mm (~1.25-inch) MAXCUT alumina/resin bonded abrasive blade (MOS 3800) (Soft non-ferrous metals- aluminum, brass, zinc, etc)',
  'sectioning',
  'Abrasive Blades',
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
  'MAX-I400',
  'MAX-I400',
  'MAX-I400',
  'max-i400',
  '16-inch x 0.130-inch x 32 mm (~1.25-inch) MAXCUT reinforced alumina/resin bonded abrasive blade (MOS 3800) (Industrial purpose blade)',
  'sectioning',
  'Abrasive Blades',
  true,
  470.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-VHS400',
  'MAX-VHS400',
  'MAX-VHS400',
  'max-vhs400',
  '16-inch x 0.130-inch x 32 mm (~1.25-inch) MAXCUT alumina/rubber bonded abrasive blade (MOS 1925 rpm) (Hardened steels)',
  'sectioning',
  'Abrasive Blades',
  true,
  595.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-VHS2-400',
  'MAX-VHS2-400',
  'MAX-VHS2-400',
  'max-vhs2-400',
  NULL,
  'sectioning',
  'Abrasive Blades',
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
  'DMAX-250',
  'DMAX-250',
  'DMAX-250',
  'dmax-250',
  '10-inch x 1.5 mm thick x 1.25-inch 180 grit high concentration Diamond Abrasive Blade cutting wheel (each)',
  'sectioning',
  'Abrasive Blades',
  true,
  800.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DMAX-305',
  'DMAX-305',
  'DMAX-305',
  'dmax-305',
  '12-inch x 1.5 mm thick x 1.25-inch 180 grit high concentration Diamond Abrasive Blade cutting wheel (each)',
  'sectioning',
  'Abrasive Blades',
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
  'DMAX-350',
  'DMAX-350',
  'DMAX-350',
  'dmax-350',
  '14-inch x 1.5 mm thick x 1.25-inch 180 grit high concentration Diamond Abasive Blade cutting wheel (each)',
  'sectioning',
  'Abrasive Blades',
  true,
  1190.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DMAX-400',
  'DMAX-400',
  'DMAX-400',
  'dmax-400',
  '16-inch x 1.5 mm thick x 1.25-inch 180 grit high concentration diamond cutting blade (each)',
  'sectioning',
  'Abrasive Blades',
  true,
  1500.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAX-D150',
  'MAX-D150',
  'MAX-D150',
  'max-d150',
  '6-inch x 1/2-inch MAXCUT Abrasive Wafering Blade (0.5-inch arbor) General purpose',
  'sectioning',
  'Wafering Blades',
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
  'MAX-7000S',
  'MAX-7000S',
  'MAX-7000S',
  'max-7000s',
  '7-inch x 1/2-inch MAXCUT Abrasive Wafering Blade (0.5-inch arbor) General purpose',
  'sectioning',
  'Wafering Blades',
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
  'MAX-C150',
  'MAX-C150',
  'MAX-C150',
  'max-c150',
  '6-inch SiC Abrasive Wafering Blade (1/2-inch arbor)',
  'sectioning',
  'Wafering Blades',
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
  'MAX-C125',
  'MAX-C125',
  'MAX-C125',
  'max-c125',
  '5-inch SiC Abrasive Wafering Blade (1/2-inch arbor)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0030LC',
  'WB-0030LC',
  'WB-0030LC',
  'wb-0030lc',
  '3-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0035LC',
  'WB-0035LC',
  'WB-0035LC',
  'wb-0035lc',
  '3-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0035HC',
  'WB-0035HC',
  'WB-0035HC',
  'wb-0035hc',
  '3-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WCBN-0035',
  'WCBN-0035',
  'WCBN-0035',
  'wcbn-0035',
  '3-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0040LC',
  'WB-0040LC',
  'WB-0040LC',
  'wb-0040lc',
  '4-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0045LC',
  'WB-0045LC',
  'WB-0045LC',
  'wb-0045lc',
  '4-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0045HC',
  'WB-0045HC',
  'WB-0045HC',
  'wb-0045hc',
  '4-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WCBN-0045',
  'WCBN-0045',
  'WCBN-0045',
  'wcbn-0045',
  '4-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
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
  'WB-004GP',
  'WB-004GP',
  'WB-004GP',
  'wb-004gp',
  '4-inch stainless steel general purpose diamond/CBN Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-004LCS',
  'WB-004LCS',
  'WB-004LCS',
  'wb-004lcs',
  '4-inch stainless steel low concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-004HCS',
  'WB-004HCS',
  'WB-004HCS',
  'wb-004hcs',
  '4-inch stainless steel high concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-040EPD',
  'WB-040EPD',
  'WB-040EPD',
  'wb-040epd',
  '4-inch x 0.024-inch x 0.5-inch course grit electroplated diamond wafering blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-0045CHC',
  'WB-0045CHC',
  'WB-0045CHC',
  'wb-0045chc',
  NULL,
  'sectioning',
  'Wafering Blades',
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
  'WB-0050LC',
  'WB-0050LC',
  'WB-0050LC',
  'wb-0050lc',
  '5-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0055LC',
  'WB-0055LC',
  'WB-0055LC',
  'wb-0055lc',
  '5-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0055HC',
  'WB-0055HC',
  'WB-0055HC',
  'wb-0055hc',
  '5-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WCBN-0055',
  'WCBN-0055',
  'WCBN-0055',
  'wcbn-0055',
  '5-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
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
  'WB-005GP',
  'WB-005GP',
  'WB-005GP',
  'wb-005gp',
  '5-inch General purpose diamond/CBN Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-005LCS',
  'WB-005LCS',
  'WB-005LCS',
  'wb-005lcs',
  '5-inch stainless steel low concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-005HCS',
  'WB-005HCS',
  'WB-005HCS',
  'wb-005hcs',
  '5-inch stainless steel high concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-050EPD',
  'WB-050EPD',
  'WB-050EPD',
  'wb-050epd',
  '5-inch x 0.024-inch x 0.5-inch electroplated 120 grit diamond blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-0055CHC',
  'WB-0055CHC',
  'WB-0055CHC',
  'wb-0055chc',
  NULL,
  'sectioning',
  'Wafering Blades',
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
  'WB-0060LC',
  'WB-0060LC',
  'WB-0060LC',
  'wb-0060lc',
  '6-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0065LC',
  'WB-0065LC',
  'WB-0065LC',
  'wb-0065lc',
  '6-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0065HC',
  'WB-0065HC',
  'WB-0065HC',
  'wb-0065hc',
  '6-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WCBN-0065',
  'WCBN-0065',
  'WCBN-0065',
  'wcbn-0065',
  '6-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
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
  'WB-006GP',
  'WB-006GP',
  'WB-006GP',
  'wb-006gp',
  '6-inch General purpose diamond/CBN Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-006LCS',
  'WB-006LCS',
  'WB-006LCS',
  'wb-006lcs',
  '6-inch stainless steel low concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-006HCS',
  'WB-006HCS',
  'WB-006HCS',
  'wb-006hcs',
  '6-inch stainless steel high concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-060EPD',
  'WB-060EPD',
  'WB-060EPD',
  'wb-060epd',
  '6-inch x 0.032-inch x 0.5-inch electroplated 120 grit diamond blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-0065CHC',
  'WB-0065CHC',
  'WB-0065CHC',
  'wb-0065chc',
  NULL,
  'sectioning',
  'Wafering Blades',
  true,
  465.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-0070LC',
  'WB-0070LC',
  'WB-0070LC',
  'wb-0070lc',
  '7-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
  true,
  640.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-0075LC',
  'WB-0075LC',
  'WB-0075LC',
  'wb-0075lc',
  '7-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
  true,
  640.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-0075HC',
  'WB-0075HC',
  'WB-0075HC',
  'wb-0075hc',
  '7-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
  true,
  640.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WCBN-0075',
  'WCBN-0075',
  'WCBN-0075',
  'wcbn-0075',
  '7-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
  true,
  640.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-007GP',
  'WB-007GP',
  'WB-007GP',
  'wb-007gp',
  '7-inch General purpose diamond/CBN Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-007LCS',
  'WB-007LCS',
  'WB-007LCS',
  'wb-007lcs',
  '7-inch stainless steel low concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-007HCS',
  'WB-007HCS',
  'WB-007HCS',
  'wb-007hcs',
  '7-inch stainless steel high concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-070EPD',
  'WB-070EPD',
  'WB-070EPD',
  'wb-070epd',
  '7-inch x 0.039-inch x 0.5-inch electroplated 120 grit diamond blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-0075CHC',
  'WB-0075CHC',
  'WB-0075CHC',
  'wb-0075chc',
  NULL,
  'sectioning',
  'Wafering Blades',
  true,
  605.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-0080LC',
  'WB-0080LC',
  'WB-0080LC',
  'wb-0080lc',
  '8-inch Diamond Wafering Blade (fine grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0085LC',
  'WB-0085LC',
  'WB-0085LC',
  'wb-0085lc',
  '8-inch Diamond Wafering Blade (medium grit, low conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WB-0085HC',
  'WB-0085HC',
  'WB-0085HC',
  'wb-0085hc',
  '8-inch Diamond Wafering Blade (medium grit, high conc.)',
  'sectioning',
  'Wafering Blades',
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
  'WCBN-0085',
  'WCBN-0085',
  'WCBN-0085',
  'wcbn-0085',
  '8-inch CBN Wafering Blade (medium grit, high concentration)',
  'sectioning',
  'Wafering Blades',
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
  'WB-008GP',
  'WB-008GP',
  'WB-008GP',
  'wb-008gp',
  '8-inch General purpose diamond/CBN Wafering Blade',
  'sectioning',
  'Wafering Blades',
  true,
  440.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-008LCS',
  'WB-008LCS',
  'WB-008LCS',
  'wb-008lcs',
  '8-inch stainless steel low concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
  true,
  440.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-008HCS',
  'WB-008HCS',
  'WB-008HCS',
  'wb-008hcs',
  '8-inch stainless steel high concentration diamond Wafering Blade',
  'sectioning',
  'Wafering Blades',
  true,
  440.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WB-080EPD',
  'WB-080EPD',
  'WB-080EPD',
  'wb-080epd',
  '8-inch x 0.039-inch x 0.5-inch electroplated 120 grit diamond blade',
  'sectioning',
  'Wafering Blades',
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
  'WB-0085CHC',
  'WB-0085CHC',
  'WB-0085CHC',
  'wb-0085chc',
  NULL,
  'sectioning',
  'Wafering Blades',
  true,
  620.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DRES-0010',
  'DRES-0010',
  'DRES-0010',
  'dres-0010',
  'Dressing Stick',
  'sectioning',
  'Dressing Sticks',
  true,
  15.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MAXCUT-1000-32',
  'MAXCUT-1000-32',
  'MAXCUT-1000-32',
  'maxcut-1000-32',
  'MAXCUT Abrasive Cutting Fluid (32 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT-1000-64',
  'MAXCUT-1000-64',
  'MAXCUT-1000-64',
  'maxcut-1000-64',
  'MAXCUT Abrasive Cutting Fluid (1/2 gallon)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT-1000-128',
  'MAXCUT-1000-128',
  'MAXCUT-1000-128',
  'maxcut-1000-128',
  'MAXCUT Abrasive Cutting Fluid (128 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT-1000-5G',
  'MAXCUT-1000-5G',
  'MAXCUT-1000-5G',
  'maxcut-1000-5g',
  'MAXCUT Abrasive cutting fluid (5 gallons)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT2-1000-32',
  'MAXCUT2-1000-32',
  'MAXCUT2-1000-32',
  'maxcut2-1000-32',
  'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (32 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT2-1000-64',
  'MAXCUT2-1000-64',
  'MAXCUT2-1000-64',
  'maxcut2-1000-64',
  'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (1/2 gallon)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT2-1000-128',
  'MAXCUT2-1000-128',
  'MAXCUT2-1000-128',
  'maxcut2-1000-128',
  'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (1 gallon)',
  'sectioning',
  'Cutting Fluids',
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
  'MAXCUT2-1000-5G',
  'MAXCUT2-1000-5G',
  'MAXCUT2-1000-5G',
  'maxcut2-1000-5g',
  'MAXCUT 2 Abrasive Cutting Fluid with anti-corrosion additive (5 gallons)',
  'sectioning',
  'Cutting Fluids',
  true,
  280.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WL-3000-16',
  'WL-3000-16',
  'WL-3000-16',
  'wl-3000-16',
  'DIACUT Water Based Diamond Cutting Fluid (16 oz)',
  'sectioning',
  'Cutting Fluids',
  true,
  13.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WL-3000-32',
  'WL-3000-32',
  'WL-3000-32',
  'wl-3000-32',
  'DIACUT Water Based Diamond Cutting Fluid (32 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'OL-3000-16',
  'OL-3000-16',
  'OL-3000-16',
  'ol-3000-16',
  'DIACUT Oil-based Diamond Cutting Fluid (16 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'OL-3000-32',
  'OL-3000-32',
  'OL-3000-32',
  'ol-3000-32',
  'DIACUT Oil-based Diamond Cutting Fluid (32 oz)',
  'sectioning',
  'Cutting Fluids',
  true,
  26.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WL2-3000-16',
  'WL2-3000-16',
  'WL2-3000-16',
  'wl2-3000-16',
  'DIACUT Water Based anti-corrosion Diamond Cutting Fluid (16 oz)',
  'sectioning',
  'Cutting Fluids',
  true,
  13.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'WL2-3000-32',
  'WL2-3000-32',
  'WL2-3000-32',
  'wl2-3000-32',
  'DIACUT Water Based anti-corrosion Diamond Cutting Fluid (32 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'PCC-5000-32',
  'PCC-5000-32',
  'PCC-5000-32',
  'pcc-5000-32',
  'Anti-Corrosion Additive for Cutting Fluid (32 oz)',
  'sectioning',
  'Cutting Fluids',
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
  'CM-2001B-5',
  'CM-2001B-5',
  'CM-2001B-5',
  'cm-2001b-5',
  'Phenolic compression mounting resins - black (5 lbs)',
  'mounting',
  'Resins',
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
  'CM-2001B-25',
  'CM-2001B-25',
  'CM-2001B-25',
  'cm-2001b-25',
  'Phenolic compression mounting resins - black (25 lbs)',
  'mounting',
  'Resins',
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
  'CM-2001R-5',
  'CM-2001R-5',
  'CM-2001R-5',
  'cm-2001r-5',
  'Phenolic compression mounting resins - red (5 lbs)',
  'mounting',
  'Resins',
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
  'CM-2001R-25',
  'CM-2001R-25',
  'CM-2001R-25',
  'cm-2001r-25',
  'Phenolic compression mounting resins - red (25 lbs)',
  'mounting',
  'Resins',
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
  'CM-2001G-5',
  'CM-2001G-5',
  'CM-2001G-5',
  'cm-2001g-5',
  'Phenolic compression mounting resins - green (5 lbs)',
  'mounting',
  'Resins',
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
  'CM-2001G-25',
  'CM-2001G-25',
  'CM-2001G-25',
  'cm-2001g-25',
  'Phenolic compression mounting resins - green (25 lbs)',
  'mounting',
  'Resins',
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
  'CM-2500B-2',
  'CM-2500B-2',
  'CM-2500B-2',
  'cm-2500b-2',
  'Black Premium Phenolic powder (2.5 kg)',
  'mounting',
  'Resins',
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
  'CM-2500B-8',
  'CM-2500B-8',
  'CM-2500B-8',
  'cm-2500b-8',
  'Black Premium Phenolic powder (7.5 kg)',
  'mounting',
  'Resins',
  true,
  165.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2500R-2',
  'CM-2500R-2',
  'CM-2500R-2',
  'cm-2500r-2',
  'Red Premium Phenolic powder (2.5 kg)',
  'mounting',
  'Resins',
  true,
  48.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2500R-8',
  'CM-2500R-8',
  'CM-2500R-8',
  'cm-2500r-8',
  'Red Premium Phenolic powder (7.5 kg)',
  'mounting',
  'Resins',
  true,
  165.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2500G-2',
  'CM-2500G-2',
  'CM-2500G-2',
  'cm-2500g-2',
  'Green Premium Phenolic powder (2.5 kg)',
  'mounting',
  'Resins',
  true,
  48.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2500G-8',
  'CM-2500G-8',
  'CM-2500G-8',
  'cm-2500g-8',
  'Green Premium Phenolic powder (7.5 kg)',
  'mounting',
  'Resins',
  true,
  165.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2101A-5',
  'CM-2101A-5',
  'CM-2101A-5',
  'cm-2101a-5',
  'TRANSACRYLIC compression mounting powder (transparent) (5 lbs)',
  'mounting',
  'Resins',
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
  'CM-2101A-25',
  'CM-2101A-25',
  'CM-2101A-25',
  'cm-2101a-25',
  'TRANSACRYLIC compression mounting powder (transparent) (25 lbs)',
  'mounting',
  'Resins',
  true,
  505.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CM-2501A-1',
  'CM-2501A-1',
  'CM-2501A-1',
  'cm-2501a-1',
  'TRANSACRYLIC clear compression mounting powder (1 kg)',
  'mounting',
  'Resins',
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
  'CM-2501A-2',
  'CM-2501A-2',
  'CM-2501A-2',
  'cm-2501a-2',
  'TRANSACRYLIC clear compression mounting powder (2.5 kg)',
  'mounting',
  'Resins',
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
  'CM-2501A-8',
  'CM-2501A-8',
  'CM-2501A-8',
  'cm-2501a-8',
  'TRANSACRYLIC clear compression mounting powder (7.5 kg)',
  'mounting',
  'Resins',
  true,
  365.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'EP-2201A-5',
  'EP-2201A-5',
  'EP-2201A-5',
  'ep-2201a-5',
  'EPOCOMP (glass-reinforced epoxy) Compression Resin (5 lbs)',
  'mounting',
  'Resins',
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
  'EP-2201A-25',
  'EP-2201A-25',
  'EP-2201A-25',
  'ep-2201a-25',
  'EPOCOMP (glass-reinforced epoxy) Compression Resin (25 lbs)',
  'mounting',
  'Resins',
  true,
  610.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'EPF-2201-5',
  'EPF-2201-5',
  'EPF-2201-5',
  'epf-2201-5',
  'EPOCOMP fine epoxy compression resin (5 lbs)',
  'mounting',
  'Resins',
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
  'EPF-2201-25',
  'EPF-2201-25',
  'EPF-2201-25',
  'epf-2201-25',
  'EPOCOMP fine epoxy compression resin (25 lbs)',
  'mounting',
  'Resins',
  true,
  610.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'EPF-2500-2',
  'EPF-2500-2',
  'EPF-2500-2',
  'epf-2500-2',
  'Premium Glass Filled Epoxy-Phenolic edge retention compression mounting resin (2.5 kg)',
  'mounting',
  'Resins',
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
  'EPF-2500-8',
  'EPF-2500-8',
  'EPF-2500-8',
  'epf-2500-8',
  'Premium Glass Filled Epoxy-Phenolic edge retention compression mounting resin (8 kg)',
  'mounting',
  'Resins',
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
  'DY-2301A-5',
  'DY-2301A-5',
  'DY-2301A-5',
  'dy-2301a-5',
  'Diallyl Phthalate Blue Compression  Resin (5 lbs)',
  'mounting',
  'Resins',
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
  'DY-2301B-25',
  'DY-2301B-25',
  'DY-2301B-25',
  'dy-2301b-25',
  'Diallyl Phthalate Blue Compression  Resin (25 lbs)',
  'mounting',
  'Resins',
  true,
  610.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CONDUCTO-1P',
  'CONDUCTO-1P',
  'CONDUCTO-1P',
  'conducto-1p',
  'Conductive Compression Mounting Resin (graphite powder) - 1 lb',
  'mounting',
  'Resins',
  true,
  44.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CONDUCTO-5P',
  'CONDUCTO-5P',
  'CONDUCTO-5P',
  'conducto-5p',
  'Conductive Compression Mounting Resin (graphite powder) - 5 lbs',
  'mounting',
  'Resins',
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
  'CONDUCTO-25P',
  'CONDUCTO-25P',
  'CONDUCTO-25P',
  'conducto-25p',
  'Conductive Compression Mounting Resin (graphite powder) -25 lbs',
  'mounting',
  'Resins',
  true,
  760.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CONDUCTO-CU-1',
  'CONDUCTO-CU-1',
  'CONDUCTO-CU-1',
  'conducto-cu-1',
  'Conductive Compression Mounting Resin (copper) - 1 lb',
  'mounting',
  'Resins',
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
  'CONDUCTO-CU-5',
  'CONDUCTO-CU-5',
  'CONDUCTO-CU-5',
  'conducto-cu-5',
  'Conductive Compression Mounting Resin (copper) - 5 lbs',
  'mounting',
  'Resins',
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
  'CONDUCTO-CU-25',
  'CONDUCTO-CU-25',
  'CONDUCTO-CU-25',
  'conducto-cu-25',
  'Conductive Compression Mounting Resin (copper) - 25 lbs',
  'mounting',
  'Resins',
  true,
  1350.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'CONDUCTO-G1000',
  'CONDUCTO-G1000',
  'CONDUCTO-G1000',
  'conducto-g1000',
  'Conductive Preimum Compression Mounting Resin (graphite powder) - 1 kg',
  'mounting',
  'Resins',
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
  'CONDUCTO-G2500',
  'CONDUCTO-G2500',
  'CONDUCTO-G2500',
  'conducto-g2500',
  'Conductive Preimum Compression Mounting Resin (graphite powder) - 2.5 kg',
  'mounting',
  'Resins',
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
  'CONDUCTO-G7500',
  'CONDUCTO-G7500',
  'CONDUCTO-G7500',
  'conducto-g7500',
  'Conductive Preimum Compression Mounting Resin (graphite powder) - 7.5 kg',
  'mounting',
  'Resins',
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
  'CONDUCTO-CU1000',
  'CONDUCTO-CU1000',
  'CONDUCTO-CU1000',
  'conducto-cu1000',
  'Conductive Premium Compression Mounting Resin (copper) - 1 kg',
  'mounting',
  'Resins',
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
  'CONDUCTO-CU2500',
  'CONDUCTO-CU2500',
  'CONDUCTO-CU2500',
  'conducto-cu2500',
  'Conductive Premium Compression Mounting Resin (copper) - 2.5 kg',
  'mounting',
  'Resins',
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
  'CONDUCTO-CU7500',
  'CONDUCTO-CU7500',
  'CONDUCTO-CU7500',
  'conducto-cu7500',
  'Conductive Premium Compression Mounting Resin (copper) - 7.5 kg',
  'mounting',
  'Resins',
  true,
  825.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MS-1000-30',
  'MS-1000-30',
  'MS-1000-30',
  'ms-1000-30',
  '30 ml Compression Mounting Resin scoop',
  'mounting',
  'Miscellaneous',
  true,
  4.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'MR-1000-08',
  'MR-1000-08',
  'MR-1000-08',
  'mr-1000-08',
  'Silicon Mold Release for Compression Mounting (8 oz)',
  'mounting',
  'Mold Release',
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
  'MR-1000-16',
  'MR-1000-16',
  'MR-1000-16',
  'mr-1000-16',
  'Silicon Mold Release for Compression Mounting (16 oz)',
  'mounting',
  'Mold Release',
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
  'MR-1000-128',
  'MR-1000-128',
  'MR-1000-128',
  'mr-1000-128',
  'Silicon Mold Release for Compression Mounting (1-gallon)',
  'mounting',
  'Mold Release',
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
  'GLOVES-S100',
  'GLOVES-S100',
  'GLOVES-S100',
  'gloves-s100',
  'Small disposable protective gloves (100/box)',
  'mounting',
  'Miscellaneous',
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
  'GLOVES-M100',
  'GLOVES-M100',
  'GLOVES-M100',
  'gloves-m100',
  'Medium disposable protective gloves (100/box)',
  'mounting',
  'Miscellaneous',
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
  'GLOVES-L100',
  'GLOVES-L100',
  'GLOVES-L100',
  'gloves-l100',
  'Large disposable protective gloves (100/box)',
  'mounting',
  'Miscellaneous',
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
  'UV-1L',
  'UV-1L',
  'UV-1L',
  'uv-1l',
  'UV Acrylic Curing Liquid, 1-liter (Cat. No. UV-1L)',
  'mounting',
  'Resins',
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
  'PAR-5000-K1',
  'PAR-5000-K1',
  'PAR-5000-K1',
  'par-5000-k1',
  'PREMIUM Acrylic Castable Mounting Resin Kit (1 kg powder/ 500 ml liquid)',
  'mounting',
  'Resins',
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
  'PAR-5000-K2',
  'PAR-5000-K2',
  'PAR-5000-K2',
  'par-5000-k2',
  'PREMIUM Acrylic Castable Mounting Resin Kit (2.5 kg powder/ 2 liters liquid)',
  'mounting',
  'Resins',
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
  'PAR-5000-P1000',
  'PAR-5000-P1000',
  'PAR-5000-P1000',
  'par-5000-p1000',
  'PREMIUM ACRYLIC Castable Mounting Resin (powder) (1 kg)',
  'mounting',
  'Resins',
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
  'PAR-5000-P2500',
  'PAR-5000-P2500',
  'PAR-5000-P2500',
  'par-5000-p2500',
  'PREMIUM ACRYLIC Castable Mounting Resin (powder) (2.5 kg)',
  'mounting',
  'Resins',
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
  'PAR-5000-P7500',
  'PAR-5000-P7500',
  'PAR-5000-P7500',
  'par-5000-p7500',
  'PREMIUM ACRYLIC Castable Mounting Resin (powder) (7.5 kg)',
  'mounting',
  'Resins',
  true,
  950.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PAH-5000-H500',
  'PAH-5000-H500',
  'PAH-5000-H500',
  'pah-5000-h500',
  'PREMIUM ACRYLIC Castable Mounting Hardener (clear liquid) (500 ml)',
  'mounting',
  'Resins',
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
  'PAH-5000-H1L',
  'PAH-5000-H1L',
  'PAH-5000-H1L',
  'pah-5000-h1l',
  'PREMIUM ACRYLIC Castable Mounting Hardener (clear liquid) (1 liter)',
  'mounting',
  'Resins',
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
  'PAH-5000-H5L',
  'PAH-5000-H5L',
  'PAH-5000-H5L',
  'pah-5000-h5l',
  'PREMIUM ACRYLIC Castable Mounting Hardener (clear liquid) (5 liter)',
  'mounting',
  'Resins',
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
  'AK-5000-K1',
  'AK-5000-K1',
  'AK-5000-K1',
  'ak-5000-k1',
  'CASTAMOUNT Acrylic Castable Mounting Resin Kit (1 lb powder/ 12 oz liquid)',
  'mounting',
  'Resins',
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
  'AK-5000-K5',
  'AK-5000-K5',
  'AK-5000-K5',
  'ak-5000-k5',
  'CASTAMOUNT Acrylic Castable Mounting Resin Kit (5 lbs powder/ 64 oz liquid)',
  'mounting',
  'Resins',
  true,
  280.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'AR-5000-P1',
  'AR-5000-P1',
  'AR-5000-P1',
  'ar-5000-p1',
  'CASTAMOUNT Acrylic Castable Mounting Resin (powder) (1 lb)',
  'mounting',
  'Resins',
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
  'AR-5000-P5',
  'AR-5000-P5',
  'AR-5000-P5',
  'ar-5000-p5',
  'CASTAMOUNT Acrylic Castable Mounting Resin (powder) (5 lbs)',
  'mounting',
  'Resins',
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
  'AR-5000-P25',
  'AR-5000-P25',
  'AR-5000-P25',
  'ar-5000-p25',
  'CASTAMOUNT Acrylic Castable Mounting Resin (powder) (25 lbs)',
  'mounting',
  'Resins',
  true,
  1150.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'AR-5000-P100',
  'AR-5000-P100',
  'AR-5000-P100',
  'ar-5000-p100',
  'CASTAMOUNT Acrylic Castable Mounting Resin (powder) (100 lbs)',
  'mounting',
  'Resins',
  true,
  4250.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'AH-5000-H12',
  'AH-5000-H12',
  'AH-5000-H12',
  'ah-5000-h12',
  'CASTAMOUNT Acrylic Castable Mounting Hardener (clear liquid) (12 oz)',
  'mounting',
  'Hardeners',
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
  'AH-5000-H32',
  'AH-5000-H32',
  'AH-5000-H32',
  'ah-5000-h32',
  'CASTAMOUNT Acrylic Castable Mounting Hardener (clear liquid) (32 oz)',
  'mounting',
  'Hardeners',
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
  'AH-5000-H64',
  'AH-5000-H64',
  'AH-5000-H64',
  'ah-5000-h64',
  'CASTAMOUNT Acrylic Castable Mounting Hardener (clear liquid) (1/2 gallon)',
  'mounting',
  'Hardeners',
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
  'AH-5000-H128',
  'AH-5000-H128',
  'AH-5000-H128',
  'ah-5000-h128',
  'CASTAMOUNT Acrylic Castable Mounting Hardener (clear liquid) (1 gallon)',
  'mounting',
  'Hardeners',
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
  'AH-5000-H640',
  'AH-5000-H640',
  'AH-5000-H640',
  'ah-5000-h640',
  'CASTAMOUNT Acrylic Castable Mounting Hardener (clear liquid) (5 gallons)',
  'mounting',
  'Hardeners',
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
  'ACYP-5000-K1',
  'ACYP-5000-K1',
  'ACYP-5000-K1',
  'acyp-5000-k1',
  'ACRYLIC PLUS Castable Mounting Resin Kit (1 lb powder/ 12 oz liquid)',
  'mounting',
  'Resins',
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
  'ACYP-5000-K5',
  'ACYP-5000-K5',
  'ACYP-5000-K5',
  'acyp-5000-k5',
  'ACRYLIC PLUS Castable Mounting Resin Kit (5 lbs powder/ 64 oz liquid)',
  'mounting',
  'Resins',
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
  'ACYP-5000-P1',
  'ACYP-5000-P1',
  'ACYP-5000-P1',
  'acyp-5000-p1',
  'ACRYLIC PLUS Castable Mounting Resin (powder) (1 lb)',
  'mounting',
  'Resins',
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
  'ACYP-5000-P5',
  'ACYP-5000-P5',
  'ACYP-5000-P5',
  'acyp-5000-p5',
  'ACRYLIC PLUS Castable Mounting Resin (powder) (5 lbs)',
  'mounting',
  'Resins',
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
  'ACYP-5000-P25',
  'ACYP-5000-P25',
  'ACYP-5000-P25',
  'acyp-5000-p25',
  'ACRYLIC PLUS Castable Mounting Resin (powder) (25 lbs)',
  'mounting',
  'Resins',
  true,
  1150.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ACYP-5000-P100',
  'ACYP-5000-P100',
  'ACYP-5000-P100',
  'acyp-5000-p100',
  'ACRYLIC PLUS Castable Mounting Resin (powder) (100 lbs)',
  'mounting',
  'Resins',
  true,
  4400.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ACYH-5000-H12',
  'ACYH-5000-H12',
  'ACYH-5000-H12',
  'acyh-5000-h12',
  'ACRYLIC PLUS Castable Mounting Resin hardener (clear liquid) (12 oz)',
  'mounting',
  'Hardeners',
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
  'ACYH-5000-H32',
  'ACYH-5000-H32',
  'ACYH-5000-H32',
  'acyh-5000-h32',
  'ACRYLIC PLUS Castable Mounting  Hardener (clear liquid) (32 oz)',
  'mounting',
  'Hardeners',
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
  'ACYH-5000-H64',
  'ACYH-5000-H64',
  'ACYH-5000-H64',
  'acyh-5000-h64',
  'ACRYLIC PLUS Castable Mounting  Hardener (clear liquid) (1/2 gallon)',
  'mounting',
  'Hardeners',
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
  'ACYH-5000-H128',
  'ACYH-5000-H128',
  'ACYH-5000-H128',
  'acyh-5000-h128',
  'ACRYLIC PLUS Castable Mounting  Hardener (clear liquid) (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ACYH-5000-H640',
  'ACYH-5000-H640',
  'ACYH-5000-H640',
  'acyh-5000-h640',
  'ACRYLIC PLUS Castable Mounting  Hardener (clear liquid) (5 gallons)',
  'mounting',
  'Hardeners',
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
  'GRAK-5000-K1',
  'GRAK-5000-K1',
  'GRAK-5000-K1',
  'grak-5000-k1',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Kit (1 lb powder/12 oz liquid)',
  'mounting',
  'Resins',
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
  'GRAK-5000-K5',
  'GRAK-5000-K5',
  'GRAK-5000-K5',
  'grak-5000-k5',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Kit (5 lbs powder/64 oz liquid)',
  'mounting',
  'Resins',
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
  'GRAR-5000-P1',
  'GRAR-5000-P1',
  'GRAR-5000-P1',
  'grar-5000-p1',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Powder (1 lb)',
  'mounting',
  'Resins',
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
  'GRAR-5000-P5',
  'GRAR-5000-P5',
  'GRAR-5000-P5',
  'grar-5000-p5',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Powder (5 lbs)',
  'mounting',
  'Resins',
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
  'GRAR-5000-P25',
  'GRAR-5000-P25',
  'GRAR-5000-P25',
  'grar-5000-p25',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Powder (25 lbs)',
  'mounting',
  'Resins',
  true,
  1300.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GRAR-5000-P100',
  'GRAR-5000-P100',
  'GRAR-5000-P100',
  'grar-5000-p100',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting  Resin Powder (100 lbs)',
  'mounting',
  'Resins',
  true,
  4200.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'GRAH-3000-H12',
  'GRAH-3000-H12',
  'GRAH-3000-H12',
  'grah-3000-h12',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting Liquid Hardener (12 oz)',
  'mounting',
  'Hardeners',
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
  'GRAH-3000-H32',
  'GRAH-3000-H32',
  'GRAH-3000-H32',
  'grah-3000-h32',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting Liquid Hardener (32 oz)',
  'mounting',
  'Hardeners',
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
  'GRAH-3000-H64',
  'GRAH-3000-H64',
  'GRAH-3000-H64',
  'grah-3000-h64',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting Liquid Hardener (1/2 gallon)',
  'mounting',
  'Hardeners',
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
  'GRAH-3000-H128',
  'GRAH-3000-H128',
  'GRAH-3000-H128',
  'grah-3000-h128',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting Liquid Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'GRAH-3000-H640',
  'GRAH-3000-H640',
  'GRAH-3000-H640',
  'grah-3000-h640',
  'SUPERMOUNT Glass Filled Acrylic Castable Mounting Liquid Hardener (5 gallons)',
  'mounting',
  'Hardeners',
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
  'POLYCAST-128',
  'POLYCAST-128',
  'POLYCAST-128',
  'polycast-128',
  'POLYCAST Polyester Resin (1 gallon)',
  'mounting',
  'Resins',
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
  'POLYHARD-02',
  'POLYHARD-02',
  'POLYHARD-02',
  'polyhard-02',
  'POLYCAST Polyester Hardener (2 oz)',
  'mounting',
  'Hardeners',
  true,
  12.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DYE-1000',
  'DYE-1000',
  'DYE-1000',
  'dye-1000',
  'POLYCAST Polyester Color Dye Set (3 colors)',
  'mounting',
  'Miscellaneous',
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
  'EP-3000-32',
  'EP-3000-32',
  'EP-3000-32',
  'ep-3000-32',
  'EPOCAST Epoxy Resin (32 oz)',
  'mounting',
  'Resins',
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
  'EP-3000-128',
  'EP-3000-128',
  'EP-3000-128',
  'ep-3000-128',
  'EPOCAST Epoxy Resin (1 gallon)',
  'mounting',
  'Resins',
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
  'EP-3000-5G',
  'EP-3000-5G',
  'EP-3000-5G',
  'ep-3000-5g',
  'EPOCAST Epoxy Resin (5 gallon)',
  'mounting',
  'Resins',
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
  'EH-3000-08',
  'EH-3000-08',
  'EH-3000-08',
  'eh-3000-08',
  'EPOCAST Epoxy Resin Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'EH-3000-32',
  'EH-3000-32',
  'EH-3000-32',
  'eh-3000-32',
  'EPOCAST Epoxy Resin Hardener (32 oz)',
  'mounting',
  'Hardeners',
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
  'EH-3000-128',
  'EH-3000-128',
  'EH-3000-128',
  'eh-3000-128',
  'EPOCAST Epoxy Resin Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'EP-3000-32P',
  'EP-3000-32P',
  'EP-3000-32P',
  'ep-3000-32p',
  'EPOCAST Plus Epoxy Resin (32 oz)',
  'mounting',
  'Resins',
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
  'EP-3000-128P',
  'EP-3000-128P',
  'EP-3000-128P',
  'ep-3000-128p',
  'EPOCAST Plus Epoxy Resin (1 gallon)',
  'mounting',
  'Resins',
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
  'EP-3000-5GP',
  'EP-3000-5GP',
  'EP-3000-5GP',
  'ep-3000-5gp',
  'EPOCAST Plus Epoxy Resin (5 gallon)',
  'mounting',
  'Resins',
  true,
  610.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'EH-3000-08P',
  'EH-3000-08P',
  'EH-3000-08P',
  'eh-3000-08p',
  'EPOCAST Plus Epoxy Resin Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'EH-3000-32P',
  'EH-3000-32P',
  'EH-3000-32P',
  'eh-3000-32p',
  'EPOCAST Plus Epoxy Resin Hardener (32 oz)',
  'mounting',
  'Hardeners',
  true,
  115.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
