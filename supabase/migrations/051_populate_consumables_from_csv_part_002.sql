-- ============================================================================
-- POPULATE CONSUMABLES FROM CSV
-- ============================================================================
-- This migration populates the consumables tables from the CSV data
-- ============================================================================

-- Base consumables
-- Part 2 of 16
-- Statements 201 to 400

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'EH-3000-128P',
  'EH-3000-128P',
  'EH-3000-128P',
  'eh-3000-128p',
  'EPOCAST Plus Epoxy Resin Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ERF-3000-32',
  'ERF-3000-32',
  'ERF-3000-32',
  'erf-3000-32',
  'QUICKMOUNT 2 Fast Epoxy Resin (32 oz)',
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
  'ERF-3000-128',
  'ERF-3000-128',
  'ERF-3000-128',
  'erf-3000-128',
  'QUICKMOUNT 2 Fast Epoxy Resin (1 gallon)',
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
  'ERF-3000-5G',
  'ERF-3000-5G',
  'ERF-3000-5G',
  'erf-3000-5g',
  'QUICKMOUNT 2 Fast Epoxy Resin (5 gallons)',
  'mounting',
  'Resins',
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
  'EHF-3000-08',
  'EHF-3000-08',
  'EHF-3000-08',
  'ehf-3000-08',
  'QUICKMOUNT 2 Fast Epoxy Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'EHF-3000-32',
  'EHF-3000-32',
  'EHF-3000-32',
  'ehf-3000-32',
  'QUICKMOUNT 2 Fast Epoxy Hardener (32 oz)',
  'mounting',
  'Hardeners',
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
  'EHF-3000-128',
  'EHF-3000-128',
  'EHF-3000-128',
  'ehf-3000-128',
  'QUICKMOUNT 2 Fast Epoxy Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000R-32',
  'ULTRA-3000R-32',
  'ULTRA-3000R-32',
  'ultra-3000r-32',
  'ULTRATHIN 2 Low Viscosity Epoxy (32 oz resin)',
  'mounting',
  'Resins',
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
  'ULTRA-3000R-128',
  'ULTRA-3000R-128',
  'ULTRA-3000R-128',
  'ultra-3000r-128',
  'ULTRATHIN 2 Low Viscosity Epoxy (1 gallon resin)',
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
  'ULTRA-3000R-5G',
  'ULTRA-3000R-5G',
  'ULTRA-3000R-5G',
  'ultra-3000r-5g',
  'ULTRATHIN 2 Low Viscosity Epoxy (5 gallons resin)',
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
  'ULTRA-3000H-08',
  'ULTRA-3000H-08',
  'ULTRA-3000H-08',
  'ultra-3000h-08',
  'ULTRATHIN 2 Low Viscosity Epoxy Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000H-32',
  'ULTRA-3000H-32',
  'ULTRA-3000H-32',
  'ultra-3000h-32',
  'ULTRATHIN 2 Low Viscosity Epoxy Hardener (32 oz)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000H-128',
  'ULTRA-3000H-128',
  'ULTRA-3000H-128',
  'ultra-3000h-128',
  'ULTRATHIN 2 Low Viscosity Epoxy Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000R-32P',
  'ULTRA-3000R-32P',
  'ULTRA-3000R-32P',
  'ultra-3000r-32p',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy (32 oz resin)',
  'mounting',
  'Resins',
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
  'ULTRA-3000R-128P',
  'ULTRA-3000R-128P',
  'ULTRA-3000R-128P',
  'ultra-3000r-128p',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy (1 gallon resin)',
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
  'ULTRA-3000R-5GP',
  'ULTRA-3000R-5GP',
  'ULTRA-3000R-5GP',
  'ultra-3000r-5gp',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy (5 gallons resin)',
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
  'ULTRA-3000H-08P',
  'ULTRA-3000H-08P',
  'ULTRA-3000H-08P',
  'ultra-3000h-08p',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000H-32P',
  'ULTRA-3000H-32P',
  'ULTRA-3000H-32P',
  'ultra-3000h-32p',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy Hardener (32 oz)',
  'mounting',
  'Hardeners',
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
  'ULTRA-3000H-128P',
  'ULTRA-3000H-128P',
  'ULTRA-3000H-128P',
  'ultra-3000h-128p',
  'ULTRATHIN 2 Plus Low Viscosity Epoxy Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ELITE-3000-2R-32',
  'ELITE-3000-2R-32',
  'ELITE-3000-2R-32',
  'elite-3000-2r-32',
  'EPOXY ELITE Resin (32 oz)',
  'mounting',
  'Resins',
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
  'ELITE-3000-2R-128',
  'ELITE-3000-2R-128',
  'ELITE-3000-2R-128',
  'elite-3000-2r-128',
  'EPOXY ELITE Resin (1 gallon)',
  'mounting',
  'Resins',
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
  'ELITE-3000-2R-5G',
  'ELITE-3000-2R-5G',
  'ELITE-3000-2R-5G',
  'elite-3000-2r-5g',
  'EPOXY ELITE Resin (5 gallons)',
  'mounting',
  'Resins',
  true,
  875.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ELITE-3000-2H-08',
  'ELITE-3000-2H-08',
  'ELITE-3000-2H-08',
  'elite-3000-2h-08',
  'EPOXY ELITE Hardener (8 oz)',
  'mounting',
  'Hardeners',
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
  'ELITE-3000-2H-32',
  'ELITE-3000-2H-32',
  'ELITE-3000-2H-32',
  'elite-3000-2h-32',
  'EPOXY ELITE Hardener (32 oz)',
  'mounting',
  'Hardeners',
  true,
  128.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'ELITE-3000-2H-128',
  'ELITE-3000-2H-128',
  'ELITE-3000-2H-128',
  'elite-3000-2h-128',
  'EPOXY ELITE Hardener (1 gallon)',
  'mounting',
  'Hardeners',
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
  'ED-3000-01',
  'ED-3000-01',
  'ED-3000-01',
  'ed-3000-01',
  'Epoxy Casting Dispenser (1 gallon)',
  'mounting',
  'Miscellaneous',
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
  'SS-1000-100',
  'SS-1000-100',
  'SS-1000-100',
  'ss-1000-100',
  'Stirring Sticks (tongue depressors) for Castable Mounting',
  'mounting',
  'Miscellaneous',
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
  'MCUPS-0100',
  'MCUPS-0100',
  'MCUPS-0100',
  'mcups-0100',
  'Mixing Cups (3 oz graduated) for Castable Mounting (100/pkg)',
  'mounting',
  'Miscellaneous',
  true,
  16.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'PCUPS-050',
  'PCUPS-050',
  'PCUPS-050',
  'pcups-050',
  'Plastic Mixing Cups (9 oz) for Castable Mounting(50/pkg)',
  'mounting',
  'Miscellaneous',
  true,
  8.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'POUR-CUP-050',
  'POUR-CUP-050',
  'POUR-CUP-050',
  'pour-cup-050',
  'Vacuum Pouring Cups, 100 ml plastic for Castable Mounting (50/pkg)',
  'mounting',
  'Miscellaneous',
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
  'METPREP-0100',
  'METPREP-0100',
  'METPREP-0100',
  'metprep-0100',
  '1-inch 2-piece Reusable Mounting Cups for Castable Mounting (12/pkg)',
  'mounting',
  'Miscellaneous',
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
  'METPREP-0125',
  'METPREP-0125',
  'METPREP-0125',
  'metprep-0125',
  '1.25-inch 2-piece Reusable Mounting Cups for Castable Mounting (12/pkg)',
  'mounting',
  'Miscellaneous',
  true,
  33.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'METPREP-0150',
  'METPREP-0150',
  'METPREP-0150',
  'metprep-0150',
  '1.5-inch 2-piece Reusable Mounting Cups for Castable Mounting (12/pkg)',
  'mounting',
  'Miscellaneous',
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
  'METPREP-0200',
  'METPREP-0200',
  'METPREP-0200',
  'metprep-0200',
  '2-inch 2-piece Reusable Mounting Cups for Castable Mounting (12/pkg)',
  'mounting',
  'Miscellaneous',
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
  'MOUNT-0100',
  'MOUNT-0100',
  'MOUNT-0100',
  'mount-0100',
  '1-inch Disposal Specimen Mounting Molds for Castable Mounting (50/pkg)',
  'mounting',
  'Molds',
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
  'MOUNT-0125',
  'MOUNT-0125',
  'MOUNT-0125',
  'mount-0125',
  '1.25-inch Disposal Specimen Mounting Molds for Castable Mounting (50/pkg)',
  'mounting',
  'Molds',
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
  'MOUNT-0150',
  'MOUNT-0150',
  'MOUNT-0150',
  'mount-0150',
  '1.5-inch Disposal Specimen Mounting Molds for Castable Mounting (50/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0100',
  'RMOUNT-0100',
  'RMOUNT-0100',
  'rmount-0100',
  '1-inch Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0100C',
  'RMOUNT-0100C',
  'RMOUNT-0100C',
  'rmount-0100c',
  '1-inch Clear Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0125',
  'RMOUNT-0125',
  'RMOUNT-0125',
  'rmount-0125',
  '1.25-inch Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0125C',
  'RMOUNT-0125C',
  'RMOUNT-0125C',
  'rmount-0125c',
  '1.25-inch Clear Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0150',
  'RMOUNT-0150',
  'RMOUNT-0150',
  'rmount-0150',
  '1.5-inch Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-0150C',
  'RMOUNT-0150C',
  'RMOUNT-0150C',
  'rmount-0150c',
  '1.5-inch Clear Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
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
  'RMOUNT-315R',
  'RMOUNT-315R',
  'RMOUNT-315R',
  'rmount-315r',
  '2.75 x 1.625 x 7/8-inch (70 x 41 x 22 mm)  Reusable Rectangular Silicon Mounting Molds for Castable Mounting (each)',
  'mounting',
  'Molds',
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
  'RMOUNT-0200',
  'RMOUNT-0200',
  'RMOUNT-0200',
  'rmount-0200',
  '2.0 Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
  true,
  56.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RMOUNT-0200C',
  'RMOUNT-0200C',
  'RMOUNT-0200C',
  'rmount-0200c',
  '2-inch Clear Reusable Silicon Rubber Mounting Molds for Castable Mounting (3/pkg)',
  'mounting',
  'Molds',
  true,
  56.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'RMOUNT-315R',
  'RMOUNT-315R',
  'RMOUNT-315R',
  'rmount-315r',
  '2.75 x 1.625 x 7/8-inch (70 x 41 x 22 mm)  Reusable Rectangular Silicon Mounting Molds for Castable Mounting (each)',
  'mounting',
  'Molds',
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
  'RMOUNT-315RC',
  'RMOUNT-315RC',
  'RMOUNT-315RC',
  'rmount-315rc',
  '2.75 x 1.625 x 7/8-inch (70 x 41 x 22 mm)  Clear Reusable Rectangular Silicon Mounting Molds for Castable Mounting (each)',
  'mounting',
  'Molds',
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
  'RMOUNT-302R',
  'RMOUNT-302R',
  'RMOUNT-302R',
  'rmount-302r',
  '3 x 2 x 7/8-inch (76 x 51 x 22 mm) Reusable Rectangular Silicon Mounting Molds for Castable Mounting (each)',
  'mounting',
  'Molds',
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
  'RMOUNT-302RC',
  'RMOUNT-302RC',
  'RMOUNT-302RC',
  'rmount-302rc',
  '3 x 2 x 7/8-inch (76 x 51 x 22 mm) Clear Reusable Rectangular Silicon Mounting Molds for Castable Mounting (each)',
  'mounting',
  'Molds',
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
  'STORE-0125',
  'STORE-0125',
  'STORE-0125',
  'store-0125',
  '1.25-inch specimen storage containers for Castable Mounting (25/pkg)',
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
  'KLIP-0100',
  'KLIP-0100',
  'KLIP-0100',
  'klip-0100',
  'Plastic KLIP specimen clips (100/pkg)',
  'mounting',
  'Specimen Clips',
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
  'MKLIP-0100',
  'MKLIP-0100',
  'MKLIP-0100',
  'mklip-0100',
  'Metal MKLIP specimen clips (100/pkg)',
  'mounting',
  'Specimen Clips',
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
  'SKLIP-0100',
  'SKLIP-0100',
  'SKLIP-0100',
  'sklip-0100',
  'Plastic SKLIP spring specimen clips (100/pkg)',
  'mounting',
  'Specimen Clips',
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
  'SKLIP-1000',
  'SKLIP-1000',
  'SKLIP-1000',
  'sklip-1000',
  'Plastic SKLIP spring specimen clips (1000/pkg)',
  'mounting',
  'Specimen Clips',
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
  'MULTICLIP-0100',
  'MULTICLIP-0100',
  'MULTICLIP-0100',
  'multiclip-0100',
  'Plastic MULTICLIP specimen clips (100/pkg)',
  'mounting',
  'Specimen Clips',
  true,
  56.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'UNIKLIP-0100',
  'UNIKLIP-0100',
  'UNIKLIP-0100',
  'uniklip-0100',
  'Plastic UNIKLIP specimen clips (100/pkg)',
  'mounting',
  'Specimen Clips',
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
  'MIC-S',
  'MIC-S',
  'MIC-S',
  'mic-s',
  'Microscope Slides 1-inch x 3-inch (50/box) for Castable Mounting (Cat. No MIC-S)',
  'mounting',
  'Miscellaneous',
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
  'PETRO-S',
  'PETRO-S',
  'PETRO-S',
  'petro-s',
  'Plain Glass Slide 27x46 mm (72/box) for Castable Mounting (Cat. No PETRO-S)',
  'mounting',
  'Miscellaneous',
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
  'C-SLIP',
  'C-SLIP',
  'C-SLIP',
  'c-slip',
  'Microscope Cover Slip 24mm x 40mm (Approx 75-100 slips) for Castable Mounting (Cat. No. C-SLIP)',
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
  'Scribe',
  'Scribe',
  'Scribe',
  'scribe',
  'Scribing Tool (each)',
  'mounting',
  'Miscellaneous',
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
  'Gloves',
  'Gloves',
  'Gloves',
  'gloves',
  'Large Utility Gloves (pair)',
  'mounting',
  'Miscellaneous',
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
  'SIC-B60',
  'SIC-B60',
  'SIC-B60',
  'sic-b60',
  'SiC Abrasive Belts 4-inch x 36-inch - 10/box - 60 grit',
  'grinding-polishing',
  'Abrasive Belts',
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
  'SIC-B80',
  'SIC-B80',
  'SIC-B80',
  'sic-b80',
  'SiC Abrasive Belts 4-inch x 36-inch - 10/box - 80 grit-inch',
  'grinding-polishing',
  'Abrasive Belts',
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
  'SIC-B120',
  'SIC-B120',
  'SIC-B120',
  'sic-b120',
  'SiC Abrasive Belts 4-inch x 36-inch - 10/box - 120 grit',
  'grinding-polishing',
  'Abrasive Belts',
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
  'SIC-B180',
  'SIC-B180',
  'SIC-B180',
  'sic-b180',
  'SiC Abrasive Belts 4-inch x 36-inch - 10/box - 180 grit',
  'grinding-polishing',
  'Abrasive Belts',
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
  'SIC-B240',
  'SIC-B240',
  'SIC-B240',
  'sic-b240',
  'SiC Abrasive Belts 4-inch x 36-inch - 10/box - 240 grit',
  'grinding-polishing',
  'Abrasive Belts',
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
  'ALO-B120',
  'ALO-B120',
  'ALO-B120',
  'alo-b120',
  'Alumina Abrasive Belts 4-inch x 36 inch- 5/box - 120 Grit',
  'grinding-polishing',
  'Abrasive Belts',
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
  'ZrO2-B060',
  'ZrO2-B060',
  'ZrO2-B060',
  'zro2-b060',
  'Zirconia Abrasive Belts 4-inch x 36-inch - 5/box - 60 grit',
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
  'ZrO2-B120',
  'ZrO2-B120',
  'ZrO2-B120',
  'zro2-b120',
  'Zirconia Abrasive Belts 4-inch x 36-inch - 5/box - 120 grit',
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
  'SIC-120R-60',
  'SIC-120R-60',
  'SIC-120R-60',
  'sic-120r-60',
  '120 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-240R-60',
  'SIC-240R-60',
  'SIC-240R-60',
  'sic-240r-60',
  '240 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-320R-60',
  'SIC-320R-60',
  'SIC-320R-60',
  'sic-320r-60',
  '320 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-360R-60',
  'SIC-360R-60',
  'SIC-360R-60',
  'sic-360r-60',
  '360 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-400R-60',
  'SIC-400R-60',
  'SIC-400R-60',
  'sic-400r-60',
  '400 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-600R-60',
  'SIC-600R-60',
  'SIC-600R-60',
  'sic-600r-60',
  '600 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-800R-60',
  'SIC-800R-60',
  'SIC-800R-60',
  'sic-800r-60',
  '800 grit SiC Roll (3-7/16-inch, 60-feet 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-1200R-60',
  'SIC-1200R-60',
  'SIC-1200R-60',
  'sic-1200r-60',
  '1200 grit SiC Roll (3-7/16-inch, 60-feet, 1-inch core)',
  'grinding-polishing',
  'Grinding Rolls / SiC',
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
  'SIC-120-P1',
  'SIC-120-P1',
  'SIC-120-P1',
  'sic-120-p1',
  '120 (P120) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-240-P1',
  'SIC-240-P1',
  'SIC-240-P1',
  'sic-240-p1',
  '240 (P280) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-320-P1',
  'SIC-320-P1',
  'SIC-320-P1',
  'sic-320-p1',
  '320 (P400) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-400-P1',
  'SIC-400-P1',
  'SIC-400-P1',
  'sic-400-p1',
  '400 (P800) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-600-P1',
  'SIC-600-P1',
  'SIC-600-P1',
  'sic-600-p1',
  '600 (P1200) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-800-P1',
  'SIC-800-P1',
  'SIC-800-P1',
  'sic-800-p1',
  '800 (P2400) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-1000-P1',
  'SIC-1000-P1',
  'SIC-1000-P1',
  'sic-1000-p1',
  '1000 (P3000) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-1200-P1',
  'SIC-1200-P1',
  'SIC-1200-P1',
  'sic-1200-p1',
  '1200 (P4000) grit SiC Abrasive Grinding Powder (1 lb)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-120-P5',
  'SIC-120-P5',
  'SIC-120-P5',
  'sic-120-p5',
  '120 (P120) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-240-P5',
  'SIC-240-P5',
  'SIC-240-P5',
  'sic-240-p5',
  '240 (P280) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-320-P5',
  'SIC-320-P5',
  'SIC-320-P5',
  'sic-320-p5',
  '320 (P400) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-400-P5',
  'SIC-400-P5',
  'SIC-400-P5',
  'sic-400-p5',
  '400 (P800) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-600-P5',
  'SIC-600-P5',
  'SIC-600-P5',
  'sic-600-p5',
  '600 (P1200) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-800-P5',
  'SIC-800-P5',
  'SIC-800-P5',
  'sic-800-p5',
  '800 (P2400) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-1000-P5',
  'SIC-1000-P5',
  'SIC-1000-P5',
  'sic-1000-p5',
  '1000 (P3000) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-1200-P5',
  'SIC-1200-P5',
  'SIC-1200-P5',
  'sic-1200-p5',
  '1200 (P4000) grit SiC Abrasive Grinding Powder (5 lbs)',
  'grinding-polishing',
  'Grinding Powders / SiC',
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
  'SIC-P08C',
  'SIC-P08C',
  'SIC-P08C',
  'sic-p08c',
  '8-inch Combination PSA (adhesive backed)-backed SiC papers (240,360,600,800,1200 grit)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-P10C',
  'SIC-P10C',
  'SIC-P10C',
  'sic-p10c',
  '10-inch Combination PSA (adhesive backed)-backed SiC papers (240,360,600,800,1200 grit)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-P12C',
  'SIC-P12C',
  'SIC-P12C',
  'sic-p12c',
  '12-inch Combination PSA (adhesive backed)-backed SiC papers (240,360,600,800,1200 grit)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-P14C',
  'SIC-P14C',
  'SIC-P14C',
  'sic-p14c',
  '14-inch Combination PSA (adhesive backed)-backed SiC papers (240,360,600,800,1200 grit)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P8-25',
  'SIC-060P8-25',
  'SIC-060P8-25',
  'sic-060p8-25',
  '8-inch 60 grit SiC Abrasive Grinding Paper with PSA backing (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  56.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-080P8-25',
  'SIC-080P8-25',
  'SIC-080P8-25',
  'sic-080p8-25',
  '8-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  56.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-120P8-25',
  'SIC-120P8-25',
  'SIC-120P8-25',
  'sic-120p8-25',
  '8-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P8-25',
  'SIC-180P8-25',
  'SIC-180P8-25',
  'sic-180p8-25',
  '8-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P8-25',
  'SIC-240P8-25',
  'SIC-240P8-25',
  'sic-240p8-25',
  '8-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P8-25',
  'SIC-320P8-25',
  'SIC-320P8-25',
  'sic-320p8-25',
  '8-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P8-25',
  'SIC-360P8-25',
  'SIC-360P8-25',
  'sic-360p8-25',
  '8-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P8-25',
  'SIC-400P8-25',
  'SIC-400P8-25',
  'sic-400p8-25',
  '8-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P8-25',
  'SIC-600P8-25',
  'SIC-600P8-25',
  'sic-600p8-25',
  '8-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P8-25',
  'SIC-800P8-25',
  'SIC-800P8-25',
  'sic-800p8-25',
  '8-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P8-25',
  'SIC-1000P8-25',
  'SIC-1000P8-25',
  'sic-1000p8-25',
  '8-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P8-25',
  'SIC-1200P8-25',
  'SIC-1200P8-25',
  'sic-1200p8-25',
  '8-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P8-50',
  'SIC-060P8-50',
  'SIC-060P8-50',
  'sic-060p8-50',
  '8-inch 60 grit Premium SiC Abrasive Grinding Paper with PSA backing (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P8-50',
  'SIC-080P8-50',
  'SIC-080P8-50',
  'sic-080p8-50',
  '8-inch 80 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P8-50',
  'SIC-120P8-50',
  'SIC-120P8-50',
  'sic-120p8-50',
  '8-inch 120 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P8-50',
  'SIC-180P8-50',
  'SIC-180P8-50',
  'sic-180p8-50',
  '8-inch 180 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P8-50',
  'SIC-240P8-50',
  'SIC-240P8-50',
  'sic-240p8-50',
  '8-inch 240 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P8-50',
  'SIC-320P8-50',
  'SIC-320P8-50',
  'sic-320p8-50',
  '8-inch 320 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P8-50',
  'SIC-360P8-50',
  'SIC-360P8-50',
  'sic-360p8-50',
  '8-inch 360 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P8-50',
  'SIC-400P8-50',
  'SIC-400P8-50',
  'sic-400p8-50',
  '8-inch 400 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P8-50',
  'SIC-600P8-50',
  'SIC-600P8-50',
  'sic-600p8-50',
  '8-inch 600 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P8-50',
  'SIC-800P8-50',
  'SIC-800P8-50',
  'sic-800p8-50',
  '8-inch 800 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P8-50',
  'SIC-1000P8-50',
  'SIC-1000P8-50',
  'sic-1000p8-50',
  '8-inch 1000 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P8-50',
  'SIC-1200P8-50',
  'SIC-1200P8-50',
  'sic-1200p8-50',
  '8-inch 1200 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P8-100',
  'SIC-060P8-100',
  'SIC-060P8-100',
  'sic-060p8-100',
  '8-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P8-100',
  'SIC-080P8-100',
  'SIC-080P8-100',
  'sic-080p8-100',
  '8-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P8-100',
  'SIC-120P8-100',
  'SIC-120P8-100',
  'sic-120p8-100',
  '8-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P8-100',
  'SIC-180P8-100',
  'SIC-180P8-100',
  'sic-180p8-100',
  '8-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P8-100',
  'SIC-240P8-100',
  'SIC-240P8-100',
  'sic-240p8-100',
  '8-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P8-100',
  'SIC-320P8-100',
  'SIC-320P8-100',
  'sic-320p8-100',
  '8-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P8-100',
  'SIC-360P8-100',
  'SIC-360P8-100',
  'sic-360p8-100',
  '8-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P8-100',
  'SIC-400P8-100',
  'SIC-400P8-100',
  'sic-400p8-100',
  '8-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P8-100',
  'SIC-600P8-100',
  'SIC-600P8-100',
  'sic-600p8-100',
  '8-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P8-100',
  'SIC-800P8-100',
  'SIC-800P8-100',
  'sic-800p8-100',
  '8-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P8-100',
  'SIC-1000P8-100',
  'SIC-1000P8-100',
  'sic-1000p8-100',
  '8-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P8-100',
  'SIC-1200P8-100',
  'SIC-1200P8-100',
  'sic-1200p8-100',
  '8-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P10-25',
  'SIC-060P10-25',
  'SIC-060P10-25',
  'sic-060p10-25',
  '10-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P10-25',
  'SIC-080P10-25',
  'SIC-080P10-25',
  'sic-080p10-25',
  '10-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P10-25',
  'SIC-120P10-25',
  'SIC-120P10-25',
  'sic-120p10-25',
  '10-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P10-25',
  'SIC-180P10-25',
  'SIC-180P10-25',
  'sic-180p10-25',
  '10-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P10-25',
  'SIC-240P10-25',
  'SIC-240P10-25',
  'sic-240p10-25',
  '10-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P10-25',
  'SIC-320P10-25',
  'SIC-320P10-25',
  'sic-320p10-25',
  '10-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P10-25',
  'SIC-360P10-25',
  'SIC-360P10-25',
  'sic-360p10-25',
  '10-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P10-25',
  'SIC-400P10-25',
  'SIC-400P10-25',
  'sic-400p10-25',
  '10-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P10-25',
  'SIC-600P10-25',
  'SIC-600P10-25',
  'sic-600p10-25',
  '10-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P10-25',
  'SIC-800P10-25',
  'SIC-800P10-25',
  'sic-800p10-25',
  '10-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P10-25',
  'SIC-1000P10-25',
  'SIC-1000P10-25',
  'sic-1000p10-25',
  '10-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P10-25',
  'SIC-1200P10-25',
  'SIC-1200P10-25',
  'sic-1200p10-25',
  '10-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P10-50',
  'SIC-060P10-50',
  'SIC-060P10-50',
  'sic-060p10-50',
  '10-inch 60 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P10-50',
  'SIC-080P10-50',
  'SIC-080P10-50',
  'sic-080p10-50',
  '10-inch 80 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P10-50',
  'SIC-120P10-50',
  'SIC-120P10-50',
  'sic-120p10-50',
  '10-inch 120 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
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
  'SIC-180P10-50',
  'SIC-180P10-50',
  'SIC-180P10-50',
  'sic-180p10-50',
  '10-inch 180 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
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
  'SIC-240P10-50',
  'SIC-240P10-50',
  'SIC-240P10-50',
  'sic-240p10-50',
  '10-inch 240 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P10-50',
  'SIC-320P10-50',
  'SIC-320P10-50',
  'sic-320p10-50',
  '10-inch 320 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P10-50',
  'SIC-360P10-50',
  'SIC-360P10-50',
  'sic-360p10-50',
  '10-inch 360 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P10-50',
  'SIC-400P10-50',
  'SIC-400P10-50',
  'sic-400p10-50',
  '10-inch 400 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P10-50',
  'SIC-600P10-50',
  'SIC-600P10-50',
  'sic-600p10-50',
  '10-inch 600 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P10-50',
  'SIC-800P10-50',
  'SIC-800P10-50',
  'sic-800p10-50',
  '10-inch 800 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P10-50',
  'SIC-1000P10-50',
  'SIC-1000P10-50',
  'sic-1000p10-50',
  '10-inch 1000 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P10-50',
  'SIC-1200P10-50',
  'SIC-1200P10-50',
  'sic-1200p10-50',
  '10-inch 1200 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P10-100',
  'SIC-060P10-100',
  'SIC-060P10-100',
  'sic-060p10-100',
  '10-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P10-100',
  'SIC-080P10-100',
  'SIC-080P10-100',
  'sic-080p10-100',
  '10-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P10-100',
  'SIC-120P10-100',
  'SIC-120P10-100',
  'sic-120p10-100',
  '10-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P10-100',
  'SIC-180P10-100',
  'SIC-180P10-100',
  'sic-180p10-100',
  '10-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P10-100',
  'SIC-240P10-100',
  'SIC-240P10-100',
  'sic-240p10-100',
  '10-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P10-100',
  'SIC-320P10-100',
  'SIC-320P10-100',
  'sic-320p10-100',
  '10-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P10-100',
  'SIC-360P10-100',
  'SIC-360P10-100',
  'sic-360p10-100',
  '10-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P10-100',
  'SIC-400P10-100',
  'SIC-400P10-100',
  'sic-400p10-100',
  '10-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P10-100',
  'SIC-600P10-100',
  'SIC-600P10-100',
  'sic-600p10-100',
  '10-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P10-100',
  'SIC-800P10-100',
  'SIC-800P10-100',
  'sic-800p10-100',
  '10-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1000P10-100',
  'SIC-1000P10-100',
  'SIC-1000P10-100',
  'sic-1000p10-100',
  '10-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-1200P10-100',
  'SIC-1200P10-100',
  'SIC-1200P10-100',
  'sic-1200p10-100',
  '10-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-060P12-25',
  'SIC-060P12-25',
  'SIC-060P12-25',
  'sic-060p12-25',
  '12-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P12-25',
  'SIC-080P12-25',
  'SIC-080P12-25',
  'sic-080p12-25',
  '12-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P12-25',
  'SIC-120P12-25',
  'SIC-120P12-25',
  'sic-120p12-25',
  '12-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P12-25',
  'SIC-180P12-25',
  'SIC-180P12-25',
  'sic-180p12-25',
  '12-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P12-25',
  'SIC-240P12-25',
  'SIC-240P12-25',
  'sic-240p12-25',
  '12-inch 240 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P12-25',
  'SIC-320P12-25',
  'SIC-320P12-25',
  'sic-320p12-25',
  '12-inch 320 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P12-25',
  'SIC-360P12-25',
  'SIC-360P12-25',
  'sic-360p12-25',
  '12-inch 360 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P12-25',
  'SIC-400P12-25',
  'SIC-400P12-25',
  'sic-400p12-25',
  '12-inch 400 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P12-25',
  'SIC-600P12-25',
  'SIC-600P12-25',
  'sic-600p12-25',
  '12-inch 600 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P12-25',
  'SIC-800P12-25',
  'SIC-800P12-25',
  'sic-800p12-25',
  '12-inch 800 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
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
  'SIC-1000P12-25',
  'SIC-1000P12-25',
  'SIC-1000P12-25',
  'sic-1000p12-25',
  '12-inch 1000 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
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
  'SIC-1200P12-25',
  'SIC-1200P12-25',
  'SIC-1200P12-25',
  'sic-1200p12-25',
  '12-inch 1200 grit SiC PSA (adhesive backed) Abrasive Grinding papers (25/box)',
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
  'SIC-060P12-50',
  'SIC-060P12-50',
  'SIC-060P12-50',
  'sic-060p12-50',
  '12-inch 60 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P12-50',
  'SIC-080P12-50',
  'SIC-080P12-50',
  'sic-080p12-50',
  '12-inch 80 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P12-50',
  'SIC-120P12-50',
  'SIC-120P12-50',
  'sic-120p12-50',
  '12-inch 120 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-180P12-50',
  'SIC-180P12-50',
  'SIC-180P12-50',
  'sic-180p12-50',
  '12-inch 180 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-240P12-50',
  'SIC-240P12-50',
  'SIC-240P12-50',
  'sic-240p12-50',
  '12-inch 240 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-320P12-50',
  'SIC-320P12-50',
  'SIC-320P12-50',
  'sic-320p12-50',
  '12-inch 320 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-360P12-50',
  'SIC-360P12-50',
  'SIC-360P12-50',
  'sic-360p12-50',
  '12-inch 360 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-400P12-50',
  'SIC-400P12-50',
  'SIC-400P12-50',
  'sic-400p12-50',
  '12-inch 400 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-600P12-50',
  'SIC-600P12-50',
  'SIC-600P12-50',
  'sic-600p12-50',
  '12-inch 600 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-800P12-50',
  'SIC-800P12-50',
  'SIC-800P12-50',
  'sic-800p12-50',
  '12-inch 800 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  285.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1000P12-50',
  'SIC-1000P12-50',
  'SIC-1000P12-50',
  'sic-1000p12-50',
  '12-inch 1000 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  285.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-1200P12-50',
  'SIC-1200P12-50',
  'SIC-1200P12-50',
  'sic-1200p12-50',
  '12-inch 1200 grit Premium SiC PSA (adhesive backed) Abrasive Grinding papers (50/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  285.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;

INSERT INTO consumables (
  id, name, item_id, sku, slug, description, category, subcategory,
  is_pace_product, list_price, status, is_active, created_at, updated_at
) VALUES (
  gen_random_uuid(),
  'SIC-060P12-100',
  'SIC-060P12-100',
  'SIC-060P12-100',
  'sic-060p12-100',
  '12-inch 60 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-080P12-100',
  'SIC-080P12-100',
  'SIC-080P12-100',
  'sic-080p12-100',
  '12-inch 80 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
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
  'SIC-120P12-100',
  'SIC-120P12-100',
  'SIC-120P12-100',
  'sic-120p12-100',
  '12-inch 120 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
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
  'SIC-180P12-100',
  'SIC-180P12-100',
  'SIC-180P12-100',
  'sic-180p12-100',
  '12-inch 180 grit SiC PSA (adhesive backed) Abrasive Grinding papers (100/box)',
  'grinding-polishing',
  'Grinding Papers / SiC / PSA',
  true,
  240.0,
  'active',
  true,
  NOW(),
  NOW()
) ON CONFLICT DO NOTHING;
