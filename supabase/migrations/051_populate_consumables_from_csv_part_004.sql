-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 4 of 16
-- Statements 601 to 800

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-8250',
  'DIA-DISK-8250',
  'DIA-DISK-8250',
  'dia-disk-8250',
  '8-inch 250 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-8125',
  'DIA-DISK-8125',
  'DIA-DISK-8125',
  'dia-disk-8125',
  '8-inch 125 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  425.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-8075',
  'DIA-DISK-8075',
  'DIA-DISK-8075',
  'dia-disk-8075',
  '8-inch 75 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  425.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-8045',
  'DIA-DISK-8045',
  'DIA-DISK-8045',
  'dia-disk-8045',
  '8-inch 45 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-8030',
  'DIA-DISK-8030',
  'DIA-DISK-8030',
  'dia-disk-8030',
  '8-inch 30 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-8015',
  'DIA-DISK-8015',
  'DIA-DISK-8015',
  'dia-disk-8015',
  '8-inch 15 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-8009',
  'DIA-DISK-8009',
  'DIA-DISK-8009',
  'dia-disk-8009',
  '8-inch 9 micron Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-10250',
  'DIA-DISK-10250',
  'DIA-DISK-10250',
  'dia-disk-10250',
  '10-inch 250 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-10125',
  'DIA-DISK-10125',
  'DIA-DISK-10125',
  'dia-disk-10125',
  '10-inch 125 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-10075',
  'DIA-DISK-10075',
  'DIA-DISK-10075',
  'dia-disk-10075',
  '10-inch 75 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-10045',
  'DIA-DISK-10045',
  'DIA-DISK-10045',
  'dia-disk-10045',
  '10-inch 45 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-10030',
  'DIA-DISK-10030',
  'DIA-DISK-10030',
  'dia-disk-10030',
  '10-inch 30 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  690.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-10015',
  'DIA-DISK-10015',
  'DIA-DISK-10015',
  'dia-disk-10015',
  '10-inch 15 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  690.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-10009',
  'DIA-DISK-10009',
  'DIA-DISK-10009',
  'dia-disk-10009',
  '10-inch 9 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  690.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-12250',
  'DIA-DISK-12250',
  'DIA-DISK-12250',
  'dia-disk-12250',
  '12-inch 250 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-12125',
  'DIA-DISK-12125',
  'DIA-DISK-12125',
  'dia-disk-12125',
  '12-inch 125 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
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
  'DIA-DISK-12075',
  'DIA-DISK-12075',
  'DIA-DISK-12075',
  'dia-disk-12075',
  '12-inch 75 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  925.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-12045',
  'DIA-DISK-12045',
  'DIA-DISK-12045',
  'dia-disk-12045',
  '12-inch 45 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  925.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-12030',
  'DIA-DISK-12030',
  'DIA-DISK-12030',
  'dia-disk-12030',
  '12-inch 30 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  925.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-12015',
  'DIA-DISK-12015',
  'DIA-DISK-12015',
  'dia-disk-12015',
  '12-inch 15 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  925.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-DISK-12009',
  'DIA-DISK-12009',
  'DIA-DISK-12009',
  'dia-disk-12009',
  '12-inch 9 micron Diamond Abrasive Grinding Disk with PSA (adhesive backed) backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks / PSA',
  true,
  925.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PGD8-250M',
  'PGD8-250M',
  'PGD8-250M',
  'pgd8-250m',
  '8-inch 250 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-125M',
  'PGD8-125M',
  'PGD8-125M',
  'pgd8-125m',
  '8-inch 125 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-75M',
  'PGD8-75M',
  'PGD8-75M',
  'pgd8-75m',
  '8-inch 75 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-45M',
  'PGD8-45M',
  'PGD8-45M',
  'pgd8-45m',
  '8-inch 45 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-30M',
  'PGD8-30M',
  'PGD8-30M',
  'pgd8-30m',
  '8-inch 30 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-15M',
  'PGD8-15M',
  'PGD8-15M',
  'pgd8-15m',
  '8-inch 15 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD8-09M',
  'PGD8-09M',
  'PGD8-09M',
  'pgd8-09m',
  '8-inch 9 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-250M',
  'PGD10-250M',
  'PGD10-250M',
  'pgd10-250m',
  '10-inch 250 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-125M',
  'PGD10-125M',
  'PGD10-125M',
  'pgd10-125m',
  '10-inch 125 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-75M',
  'PGD10-75M',
  'PGD10-75M',
  'pgd10-75m',
  '10-inch 75 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-45M',
  'PGD10-45M',
  'PGD10-45M',
  'pgd10-45m',
  '10-inch 45 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-30M',
  'PGD10-30M',
  'PGD10-30M',
  'pgd10-30m',
  '10-inch 30 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-15M',
  'PGD10-15M',
  'PGD10-15M',
  'pgd10-15m',
  '10-inch 15 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD10-09M',
  'PGD10-09M',
  'PGD10-09M',
  'pgd10-09m',
  '10-inch 9 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-250M',
  'PGD12-250M',
  'PGD12-250M',
  'pgd12-250m',
  '12-inch 250 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-125M',
  'PGD12-125M',
  'PGD12-125M',
  'pgd12-125m',
  '12-inch 125 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-75M',
  'PGD12-75M',
  'PGD12-75M',
  'pgd12-75m',
  '12-inch 75 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-45M',
  'PGD12-45M',
  'PGD12-45M',
  'pgd12-45m',
  '12-inch 45 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-30M',
  'PGD12-30M',
  'PGD12-30M',
  'pgd12-30m',
  '12-inch 30 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-15M',
  'PGD12-15M',
  'PGD12-15M',
  'pgd12-15m',
  '12-inch 15 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'PGD12-09M',
  'PGD12-09M',
  'PGD12-09M',
  'pgd12-09m',
  '12-inch 9 micron Diamond Abrasive Grinding Disk with magnetic stainless steel backing',
  'grinding-polishing',
  'Diamond Grinding Disks (MAG SS)',
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
  'DIA-M250-08-PSA',
  'DIA-M250-08-PSA',
  'DIA-M250-08-PSA',
  'dia-m250-08-psa',
  '8-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M125-08-PSA',
  'DIA-M125-08-PSA',
  'DIA-M125-08-PSA',
  'dia-m125-08-psa',
  '8-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M075-08-PSA',
  'DIA-M075-08-PSA',
  'DIA-M075-08-PSA',
  'dia-m075-08-psa',
  '8-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M040-08-PSA',
  'DIA-M040-08-PSA',
  'DIA-M040-08-PSA',
  'dia-m040-08-psa',
  '8-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M030-08-PSA',
  'DIA-M030-08-PSA',
  'DIA-M030-08-PSA',
  'dia-m030-08-psa',
  '8-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M015-08-PSA',
  'DIA-M015-08-PSA',
  'DIA-M015-08-PSA',
  'dia-m015-08-psa',
  '8-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M250-10-PSA',
  'DIA-M250-10-PSA',
  'DIA-M250-10-PSA',
  'dia-m250-10-psa',
  '10-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M125-10-PSA',
  'DIA-M125-10-PSA',
  'DIA-M125-10-PSA',
  'dia-m125-10-psa',
  '10-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M075-10-PSA',
  'DIA-M075-10-PSA',
  'DIA-M075-10-PSA',
  'dia-m075-10-psa',
  '10-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M040-10-PSA',
  'DIA-M040-10-PSA',
  'DIA-M040-10-PSA',
  'dia-m040-10-psa',
  '10-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M030-10-PSA',
  'DIA-M030-10-PSA',
  'DIA-M030-10-PSA',
  'dia-m030-10-psa',
  '10-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M015-10-PSA',
  'DIA-M015-10-PSA',
  'DIA-M015-10-PSA',
  'dia-m015-10-psa',
  '10-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M250-12-PSA',
  'DIA-M250-12-PSA',
  'DIA-M250-12-PSA',
  'dia-m250-12-psa',
  '12-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
  true,
  425.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-M125-12-PSA',
  'DIA-M125-12-PSA',
  'DIA-M125-12-PSA',
  'dia-m125-12-psa',
  '12-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
  true,
  425.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DIA-M075-12-PSA',
  'DIA-M075-12-PSA',
  'DIA-M075-12-PSA',
  'dia-m075-12-psa',
  '12-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M040-12-PSA',
  'DIA-M040-12-PSA',
  'DIA-M040-12-PSA',
  'dia-m040-12-psa',
  '12-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M030-12-PSA',
  'DIA-M030-12-PSA',
  'DIA-M030-12-PSA',
  'dia-m030-12-psa',
  '12-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M015-12-PSA',
  'DIA-M015-12-PSA',
  'DIA-M015-12-PSA',
  'dia-m015-12-psa',
  '12-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / PSA',
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
  'DIA-M250-08-MAG',
  'DIA-M250-08-MAG',
  'DIA-M250-08-MAG',
  'dia-m250-08-mag',
  '8-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M125-08-MAG',
  'DIA-M125-08-MAG',
  'DIA-M125-08-MAG',
  'dia-m125-08-mag',
  '8-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M075-08-MAG',
  'DIA-M075-08-MAG',
  'DIA-M075-08-MAG',
  'dia-m075-08-mag',
  '8-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M040-08-MAG',
  'DIA-M040-08-MAG',
  'DIA-M040-08-MAG',
  'dia-m040-08-mag',
  '8-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M030-08-MAG',
  'DIA-M030-08-MAG',
  'DIA-M030-08-MAG',
  'dia-m030-08-mag',
  '8-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M015-08-MAG',
  'DIA-M015-08-MAG',
  'DIA-M015-08-MAG',
  'dia-m015-08-mag',
  '8-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M250-10-MAG',
  'DIA-M250-10-MAG',
  'DIA-M250-10-MAG',
  'dia-m250-10-mag',
  '10-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M125-10-MAG',
  'DIA-M125-10-MAG',
  'DIA-M125-10-MAG',
  'dia-m125-10-mag',
  '10-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M075-10-MAG',
  'DIA-M075-10-MAG',
  'DIA-M075-10-MAG',
  'dia-m075-10-mag',
  '10-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M040-10-MAG',
  'DIA-M040-10-MAG',
  'DIA-M040-10-MAG',
  'dia-m040-10-mag',
  '10-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M030-10-MAG',
  'DIA-M030-10-MAG',
  'DIA-M030-10-MAG',
  'dia-m030-10-mag',
  '10-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M015-10-MAG',
  'DIA-M015-10-MAG',
  'DIA-M015-10-MAG',
  'dia-m015-10-mag',
  '10-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M250-12-MAG',
  'DIA-M250-12-MAG',
  'DIA-M250-12-MAG',
  'dia-m250-12-mag',
  '12-inch 250 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M125-12-MAG',
  'DIA-M125-12-MAG',
  'DIA-M125-12-MAG',
  'dia-m125-12-mag',
  '12-inch 125 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M075-12-MAG',
  'DIA-M075-12-MAG',
  'DIA-M075-12-MAG',
  'dia-m075-12-mag',
  '12-inch 75 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M040-12-MAG',
  'DIA-M040-12-MAG',
  'DIA-M040-12-MAG',
  'dia-m040-12-mag',
  '12-inch 40 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M030-12-MAG',
  'DIA-M030-12-MAG',
  'DIA-M030-12-MAG',
  'dia-m030-12-mag',
  '12-inch 30 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-M015-12-MAG',
  'DIA-M015-12-MAG',
  'DIA-M015-12-MAG',
  'dia-m015-12-mag',
  '12-inch 15 micron metal bonded Diamond Abrasive Grinding Disk with MAG backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Metal-Bonded) / MAG',
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
  'DIA-R125-08-PSA',
  'DIA-R125-08-PSA',
  'DIA-R125-08-PSA',
  'dia-r125-08-psa',
  '8-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R070-08-PSA',
  'DIA-R070-08-PSA',
  'DIA-R070-08-PSA',
  'dia-r070-08-psa',
  '8-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R035-08-PSA',
  'DIA-R035-08-PSA',
  'DIA-R035-08-PSA',
  'dia-r035-08-psa',
  '8-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R025-08-PSA',
  'DIA-R025-08-PSA',
  'DIA-R025-08-PSA',
  'dia-r025-08-psa',
  '8-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R015-08-PSA',
  'DIA-R015-08-PSA',
  'DIA-R015-08-PSA',
  'dia-r015-08-psa',
  '8-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R009-08-PSA',
  'DIA-R009-08-PSA',
  'DIA-R009-08-PSA',
  'dia-r009-08-psa',
  '8-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R125-10-PSA',
  'DIA-R125-10-PSA',
  'DIA-R125-10-PSA',
  'dia-r125-10-psa',
  '10-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R070-10-PSA',
  'DIA-R070-10-PSA',
  'DIA-R070-10-PSA',
  'dia-r070-10-psa',
  '10-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R035-10-PSA',
  'DIA-R035-10-PSA',
  'DIA-R035-10-PSA',
  'dia-r035-10-psa',
  '10-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R025-10-PSA',
  'DIA-R025-10-PSA',
  'DIA-R025-10-PSA',
  'dia-r025-10-psa',
  '10-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R015-10-PSA',
  'DIA-R015-10-PSA',
  'DIA-R015-10-PSA',
  'dia-r015-10-psa',
  '10-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R009-10-PSA',
  'DIA-R009-10-PSA',
  'DIA-R009-10-PSA',
  'dia-r009-10-psa',
  '10-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R125-12-PSA',
  'DIA-R125-12-PSA',
  'DIA-R125-12-PSA',
  'dia-r125-12-psa',
  '12-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R070-12-PSA',
  'DIA-R070-12-PSA',
  'DIA-R070-12-PSA',
  'dia-r070-12-psa',
  '12-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R035-12-PSA',
  'DIA-R035-12-PSA',
  'DIA-R035-12-PSA',
  'dia-r035-12-psa',
  '12-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R025-12-PSA',
  'DIA-R025-12-PSA',
  'DIA-R025-12-PSA',
  'dia-r025-12-psa',
  '12-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R015-12-PSA',
  'DIA-R015-12-PSA',
  'DIA-R015-12-PSA',
  'dia-r015-12-psa',
  '12-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R009-12-PSA',
  'DIA-R009-12-PSA',
  'DIA-R009-12-PSA',
  'dia-r009-12-psa',
  '12-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with PSA backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / PSA',
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
  'DIA-R125-08-MAG',
  'DIA-R125-08-MAG',
  'DIA-R125-08-MAG',
  'dia-r125-08-mag',
  '8-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R070-08-MAG',
  'DIA-R070-08-MAG',
  'DIA-R070-08-MAG',
  'dia-r070-08-mag',
  '8-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R035-08-MAG',
  'DIA-R035-08-MAG',
  'DIA-R035-08-MAG',
  'dia-r035-08-mag',
  '8-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R025-08-MAG',
  'DIA-R025-08-MAG',
  'DIA-R025-08-MAG',
  'dia-r025-08-mag',
  '8-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R015-08-MAG',
  'DIA-R015-08-MAG',
  'DIA-R015-08-MAG',
  'dia-r015-08-mag',
  '8-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R009-08-MAG',
  'DIA-R009-08-MAG',
  'DIA-R009-08-MAG',
  'dia-r009-08-mag',
  '8-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R125-10-MAG',
  'DIA-R125-10-MAG',
  'DIA-R125-10-MAG',
  'dia-r125-10-mag',
  '10-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R070-10-MAG',
  'DIA-R070-10-MAG',
  'DIA-R070-10-MAG',
  'dia-r070-10-mag',
  '10-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R035-10-MAG',
  'DIA-R035-10-MAG',
  'DIA-R035-10-MAG',
  'dia-r035-10-mag',
  '10-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R025-10-MAG',
  'DIA-R025-10-MAG',
  'DIA-R025-10-MAG',
  'dia-r025-10-mag',
  '10-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R015-10-MAG',
  'DIA-R015-10-MAG',
  'DIA-R015-10-MAG',
  'dia-r015-10-mag',
  '10-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R009-10-MAG',
  'DIA-R009-10-MAG',
  'DIA-R009-10-MAG',
  'dia-r009-10-mag',
  '10-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R125-12-MAG',
  'DIA-R125-12-MAG',
  'DIA-R125-12-MAG',
  'dia-r125-12-mag',
  '12-inch 125 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R070-12-MAG',
  'DIA-R070-12-MAG',
  'DIA-R070-12-MAG',
  'dia-r070-12-mag',
  '12-inch 70 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R035-12-MAG',
  'DIA-R035-12-MAG',
  'DIA-R035-12-MAG',
  'dia-r035-12-mag',
  '12-inch 35 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R025-12-MAG',
  'DIA-R025-12-MAG',
  'DIA-R025-12-MAG',
  'dia-r025-12-mag',
  '12-inch 25 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R015-12-MAG',
  'DIA-R015-12-MAG',
  'DIA-R015-12-MAG',
  'dia-r015-12-mag',
  '12-inch 15 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'DIA-R009-12-MAG',
  'DIA-R009-12-MAG',
  'DIA-R009-12-MAG',
  'dia-r009-12-mag',
  '12-inch 9 micron resin bonded Diamond Abrasive Grinding Disk with Magnetic backing (each)',
  'grinding-polishing',
  'Diamond Grinding Disks (Resin-Bonded) / MAG',
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
  'ORION-MD08',
  'ORION-MD08',
  'ORION-MD08',
  'orion-md08',
  '8-inch MD Orion Composite Disk for 3-6 micron Diamond Abrasive Suspension (precharged with 3 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'ORION-MD10',
  'ORION-MD10',
  'ORION-MD10',
  'orion-md10',
  '10-inch MD Orion Composite Disk for 3-6 micron Diamond Abrasive Suspension (precharged with 3 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'ORION-MD12',
  'ORION-MD12',
  'ORION-MD12',
  'orion-md12',
  '12-inch MD Orion Composite Disk for 3-6 micron Diamond Abrasive Suspension (precharged with 3 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'SIRIUS-MD08',
  'SIRIUS-MD08',
  'SIRIUS-MD08',
  'sirius-md08',
  '8-inch MD Sirius Composite Disk for 6-15 micron Diamond Abrasive Suspension (precharged with 9 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'SIRIUS-MD10',
  'SIRIUS-MD10',
  'SIRIUS-MD10',
  'sirius-md10',
  '10-inch MD Sirius Composite Disk for 6-15 micron Diamond Abrasive Suspension (precharged with 9 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'SIRIUS-MD12',
  'SIRIUS-MD12',
  'SIRIUS-MD12',
  'sirius-md12',
  '12-inch MD Sirius Composite Disk for 6-15 micron Diamond Abrasive Suspension (precharged with 9 micron Diamond) (each)',
  'grinding-polishing',
  'Composite Disks',
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
  'ALO-8105PB-3',
  'ALO-8105PB-3',
  'ALO-8105PB-3',
  'alo-8105pb-3',
  '8-inch 0.05 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8103PB-3',
  'ALO-8103PB-3',
  'ALO-8103PB-3',
  'alo-8103pb-3',
  '8-inch 0.30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8001PB-3',
  'ALO-8001PB-3',
  'ALO-8001PB-3',
  'alo-8001pb-3',
  '8-inch 1 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8003PB-3',
  'ALO-8003PB-3',
  'ALO-8003PB-3',
  'alo-8003pb-3',
  '8-inch 3 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8005PB-3',
  'ALO-8005PB-3',
  'ALO-8005PB-3',
  'alo-8005pb-3',
  '8-inch 5 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8009PB-3',
  'ALO-8009PB-3',
  'ALO-8009PB-3',
  'alo-8009pb-3',
  '8-inch 9 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8012PB-3',
  'ALO-8012PB-3',
  'ALO-8012PB-3',
  'alo-8012pb-3',
  '8-inch 12 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8015PB-3',
  'ALO-8015PB-3',
  'ALO-8015PB-3',
  'alo-8015pb-3',
  '8-inch 15 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8030PB-3',
  'ALO-8030PB-3',
  'ALO-8030PB-3',
  'alo-8030pb-3',
  '8-inch 30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-10105PB-3',
  'ALO-10105PB-3',
  'ALO-10105PB-3',
  'alo-10105pb-3',
  '10-inch 0.05 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-10103PB-3',
  'ALO-10103PB-3',
  'ALO-10103PB-3',
  'alo-10103pb-3',
  '10-inch 0.30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1001PB-3',
  'ALO-1001PB-3',
  'ALO-1001PB-3',
  'alo-1001pb-3',
  '10-inch 1 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1003PB-3',
  'ALO-1003PB-3',
  'ALO-1003PB-3',
  'alo-1003pb-3',
  '10-inch 3 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1005PB-3',
  'ALO-1005PB-3',
  'ALO-1005PB-3',
  'alo-1005pb-3',
  '10-inch 5 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1009PB-3',
  'ALO-1009PB-3',
  'ALO-1009PB-3',
  'alo-1009pb-3',
  '10-inch 9 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1012PB-3',
  'ALO-1012PB-3',
  'ALO-1012PB-3',
  'alo-1012pb-3',
  '10-inch 12 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1015PB-3',
  'ALO-1015PB-3',
  'ALO-1015PB-3',
  'alo-1015pb-3',
  '10-inch 15 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1030PB-3',
  'ALO-1030PB-3',
  'ALO-1030PB-3',
  'alo-1030pb-3',
  '10-inch 30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-12105PB-3',
  'ALO-12105PB-3',
  'ALO-12105PB-3',
  'alo-12105pb-3',
  '12-inch 0.05 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-12103PB-3',
  'ALO-12103PB-3',
  'ALO-12103PB-3',
  'alo-12103pb-3',
  '12-inch 0.30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1201PB-3',
  'ALO-1201PB-3',
  'ALO-1201PB-3',
  'alo-1201pb-3',
  '12-inch 1 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1203PB-3',
  'ALO-1203PB-3',
  'ALO-1203PB-3',
  'alo-1203pb-3',
  '12-inch 3 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1205PB-3',
  'ALO-1205PB-3',
  'ALO-1205PB-3',
  'alo-1205pb-3',
  '12-inch 5 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1209PB-3',
  'ALO-1209PB-3',
  'ALO-1209PB-3',
  'alo-1209pb-3',
  '12-inch 9 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1212PB-3',
  'ALO-1212PB-3',
  'ALO-1212PB-3',
  'alo-1212pb-3',
  '12-inch 12 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1215PB-3',
  'ALO-1215PB-3',
  'ALO-1215PB-3',
  'alo-1215pb-3',
  '12-inch 15 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-1230PB-3',
  'ALO-1230PB-3',
  'ALO-1230PB-3',
  'alo-1230pb-3',
  '12-inch 30 micron Alumina Lapping Film (plain-backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / Plain Back',
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
  'ALO-8105PSA-3',
  'ALO-8105PSA-3',
  'ALO-8105PSA-3',
  'alo-8105psa-3',
  '8-inch 0.05 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8103PSA-3',
  'ALO-8103PSA-3',
  'ALO-8103PSA-3',
  'alo-8103psa-3',
  '8-inch 0.30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8001PSA-3',
  'ALO-8001PSA-3',
  'ALO-8001PSA-3',
  'alo-8001psa-3',
  '8-inch 1 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8003PSA-3',
  'ALO-8003PSA-3',
  'ALO-8003PSA-3',
  'alo-8003psa-3',
  '8-inch 3 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8005PSA-3',
  'ALO-8005PSA-3',
  'ALO-8005PSA-3',
  'alo-8005psa-3',
  '8-inch 5 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8009PSA-3',
  'ALO-8009PSA-3',
  'ALO-8009PSA-3',
  'alo-8009psa-3',
  '8-inch 9 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8012PSA-3',
  'ALO-8012PSA-3',
  'ALO-8012PSA-3',
  'alo-8012psa-3',
  '8-inch 12 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8015PSA-3',
  'ALO-8015PSA-3',
  'ALO-8015PSA-3',
  'alo-8015psa-3',
  '8-inch 15 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-8030PSA-3',
  'ALO-8030PSA-3',
  'ALO-8030PSA-3',
  'alo-8030psa-3',
  '8-inch 30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-10105PSA-3',
  'ALO-10105PSA-3',
  'ALO-10105PSA-3',
  'alo-10105psa-3',
  '10-inch 0.05 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-10103PSA-3',
  'ALO-10103PSA-3',
  'ALO-10103PSA-3',
  'alo-10103psa-3',
  '10-inch 0.30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1001PSA-3',
  'ALO-1001PSA-3',
  'ALO-1001PSA-3',
  'alo-1001psa-3',
  '10-inch 1 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1003PSA-3',
  'ALO-1003PSA-3',
  'ALO-1003PSA-3',
  'alo-1003psa-3',
  '10-inch 3 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1005PSA-3',
  'ALO-1005PSA-3',
  'ALO-1005PSA-3',
  'alo-1005psa-3',
  '10-inch 5 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1009PSA-3',
  'ALO-1009PSA-3',
  'ALO-1009PSA-3',
  'alo-1009psa-3',
  '10-inch 9 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1012PSA-3',
  'ALO-1012PSA-3',
  'ALO-1012PSA-3',
  'alo-1012psa-3',
  '10-inch 12 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1015PSA-3',
  'ALO-1015PSA-3',
  'ALO-1015PSA-3',
  'alo-1015psa-3',
  '10-inch 15 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1030PSA-3',
  'ALO-1030PSA-3',
  'ALO-1030PSA-3',
  'alo-1030psa-3',
  '10-inch 30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-12105PSA-3',
  'ALO-12105PSA-3',
  'ALO-12105PSA-3',
  'alo-12105psa-3',
  '12-inch 0.05 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-12103PSA-3',
  'ALO-12103PSA-3',
  'ALO-12103PSA-3',
  'alo-12103psa-3',
  '12-inch 0.30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
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
  'ALO-1201PSA-3',
  'ALO-1201PSA-3',
  'ALO-1201PSA-3',
  'alo-1201psa-3',
  '12-inch 1 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1203PSA-3',
  'ALO-1203PSA-3',
  'ALO-1203PSA-3',
  'alo-1203psa-3',
  '12-inch 3 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1205PSA-3',
  'ALO-1205PSA-3',
  'ALO-1205PSA-3',
  'alo-1205psa-3',
  '12-inch 5 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1209PSA-3',
  'ALO-1209PSA-3',
  'ALO-1209PSA-3',
  'alo-1209psa-3',
  '12-inch 9 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1212PSA-3',
  'ALO-1212PSA-3',
  'ALO-1212PSA-3',
  'alo-1212psa-3',
  '12-inch 12 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1215PSA-3',
  'ALO-1215PSA-3',
  'ALO-1215PSA-3',
  'alo-1215psa-3',
  '12-inch 15 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ALO-1230PSA-3',
  'ALO-1230PSA-3',
  'ALO-1230PSA-3',
  'alo-1230psa-3',
  '12-inch 30 micron Alumina Lapping Film (PSA adhesive backed) (100/pkg)',
  'grinding-polishing',
  'Alumina Lapping Films / PSA',
  true,
  395.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'DA-01P8',
  'DA-01P8',
  'DA-01P8',
  'da-01p8',
  '8-inch 0.10 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-025P8',
  'DA-025P8',
  'DA-025P8',
  'da-025p8',
  '8-inch 0.25 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-05P8',
  'DA-05P8',
  'DA-05P8',
  'da-05p8',
  '8-inch 0.50 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-1P8',
  'DA-1P8',
  'DA-1P8',
  'da-1p8',
  '8-inch 1 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-3P8',
  'DA-3P8',
  'DA-3P8',
  'da-3p8',
  '8-inch 3 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-6P8',
  'DA-6P8',
  'DA-6P8',
  'da-6p8',
  '8-inch 6 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-9P8',
  'DA-9P8',
  'DA-9P8',
  'da-9p8',
  '8-inch 9 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-15P8',
  'DA-15P8',
  'DA-15P8',
  'da-15p8',
  '8-inch 15 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-30P8',
  'DA-30P8',
  'DA-30P8',
  'da-30p8',
  '8-inch 30 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-45P8',
  'DA-45P8',
  'DA-45P8',
  'da-45p8',
  '8-inch 45 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-01P10',
  'DA-01P10',
  'DA-01P10',
  'da-01p10',
  '10-inch 0.10 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-025P10',
  'DA-025P10',
  'DA-025P10',
  'da-025p10',
  '10-inch 0.25 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-05P10',
  'DA-05P10',
  'DA-05P10',
  'da-05p10',
  '10-inch 0.50 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-1P10',
  'DA-1P10',
  'DA-1P10',
  'da-1p10',
  '10-inch 1 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-3P10',
  'DA-3P10',
  'DA-3P10',
  'da-3p10',
  '10-inch 3 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-6P10',
  'DA-6P10',
  'DA-6P10',
  'da-6p10',
  '10-inch 6 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-9P10',
  'DA-9P10',
  'DA-9P10',
  'da-9p10',
  '10-inch 9 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-15P10',
  'DA-15P10',
  'DA-15P10',
  'da-15p10',
  '10-inch 15 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-30P10',
  'DA-30P10',
  'DA-30P10',
  'da-30p10',
  '10-inch 30 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-45P10',
  'DA-45P10',
  'DA-45P10',
  'da-45p10',
  '10-inch 45 micron Diamond Lapping Film (plain-backed) (5/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
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
  'DA-01P12',
  'DA-01P12',
  'DA-01P12',
  'da-01p12',
  '12-inch 0.10 micron Diamond Lapping Film (plain-backed) (3/pkg)',
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
  'DA-025P12',
  'DA-025P12',
  'DA-025P12',
  'da-025p12',
  '12-inch 0.25 micron Diamond Lapping Film (plain-backed) (3/pkg)',
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
  'DA-05P12',
  'DA-05P12',
  'DA-05P12',
  'da-05p12',
  '12-inch 0.50 micron Diamond Lapping Film (plain-backed) (3/pkg)',
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
  'DA-1P12',
  'DA-1P12',
  'DA-1P12',
  'da-1p12',
  '12-inch 1 micron Diamond Lapping Film (plain-backed) (3/pkg)',
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
  'DA-3P12',
  'DA-3P12',
  'DA-3P12',
  'da-3p12',
  '12-inch 3 micron Diamond Lapping Film (plain-backed) (3/pkg)',
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
  'DA-6P12',
  'DA-6P12',
  'DA-6P12',
  'da-6p12',
  '12-inch 6 micron Diamond Lapping Film (plain-backed) (3/pkg)',
  'grinding-polishing',
  'Diamond Lapping Films / Plain Back',
  true,
  230.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
