-- Add image URLs for equipment items
-- Maps item_id to the corresponding image file path in public/images/equipment/

-- ============================================================================
-- SECTIONING EQUIPMENT
-- ============================================================================

-- Automated Abrasive Cutters
UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/automated abrasive cutters/mega-t300a/mega-t300a-cover.webp'
WHERE item_id = 'MEGA-T300A';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/automated abrasive cutters/mega-t350a/mega-t350a-cover.png'
WHERE item_id = 'MEGA-T350A';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/automated abrasive cutters/mega-t400a/mega-t400a-cover.webp'
WHERE item_id = 'MEGA-T400A';

-- Manual Abrasive Cutters
UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/manual abrasive cutters/mega-m250s/mega-m250s-cover.webp'
WHERE item_id = 'MEGA-M250S';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250-cover.webp'
WHERE item_id = 'MEGA-T250S';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s-cover.webp'
WHERE item_id = 'MEGA-T300S';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/manual abrasive cutters/mega-t350s/mega-t350s-cover.webp'
WHERE item_id = 'MEGA-T350S';

UPDATE equipment SET image_url = '/images/equipment/abrasive sectioning/manual abrasive cutters/mega-t400s/mega-t400s-cover.webp'
WHERE item_id = 'MEGA-T400S';

-- Precision Wafering
UPDATE equipment SET image_url = '/images/equipment/precision wafering/gravity feed precision cutters/pico-155p/pico-155p-cover.webp'
WHERE item_id = 'PICO-155P';

UPDATE equipment SET image_url = '/images/equipment/precision wafering/gravity feed precision cutters/pico-155s/pico-155s-cover.webp'
WHERE item_id = 'PICO-155S';

UPDATE equipment SET image_url = '/images/equipment/precision wafering/table feed precision cutters/pico-200a/pico-200a-cover.webp'
WHERE item_id = 'PICO-200A';

UPDATE equipment SET image_url = '/images/equipment/precision wafering/table feed precision cutters/pico-200s/pico-200s-cover.webp'
WHERE item_id = 'PICO-200S';

-- ============================================================================
-- MOUNTING EQUIPMENT
-- ============================================================================

-- Compression Mounting
UPDATE equipment SET image_url = '/images/equipment/compression mounting/pneumatic mounting press/tp-7100s/tp-7100s-cover.webp'
WHERE item_id = 'TP-7100S';

UPDATE equipment SET image_url = '/images/equipment/compression mounting/hydraulic mounting press/tp-7500s/tp-7500s-cover.webp'
WHERE item_id = 'TP-7500S';

-- Castable Mounting
UPDATE equipment SET image_url = '/images/equipment/castable mounting/pressure mounting system/thetamount-cover.webp'
WHERE item_id = 'THETAMOUNT';

UPDATE equipment SET image_url = '/images/equipment/castable mounting/uv curing system/uvmount-cover.webp'
WHERE item_id = 'UVMOUNT';

UPDATE equipment SET image_url = '/images/equipment/castable mounting/vacuum mounting system/lssa-011-cover.webp'
WHERE item_id = 'LSSA-011';

-- ============================================================================
-- GRINDING & POLISHING EQUIPMENT
-- ============================================================================

-- Manual Grinder/Polishers
UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/manual grinder polishers/nano-1000s/nano-1000s-cover.webp'
WHERE item_id = 'NANO-1000S';

UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/manual grinder polishers/nano-1200s/nano-1200s-cover.webp'
WHERE item_id = 'NANO-1200S';

UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/manual grinder polishers/nano-2000s/nano-2000s-cover.webp'
WHERE item_id = 'NANO-2000S';

-- Semi-Automated Grinder/Polishers
UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/semi-auto grinder polishers/femto-1100s/femto-1100s-cover.webp'
WHERE item_id = 'FEMTO-1100S';

UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/semi-auto grinder polishers/femto-2200s/femto-2200s-cover.webp'
WHERE item_id = 'FEMTO-2200S';

UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/semi-auto grinder polishers/femto-2500s/femto-2500S-cover.webp'
WHERE item_id = 'FEMTO-2500S';

-- Automated Grinder/Polishers
UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/controlled removal polisher/atto-1000s/atto-polisher-cover.webp'
WHERE item_id = 'ATTO-1000S';

-- Hand & Belt Grinders
UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/hand & belt grinders/penta-5000a/penta-5000a-cover.webp'
WHERE item_id = 'PENTA-5000A';

UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/hand & belt grinders/penta-7500s/penta-7500s-cover.webp'
WHERE item_id = 'PENTA-7500S';

-- Vibratory Polisher
UPDATE equipment SET image_url = '/images/equipment/grinding & polishing/vibratory polisher/giga-s-cover.webp'
WHERE item_id = 'GIGA-S';

-- ============================================================================
-- MICROSCOPY EQUIPMENT
-- ============================================================================

UPDATE equipment SET image_url = '/images/equipment/microscopy/image analysis/image-analysis-cover.webp'
WHERE item_id LIKE '%IMAGE-ANALYSIS%' OR name ILIKE '%image analysis%';

UPDATE equipment SET image_url = '/images/equipment/microscopy/metallurgical microscopes/im-3000b/im-3000b-cover.webp'
WHERE item_id = 'IM-3000B';

UPDATE equipment SET image_url = '/images/equipment/microscopy/metallurgical microscopes/im-5000/im-5000-cover.webp'
WHERE item_id = 'IM-5000';

UPDATE equipment SET image_url = '/images/equipment/microscopy/stereo microscopes/vm-100/vm-100-cover.webp'
WHERE item_id = 'VM-100';

UPDATE equipment SET image_url = '/images/equipment/microscopy/stereo microscopes/vm-500/vm-500-cover.webp'
WHERE item_id = 'VM-500';

-- ============================================================================
-- HARDNESS TESTING EQUIPMENT
-- ============================================================================

-- Rockwell Testers
UPDATE equipment SET image_url = '/images/equipment/hardness testing/rockwell tester/omega-rt/omega-rt-cover.webp'
WHERE item_id = 'OMEGA-RT';

UPDATE equipment SET image_url = '/images/equipment/hardness testing/rockwell tester/omega-auto-rt/omega-auto-rt-cover.webp'
WHERE item_id = 'OMEGA-AUTO-RT';

UPDATE equipment SET image_url = '/images/equipment/hardness testing/rockwell tester/omega-digi-rt/omega-digi-rt-cover.webp'
WHERE item_id = 'OMEGA-DIGI-RT';

-- Microhardness Testers
UPDATE equipment SET image_url = '/images/equipment/hardness testing/microhardness tester/alpha-mht-1000z/alpha-mht-1000z-cover.webp'
WHERE item_id = 'ALPHA-MHT-1000Z';

UPDATE equipment SET image_url = '/images/equipment/hardness testing/microhardness tester/alpha-mht-2000z2/alpha-mht-2000z2-cover.webp'
WHERE item_id = 'ALPHA-MHT-2000Z2';

-- Brinell & Macro Vickers
UPDATE equipment SET image_url = '/images/equipment/hardness testing/brinell & microvickers/omega-hb/omega-hb-cover.webp'
WHERE item_id = 'OMEGA-HB';

