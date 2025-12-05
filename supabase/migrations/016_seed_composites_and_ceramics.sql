-- Seed composites and ceramics materials
-- This migration adds important ceramic and composite materials commonly analyzed in metallography
-- These materials require specialized preparation techniques compared to metals

INSERT INTO materials (
  name, slug, category, alternative_names, tags,
  hardness, hardness_hb, hardness_hrc, hardness_hv, density, melting_point_celsius,
  tensile_strength_mpa, yield_strength_mpa,
  composition, microstructure,
  material_type, hardness_category, work_hardening, magnetic, corrosion_resistance,
  heat_treatment, annealing_temperature_celsius,
  sectioning_notes, mounting_notes, grinding_notes, polishing_notes, etching_notes,
  recommended_grinding_sequence, recommended_polishing_sequence,
  common_etchants,
  applications, typical_uses, detailed_description,
  status, featured, sort_order
) VALUES

-- ============================================================================
-- CERAMICS
-- ============================================================================

('Alumina (Al2O3)', 'alumina-al2o3', 'Ceramic', ARRAY['Al2O3', 'Aluminum Oxide', 'Sapphire', 'Corundum'], ARRAY['oxide-ceramic', 'refractory', 'high-hardness'],
  '2000 HV', NULL, NULL, 2000, 3.97, 2054, 300, NULL,
  'Al2O3-99.5%', 'Polycrystalline alpha-alumina with equiaxed grains',
  'ceramic', 'very-hard', false, false, 'excellent',
  'Sintered', NULL,
  'Use diamond saw with continuous coolant flow. Very slow cutting speed (0.1-0.5 mm/min) to prevent cracking', 'Cold mounting with epoxy resin. Vacuum impregnation recommended for porous samples', 'Start with 120 grit diamond wheel, progress through 240, 320, 400, 600 grit diamond. Use low pressure (5-10 N)', 'Use 6μm, 3μm, and 1μm diamond paste on napless cloth. Final polish with 0.25μm diamond or colloidal silica', 'Thermal etching at 1400-1500°C for 30-60 minutes, or chemical etching with hot phosphoric acid',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Hot Phosphoric Acid'],
  ARRAY['Electronics', 'Cutting tools', 'Wear-resistant components'], ARRAY['Substrates', 'Cutting inserts', 'Wear plates'], 'High-purity aluminum oxide ceramic with excellent hardness, wear resistance, and electrical insulation. Most common engineering ceramic.',
  'published', true, 200),

('Zirconia (ZrO2)', 'zirconia-zro2', 'Ceramic', ARRAY['ZrO2', 'Zirconium Oxide', 'PSZ', 'TZP'], ARRAY['oxide-ceramic', 'transformation-toughened', 'biomedical'],
  '1200 HV', NULL, NULL, 1200, 6.08, 2715, 800, NULL,
  'ZrO2-3Y2O3 (3 mol% yttria stabilized)', 'Tetragonal and cubic zirconia phases',
  'ceramic', 'very-hard', false, false, 'excellent',
  'Sintered and stabilized', NULL,
  'Use diamond saw with continuous coolant. Slow cutting speed to prevent phase transformation', 'Cold mounting with epoxy resin. Avoid excessive pressure during mounting', 'Start with 120 grit diamond, progress through 240, 320, 400, 600. Use low pressure', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond or colloidal silica', 'Thermal etching at 1200-1400°C for 30-60 minutes, or chemical etching with hot HF',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Hot HF'],
  ARRAY['Biomedical', 'Cutting tools', 'Wear-resistant components'], ARRAY['Dental implants', 'Cutting inserts', 'Oxygen sensors'], 'Transformation-toughened zirconia with high fracture toughness. Used in biomedical and cutting tool applications.',
  'published', true, 201),

('Silicon Carbide (SiC)', 'silicon-carbide-sic', 'Ceramic', ARRAY['SiC', 'Carborundum', 'Silicon Carbide'], ARRAY['carbide-ceramic', 'refractory', 'semiconductor'],
  '2800 HV', NULL, NULL, 2800, 3.21, 2830, 400, NULL,
  'SiC-99%', 'Hexagonal alpha-SiC or cubic beta-SiC polycrystal',
  'ceramic', 'very-hard', false, false, 'excellent',
  'Sintered or reaction-bonded', NULL,
  'Use diamond saw with continuous coolant. Very slow cutting speed', 'Cold mounting with epoxy resin. Vacuum impregnation for porous samples', 'Start with 120 grit diamond, progress through 240, 320, 400, 600. Very low pressure required', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Thermal etching at 1800-2000°C, or molten KOH etching',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Molten KOH'],
  ARRAY['Semiconductors', 'Refractories', 'Wear-resistant components'], ARRAY['Power electronics', 'Furnace linings', 'Abrasive materials'], 'Extremely hard silicon carbide ceramic with excellent thermal conductivity and chemical resistance. Used in high-temperature and semiconductor applications.',
  'published', true, 202),

('Silicon Nitride (Si3N4)', 'silicon-nitride-si3n4', 'Ceramic', ARRAY['Si3N4', 'Silicon Nitride'], ARRAY['nitride-ceramic', 'high-temperature', 'bearing'],
  '1700 HV', NULL, NULL, 1700, 3.24, 1900, 800, NULL,
  'Si3N4-6Y2O3-2Al2O3 (sintered)', 'Beta-silicon nitride with glassy grain boundary phase',
  'ceramic', 'very-hard', false, false, 'excellent',
  'Sintered with additives', NULL,
  'Use diamond saw with continuous coolant. Slow cutting speed', 'Cold mounting with epoxy resin', 'Start with 120 grit diamond, progress through 240, 320, 400, 600', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Thermal etching at 1400-1600°C, or chemical etching with hot NaOH',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Hot NaOH'],
  ARRAY['Bearings', 'Cutting tools', 'Engine components'], ARRAY['Ball bearings', 'Cutting inserts', 'Turbine components'], 'High-strength silicon nitride ceramic with excellent thermal shock resistance. Used in bearings and high-temperature applications.',
  'published', false, 203),

('Boron Carbide (B4C)', 'boron-carbide-b4c', 'Ceramic', ARRAY['B4C', 'Boron Carbide'], ARRAY['carbide-ceramic', 'ultra-hard', 'armor'],
  '3500 HV', NULL, NULL, 3500, 2.52, 2450, 300, NULL,
  'B4C-99%', 'Rhombohedral boron carbide polycrystal',
  'ceramic', 'very-hard', false, false, 'excellent',
  'Hot-pressed or sintered', NULL,
  'Use diamond saw with continuous coolant. Extremely slow cutting speed required', 'Cold mounting with epoxy resin', 'Start with 120 grit diamond, progress through 240, 320, 400, 600. Very low pressure', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Thermal etching at 1800-2000°C, or chemical etching with hot KOH',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Hot KOH'],
  ARRAY['Armor', 'Abrasive', 'Nuclear applications'], ARRAY['Body armor', 'Abrasive materials', 'Neutron absorbers'], 'Ultra-hard boron carbide ceramic with excellent hardness and neutron absorption. Used in armor and nuclear applications.',
  'published', false, 204),

('Titanium Carbide (TiC)', 'titanium-carbide-tic', 'Ceramic', ARRAY['TiC', 'Titanium Carbide'], ARRAY['carbide-ceramic', 'cermet', 'cutting-tool'],
  '3200 HV', NULL, NULL, 3200, 4.93, 3140, 400, NULL,
  'TiC-99%', 'Cubic titanium carbide polycrystal',
  'ceramic', 'very-hard', false, false, 'high',
  'Sintered', NULL,
  'Use diamond saw with continuous coolant', 'Cold mounting with epoxy resin', 'Start with 120 grit diamond, progress through 240, 320, 400, 600', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Thermal etching at 1600-1800°C, or chemical etching with hot HF-HNO3',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Hot HF-HNO3'],
  ARRAY['Cutting tools', 'Wear-resistant components', 'Cermets'], ARRAY['Cutting inserts', 'Wear plates', 'Cermet components'], 'Hard titanium carbide ceramic commonly used in cermets and cutting tools. Excellent wear resistance.',
  'published', false, 205),

('Tungsten Carbide (WC)', 'tungsten-carbide-wc', 'Ceramic', ARRAY['WC', 'Tungsten Carbide', 'Cemented Carbide'], ARRAY['carbide-ceramic', 'cermet', 'cutting-tool'],
  '2400 HV', NULL, NULL, 2400, 15.63, 2870, 600, NULL,
  'WC-6Co (6% cobalt binder)', 'WC grains with cobalt binder phase',
  'ceramic', 'very-hard', false, false, 'high',
  'Sintered with cobalt binder', NULL,
  'Use diamond saw with continuous coolant', 'Cold mounting with epoxy resin', 'Start with 120 grit diamond, progress through 240, 320, 400, 600', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Murakami''s reagent (10g K3Fe(CN)6, 10g KOH, 100ml H2O) for 2-5 minutes, or electrolytic etching',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Murakami''s Reagent', 'Electrolytic'],
  ARRAY['Cutting tools', 'Mining', 'Wear-resistant components'], ARRAY['Cutting inserts', 'Drill bits', 'Wear parts'], 'Cemented tungsten carbide with cobalt binder. Extremely hard and wear-resistant. Most common cutting tool material.',
  'published', true, 206),

-- ============================================================================
-- COMPOSITES
-- ============================================================================

('Carbon Fiber Reinforced Polymer (CFRP)', 'carbon-fiber-reinforced-polymer-cfrp', 'Composite', ARRAY['CFRP', 'Carbon Fiber Composite', 'Carbon Fiber Epoxy'], ARRAY['polymer-composite', 'carbon-fiber', 'aerospace'],
  '60-80 HRC (fiber)', NULL, 60, NULL, 1.6, NULL, 1500, NULL,
  '60% carbon fiber, 40% epoxy matrix', 'Unidirectional or woven carbon fibers in epoxy matrix',
  'composite', 'hard', false, false, 'high',
  'Cured at 120-180°C', NULL,
  'Use diamond saw with continuous coolant. Slow cutting speed to prevent delamination', 'Cold mounting with epoxy resin. Vacuum impregnation recommended', 'Start with 240 grit SiC, progress through 320, 400, 600. Use low pressure to avoid fiber pullout', 'Use 6μm and 1μm diamond paste on napless cloth. Final polish with 0.25μm diamond', 'No etching typically required. Use polarized light or dark field illumination to reveal fiber structure',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['No Etching', 'Polarized Light'],
  ARRAY['Aerospace', 'Automotive', 'Sports equipment'], ARRAY['Aircraft structures', 'Racing car bodies', 'Bicycle frames'], 'High-strength carbon fiber composite with excellent strength-to-weight ratio. Used extensively in aerospace and high-performance applications.',
  'published', true, 300),

('Glass Fiber Reinforced Polymer (GFRP)', 'glass-fiber-reinforced-polymer-gfrp', 'Composite', ARRAY['GFRP', 'Fiberglass', 'Glass Fiber Composite'], ARRAY['polymer-composite', 'glass-fiber', 'general-purpose'],
  '50-60 HRC (fiber)', NULL, 50, NULL, 1.9, NULL, 500, NULL,
  '50% glass fiber, 50% polyester or epoxy matrix', 'Random or woven glass fibers in polymer matrix',
  'composite', 'medium', false, false, 'high',
  'Cured at 100-150°C', NULL,
  'Use diamond saw with continuous coolant', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'No etching typically required. Use polarized light to reveal fiber structure',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['No Etching', 'Polarized Light'],
  ARRAY['Marine', 'Construction', 'Automotive'], ARRAY['Boat hulls', 'Building panels', 'Automotive parts'], 'Glass fiber composite with good strength and corrosion resistance. Most common composite material for general applications.',
  'published', true, 301),

('Aluminum Matrix Composite (AMC)', 'aluminum-matrix-composite-amc', 'Composite', ARRAY['AMC', 'Aluminum MMC', 'SiC/Al'], ARRAY['metal-matrix-composite', 'aluminum', 'high-strength'],
  '120-150 HB', 120, NULL, NULL, 2.8, 660, 500, 400,
  'Al-20SiC (20% silicon carbide particles)', 'Aluminum matrix with SiC particle reinforcement',
  'composite', 'medium', false, false, 'medium',
  'As-cast or heat treated', NULL,
  'Use diamond saw with continuous coolant', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Keller''s reagent for 10-20 seconds to reveal matrix structure',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Keller''s Reagent', '0.5% HF'],
  ARRAY['Aerospace', 'Automotive', 'Electronics'], ARRAY['Aircraft components', 'Brake rotors', 'Heat sinks'], 'Aluminum matrix composite with SiC reinforcement. Excellent strength and thermal properties. Used in aerospace and automotive applications.',
  'published', false, 302),

('Titanium Matrix Composite (TMC)', 'titanium-matrix-composite-tmc', 'Composite', ARRAY['TMC', 'Titanium MMC', 'Ti/SiC'], ARRAY['metal-matrix-composite', 'titanium', 'aerospace'],
  '350-400 HB', 350, NULL, NULL, 4.2, 1668, 1200, 1100,
  'Ti-6Al-4V-35SiC (35% silicon carbide fibers)', 'Titanium matrix with continuous SiC fiber reinforcement',
  'composite', 'very-hard', false, false, 'excellent',
  'Consolidated at high temperature', NULL,
  'Use diamond saw with continuous coolant. Very slow cutting speed', 'Cold mounting with epoxy resin', 'Start with 240 grit diamond, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Kroll''s reagent for 5-15 seconds to reveal matrix structure',
  ARRAY['240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Kroll''s Reagent', 'Modified Kroll''s'],
  ARRAY['Aerospace', 'Military'], ARRAY['Jet engine components', 'Aircraft structures'], 'Titanium matrix composite with SiC fiber reinforcement. Very high strength-to-weight ratio. Used in advanced aerospace applications.',
  'published', false, 303),

('Ceramic Matrix Composite (CMC)', 'ceramic-matrix-composite-cmc', 'Composite', ARRAY['CMC', 'SiC/SiC', 'Ceramic Composite'], ARRAY['ceramic-matrix-composite', 'high-temperature', 'aerospace'],
  '2000 HV', NULL, NULL, 2000, 2.7, 2000, 300, NULL,
  'SiC-30% (30% SiC fibers in SiC matrix)', 'Silicon carbide matrix with SiC fiber reinforcement',
  'composite', 'very-hard', false, false, 'excellent',
  'Chemical vapor infiltration or polymer infiltration', NULL,
  'Use diamond saw with continuous coolant. Very slow cutting speed', 'Cold mounting with epoxy resin. Vacuum impregnation recommended', 'Start with 120 grit diamond, progress through 240, 320, 400, 600', 'Use 6μm, 3μm, 1μm diamond paste. Final polish with 0.25μm diamond', 'Thermal etching at 1600-1800°C, or no etching (use polarized light)',
  ARRAY['120 diamond', '240 diamond', '320 diamond', '400 diamond', '600 diamond'], ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.25μm diamond'],
  ARRAY['Thermal Etching', 'Polarized Light'],
  ARRAY['Aerospace', 'Energy', 'High-temperature'], ARRAY['Jet engine components', 'Heat exchangers', 'Furnace components'], 'Ceramic matrix composite with excellent high-temperature properties. Used in extreme temperature aerospace and energy applications.',
  'published', false, 304),

('Aramid Fiber Reinforced Polymer', 'aramid-fiber-reinforced-polymer', 'Composite', ARRAY['Kevlar Composite', 'Aramid Composite', 'AFRP'], ARRAY['polymer-composite', 'aramid-fiber', 'ballistic'],
  '60-70 HRC (fiber)', NULL, 60, NULL, 1.4, NULL, 1200, NULL,
  '60% aramid fiber, 40% epoxy matrix', 'Woven or unidirectional aramid fibers in epoxy matrix',
  'composite', 'hard', false, false, 'high',
  'Cured at 120-180°C', NULL,
  'Use diamond saw with continuous coolant. Slow cutting speed', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'No etching typically required. Use polarized light to reveal fiber structure',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['No Etching', 'Polarized Light'],
  ARRAY['Ballistic protection', 'Aerospace', 'Marine'], ARRAY['Body armor', 'Aircraft components', 'Marine structures'], 'Aramid fiber composite with excellent impact resistance and strength. Used in ballistic protection and aerospace applications.',
  'published', false, 305);

-- Update slugs using the generate_material_slug function if it exists
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_proc WHERE proname = 'generate_material_slug') THEN
    UPDATE materials SET slug = generate_material_slug(name) WHERE slug IS NULL;
  END IF;
END $$;

