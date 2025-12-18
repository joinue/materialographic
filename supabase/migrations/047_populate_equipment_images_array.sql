-- ============================================================================
-- POPULATE EQUIPMENT IMAGES ARRAY FROM EXISTING FILES
-- ============================================================================
-- This migration populates the images JSONB array for equipment items
-- using paths in the equipment-images Supabase storage bucket.
-- Paths are relative to the bucket root: equipment/...
-- ============================================================================

-- MEGA-T300A
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t300a/mega-t300a-cover.webp", "alt": "MEGA-T300A Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t300a/mega-t300a-specs.webp", "alt": "MEGA-T300A Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t300a/mega-t300a-dimensions.webp", "alt": "MEGA-T300A Dimensions", "type": "dimensions", "caption": "Overall dimensions"}
]'::jsonb
WHERE item_id = 'MEGA-T300A';

-- MEGA-T350A
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t350a/mega-t350a-cover.png", "alt": "MEGA-T350A Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t350a/mega-t350a-specs.webp", "alt": "MEGA-T350A Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t350a/mega-t350a-dimensions.webp", "alt": "MEGA-T350A Dimensions", "type": "dimensions", "caption": "Overall dimensions"}
]'::jsonb
WHERE item_id = 'MEGA-T350A';

-- MEGA-T400A
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t400a/mega-t400a-cover.webp", "alt": "MEGA-T400A Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t400a/mega-t400a-specs.webp", "alt": "MEGA-T400A Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/automated abrasive cutters/mega-t400a/mega-t400a-dimensions.webp", "alt": "MEGA-T400A Dimensions", "type": "dimensions", "caption": "Overall dimensions"}
]'::jsonb
WHERE item_id = 'MEGA-T400A';

-- MEGA-M250S
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-m250s/mega-m250s-cover.webp", "alt": "MEGA-M250S Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-m250s/mega-m250s-specs.webp", "alt": "MEGA-M250S Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-m250s/mega-m250s-dimensions.webp", "alt": "MEGA-M250S Dimensions", "type": "dimensions", "caption": "Overall dimensions"}
]'::jsonb
WHERE item_id = 'MEGA-M250S';

-- MEGA-T250S
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250-cover.webp", "alt": "MEGA-T250S Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250s-specs.webp", "alt": "MEGA-T250S Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250s-dimensions.webp", "alt": "MEGA-T250S Dimensions", "type": "dimensions", "caption": "Overall dimensions"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250s-front 2.webp", "alt": "MEGA-T250S Front View", "type": "detail"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250s-side.webp", "alt": "MEGA-T250S Side View", "type": "detail"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t250s/mega-t250s-interior.webp", "alt": "MEGA-T250S Interior", "type": "detail"}
]'::jsonb
WHERE item_id = 'MEGA-T250S';

-- MEGA-T300S
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s-cover.webp", "alt": "MEGA-T300S Cover", "type": "cover"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s-specs.webp", "alt": "MEGA-T300S Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s-dimensions.webp", "alt": "MEGA-T300S Dimensions", "type": "dimensions", "caption": "Overall dimensions"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s- front.webp", "alt": "MEGA-T300S Front View", "type": "detail"},
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t300s/mega-t300s- side.webp", "alt": "MEGA-T300S Side View", "type": "detail"}
]'::jsonb
WHERE item_id = 'MEGA-T300S';

-- MEGA-T350S
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t350s/mega-t350s-cover.webp", "alt": "MEGA-T350S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'MEGA-T350S';

-- MEGA-T400S
UPDATE equipment 
SET images = '[
  {"url": "equipment/abrasive sectioning/manual abrasive cutters/mega-t400s/mega-t400s-cover.webp", "alt": "MEGA-T400S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'MEGA-T400S';

-- PICO-155P
UPDATE equipment 
SET images = '[
  {"url": "equipment/precision wafering/gravity feed precision cutters/pico-155p/pico-155p-cover.webp", "alt": "PICO-155P Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PICO-155P';

-- PICO-155S
UPDATE equipment 
SET images = '[
  {"url": "equipment/precision wafering/gravity feed precision cutters/pico-155s/pico-155s-cover.webp", "alt": "PICO-155S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PICO-155S';

-- PICO-200A
UPDATE equipment 
SET images = '[
  {"url": "equipment/precision wafering/table feed precision cutters/pico-200a/pico-200a-cover.webp", "alt": "PICO-200A Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PICO-200A';

-- PICO-200S
UPDATE equipment 
SET images = '[
  {"url": "equipment/precision wafering/table feed precision cutters/pico-200s/pico-200s-cover.webp", "alt": "PICO-200S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PICO-200S';

-- TP-7100S
UPDATE equipment 
SET images = '[
  {"url": "equipment/compression mounting/pneumatic mounting press/tp-7100s/tp-7100s-cover.webp", "alt": "TP-7100S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'TP-7100S';

-- TP-7500S
UPDATE equipment 
SET images = '[
  {"url": "equipment/compression mounting/hydraulic mounting press/tp-7500s/tp-7500s-cover.webp", "alt": "TP-7500S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'TP-7500S';

-- THETAMOUNT
UPDATE equipment 
SET images = '[
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-cover.webp", "alt": "THETAMOUNT Cover", "type": "cover"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-dimensions.webp", "alt": "THETAMOUNT Dimensions", "type": "dimensions", "caption": "Overall dimensions"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-specs.webp", "alt": "THETAMOUNT Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-front.webp", "alt": "THETAMOUNT Front View", "type": "detail"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-side.webp", "alt": "THETAMOUNT Side View", "type": "detail"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-top-open.webp", "alt": "THETAMOUNT Top Open", "type": "detail"},
  {"url": "equipment/castable mounting/pressure mounting system/thetamount-closeup.webp", "alt": "THETAMOUNT Closeup", "type": "detail"}
]'::jsonb
WHERE item_id = 'THETAMOUNT';

-- UVMOUNT
UPDATE equipment 
SET images = '[
  {"url": "equipment/castable mounting/uv curing system/uvmount-cover.webp", "alt": "UVMOUNT Cover", "type": "cover"},
  {"url": "equipment/castable mounting/uv curing system/uvmount-dimensions.webp", "alt": "UVMOUNT Dimensions", "type": "dimensions", "caption": "Overall dimensions"},
  {"url": "equipment/castable mounting/uv curing system/uvmount-specs.webp", "alt": "UVMOUNT Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/castable mounting/uv curing system/uvmount-display.webp", "alt": "UVMOUNT Display", "type": "detail"},
  {"url": "equipment/castable mounting/uv curing system/uvmount-front.webp", "alt": "UVMOUNT Front View", "type": "detail"},
  {"url": "equipment/castable mounting/uv curing system/uvmount-open-tray.webp", "alt": "UVMOUNT Open Tray", "type": "detail"}
]'::jsonb
WHERE item_id = 'UVMOUNT';

-- LSSA-011
UPDATE equipment 
SET images = '[
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-cover.webp", "alt": "LSSA-011 Cover", "type": "cover"},
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-dimensions.webp", "alt": "LSSA-011 Dimensions", "type": "dimensions", "caption": "Overall dimensions"},
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-specs.webp", "alt": "LSSA-011 Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-front.webp", "alt": "LSSA-011 Front View", "type": "detail"},
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-chamber.webp", "alt": "LSSA-011 Chamber", "type": "detail"},
  {"url": "equipment/castable mounting/vacuum mounting system/lssa-011-pump.webp", "alt": "LSSA-011 Pump", "type": "detail"}
]'::jsonb
WHERE item_id = 'LSSA-011';

-- NANO-1000S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/manual grinder polishers/nano-1000s/nano-1000s-cover.webp", "alt": "NANO-1000S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'NANO-1000S';

-- NANO-1200S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/manual grinder polishers/nano-1200s/nano-1200s-cover.webp", "alt": "NANO-1200S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'NANO-1200S';

-- NANO-2000S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/manual grinder polishers/nano-2000s/nano-2000s-cover.webp", "alt": "NANO-2000S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'NANO-2000S';

-- FEMTO-1100S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/semi-auto grinder polishers/femto-1100s/femto-1100s-cover.webp", "alt": "FEMTO-1100S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'FEMTO-1100S';

-- FEMTO-2200S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/semi-auto grinder polishers/femto-2200s/femto-2200s-cover.webp", "alt": "FEMTO-2200S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'FEMTO-2200S';

-- FEMTO-2500S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/semi-auto grinder polishers/femto-2500s/femto-2500S-cover.webp", "alt": "FEMTO-2500S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'FEMTO-2500S';

-- ATTO-1000S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/controlled removal polisher/atto-1000s/atto-polisher-cover.webp", "alt": "ATTO-1000S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'ATTO-1000S';

-- PENTA-5000A
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/hand & belt grinders/penta-5000a/penta-5000a-cover.webp", "alt": "PENTA-5000A Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PENTA-5000A';

-- PENTA-7500S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/hand & belt grinders/penta-7500s/penta-7500s-cover.webp", "alt": "PENTA-7500S Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'PENTA-7500S';

-- GIGA-S
UPDATE equipment 
SET images = '[
  {"url": "equipment/grinding & polishing/vibratory polisher/giga-s-cover.webp", "alt": "GIGA-S Cover", "type": "cover"},
  {"url": "equipment/grinding & polishing/vibratory polisher/giga-s-specs.webp", "alt": "GIGA-S Specifications", "type": "specs", "caption": "Key features and specifications"},
  {"url": "equipment/grinding & polishing/vibratory polisher/giga-s-front.webp", "alt": "GIGA-S Front View", "type": "detail"},
  {"url": "equipment/grinding & polishing/vibratory polisher/giga-s-display.webp", "alt": "GIGA-S Display", "type": "detail"},
  {"url": "equipment/grinding & polishing/vibratory polisher/giga-s-top.webp", "alt": "GIGA-S Top View", "type": "detail"}
]'::jsonb
WHERE item_id = 'GIGA-S';

-- IM-3000B
UPDATE equipment 
SET images = '[
  {"url": "equipment/microscopy/metallurgical microscopes/im-3000b/im-3000b-cover.webp", "alt": "IM-3000B Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'IM-3000B';

-- IM-5000
UPDATE equipment 
SET images = '[
  {"url": "equipment/microscopy/metallurgical microscopes/im-5000/im-5000-cover.webp", "alt": "IM-5000 Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'IM-5000';

-- VM-100
UPDATE equipment 
SET images = '[
  {"url": "equipment/microscopy/stereo microscopes/vm-100/vm-100-cover.webp", "alt": "VM-100 Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'VM-100';

-- VM-500
UPDATE equipment 
SET images = '[
  {"url": "equipment/microscopy/stereo microscopes/vm-500/vm-500-cover.webp", "alt": "VM-500 Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'VM-500';

-- OMEGA-RT
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/rockwell tester/omega-rt/omega-rt-cover.webp", "alt": "OMEGA-RT Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'OMEGA-RT';

-- OMEGA-AUTO-RT
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/rockwell tester/omega-auto-rt/omega-auto-rt-cover.webp", "alt": "OMEGA-AUTO-RT Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'OMEGA-AUTO-RT';

-- OMEGA-DIGI-RT
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/rockwell tester/omega-digi-rt/omega-digi-rt-cover.webp", "alt": "OMEGA-DIGI-RT Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'OMEGA-DIGI-RT';

-- ALPHA-MHT-1000Z
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/microhardness tester/alpha-mht-1000z/alpha-mht-1000z-cover.webp", "alt": "ALPHA-MHT-1000Z Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'ALPHA-MHT-1000Z';

-- ALPHA-MHT-2000Z2
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/microhardness tester/alpha-mht-2000z2/alpha-mht-2000z2-cover.webp", "alt": "ALPHA-MHT-2000Z2 Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'ALPHA-MHT-2000Z2';

-- OMEGA-HB
UPDATE equipment 
SET images = '[
  {"url": "equipment/hardness testing/brinell & microvickers/omega-hb/omega-hb-cover.webp", "alt": "OMEGA-HB Cover", "type": "cover"}
]'::jsonb
WHERE item_id = 'OMEGA-HB';

