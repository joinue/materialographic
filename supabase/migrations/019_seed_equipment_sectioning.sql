-- Seed sectioning equipment (MEGA series cutters)
-- Note: MEGA-T250A does NOT exist - only MEGA-T250S (manual) exists
-- Automated versions start at 300mm (12-inch)

INSERT INTO equipment (item_id, name, slug, description, category, subcategory, is_pace_product, product_url, 
  blade_size_mm, blade_size_inches, automation_level, max_cutting_capacity_mm, max_cutting_capacity_inches,
  suitable_for_sample_sizes, suitable_for_throughput, min_budget_level, tags, status)
VALUES
  -- Manual Abrasive Cutters
  ('MEGA-M250S', 'MEGA-M250S Manual Abrasive Cutter', 'mega-m250s', 
   'Manual wheel feed abrasive cutting machine for 10-inch (250 mm) abrasive blades. Features high torque motor, electronic brake system, twin T-slotted stainless steel clamping table.',
   'sectioning', 'manual-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
   250, 10, 'manual', NULL, NULL,
   ARRAY['small'], ARRAY['low', 'medium'], 'budget-conscious',
   ARRAY['sectioning', 'abrasive', 'manual', '250mm', '10-inch'], 'active'),

  ('MEGA-T250S', 'MEGA-T250S Manual Abrasive Cutter', 'mega-t250s',
   'Manual wheel and table feed abrasive cutting machine for 10-inch (250 mm) abrasive blades. Features high torque servo motor, electronic brake system, twin T-slotted stainless steel clamping table.',
   'sectioning', 'manual-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
   250, 10, 'manual', NULL, NULL,
   ARRAY['small', 'medium'], ARRAY['low', 'medium'], 'budget-conscious',
   ARRAY['sectioning', 'abrasive', 'manual', '250mm', '10-inch', 'table-feed'], 'active'),

  ('MEGA-T300S', 'MEGA-T300S Manual Abrasive Cutter', 'mega-t300s',
   'Manual wheel and table feed abrasive cutting machine for 12-inch (300 mm) abrasive blades. Features high torque servo motor, electronic brake system, cutting capacity up to 4-inch (100 mm) solid stock.',
   'sectioning', 'manual-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
   300, 12, 'manual', 100, 4,
   ARRAY['small', 'medium', 'large'], ARRAY['low', 'medium'], 'standard',
   ARRAY['sectioning', 'abrasive', 'manual', '300mm', '12-inch', 'table-feed'], 'active'),

  ('MEGA-T350S', 'MEGA-T350S Manual Abrasive Cutter', 'mega-t350s',
   'Manual wheel and table feed abrasive cutting machine for 14-inch (350 mm) abrasive blades. Features high torque servo motor, electronic brake system, cutting capacity up to 4.5-inch (115 mm) solid stock.',
   'sectioning', 'manual-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
   350, 14, 'manual', 115, 4.5,
   ARRAY['medium', 'large', 'very-large'], ARRAY['low', 'medium', 'high'], 'standard',
   ARRAY['sectioning', 'abrasive', 'manual', '350mm', '14-inch', 'table-feed'], 'active'),

  ('MEGA-T400S', 'MEGA-T400S Manual Abrasive Cutter', 'mega-t400s',
   'Manual wheel and table feed abrasive cutting machine for 16-inch (400 mm) abrasive blades. Features constant torque variable speed servo motor, electronic brake system, cutting capacity up to 4.5-inch (115 mm) solid stock.',
   'sectioning', 'manual-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
   400, 16, 'manual', 115, 4.5,
   ARRAY['large', 'very-large'], ARRAY['medium', 'high'], 'premium',
   ARRAY['sectioning', 'abrasive', 'manual', '400mm', '16-inch', 'table-feed'], 'active'),

  -- Automated Abrasive Cutters (NOTE: No 250mm automated version exists!)
  ('MEGA-T300A', 'MEGA-T300A Automated Abrasive Cutter', 'mega-t300a',
   'Automated / manual Y-axis with automated X-axis table feed and manual wheel feed abrasive cutting machine for 12-inch (300 mm) abrasive blades. Features high torque servo motor, electronic brake system, cutting capacity up to 4-inch (100 mm) solid stock.',
   'sectioning', 'automated-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/automated-abrasive-cutters.html',
   300, 12, 'automated', 100, 4,
   ARRAY['small', 'medium', 'large'], ARRAY['high', 'very-high'], 'premium',
   ARRAY['sectioning', 'abrasive', 'automated', '300mm', '12-inch', 'table-feed'], 'active'),

  ('MEGA-T350A', 'MEGA-T350A Automated Abrasive Cutter', 'mega-t350a',
   'Automated / manual Y-axis with automated X-axis table feed and manual wheel feed abrasive cutting machine for 14-inch (350 mm) abrasive blades. Features high torque servo motor, electronic brake system, cutting capacity up to 4.5-inch (115 mm) solid stock.',
   'sectioning', 'automated-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/automated-abrasive-cutters.html',
   350, 14, 'automated', 115, 4.5,
   ARRAY['medium', 'large', 'very-large'], ARRAY['high', 'very-high'], 'premium',
   ARRAY['sectioning', 'abrasive', 'automated', '350mm', '14-inch', 'table-feed'], 'active'),

  ('MEGA-T400A', 'MEGA-T400A Automated Abrasive Cutter', 'mega-t400a',
   'Automated / manual Y-axis with automated X-axis table feed and manual wheel feed abrasive cutting machine for 16-inch (400 mm) abrasive blades. Features constant torque variable speed servo motor, electronic brake system.',
   'sectioning', 'automated-abrasive-sectioning', true,
   'https://metallographic.com/metallographic-equipment/abrasive-sectioning/automated-abrasive-cutters.html',
   400, 16, 'automated', 115, 4.5,
   ARRAY['large', 'very-large'], ARRAY['very-high'], 'enterprise',
   ARRAY['sectioning', 'abrasive', 'automated', '400mm', '16-inch', 'table-feed'], 'active')

ON CONFLICT (item_id) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  automation_level = EXCLUDED.automation_level,
  blade_size_mm = EXCLUDED.blade_size_mm,
  blade_size_inches = EXCLUDED.blade_size_inches,
  updated_at = NOW();

