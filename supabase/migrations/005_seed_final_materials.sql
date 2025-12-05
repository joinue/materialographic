-- Seed final materials - materials that come after Haynes 230
-- This migration deletes and recreates the remaining materials to complete the database
-- Delete existing entries first (in case migration was run before completion)

DELETE FROM materials WHERE slug IN (
  '330-stainless-steel',
  '6013-aluminum',
  'ti-5al-25sn',
  'c63000-aluminum-nickel-bronze',
  'inconel-725'
);

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

('330 Stainless Steel', '330-stainless-steel', 'Stainless Steel', ARRAY['330', 'AISI 330', 'EN 1.4864'], ARRAY['austenitic', 'high-temperature', 'heat-resistant'],
  '217 HB', 217, NULL, NULL, 8.0, 1420, 515, 205,
  'Fe-19Cr-35Ni-0.08C', 'Austenite',
  'alloy', 'medium', true, false, 'excellent',
  'Solution annealed at 1050-1100°C', 1050,
  'Use abrasive cutoff wheel with coolant', 'Cold mounting with epoxy resin', 'Start with 120 grit SiC, progress through 240, 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Glyceregia for 10-30 seconds',
  ARRAY['120', '240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Glyceregia', 'Aqua Regia'],
  ARRAY['Heat treatment', 'Furnaces', 'High-temperature'], ARRAY['Furnace components', 'Heat treatment equipment', 'Kiln furniture'], 'High-nickel austenitic stainless steel with excellent high-temperature strength and oxidation resistance. Used in heat treatment furnaces.',
  'published', false, 25),

('6013 Aluminum', '6013-aluminum', 'Aluminum Alloy', ARRAY['6013', 'AA6013', 'AlMg0.8SiCu'], ARRAY['heat-treatable', 'aerospace', 'weldable'],
  '95 HB', 95, NULL, NULL, 2.71, 582, 380, 315,
  'Al-0.8Mg-0.8Si-0.6Cu', 'Alpha aluminum with Mg2Si precipitates',
  'alloy', 'soft', true, false, 'medium',
  'Solution treated and aged (T6 temper)', 530,
  'Use slow-speed diamond saw with coolant', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Keller''s reagent for 10-20 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Keller''s Reagent', '0.5% HF'],
  ARRAY['Aerospace', 'Automotive', 'General fabrication'], ARRAY['Aircraft structures', 'Automotive parts', 'General fabrication'], 'Heat-treatable aluminum-magnesium-silicon-copper alloy with good strength and weldability. Used in aerospace applications.',
  'published', false, 40),

('Ti-5Al-2.5Sn', 'ti-5al-25sn', 'Titanium Alloy', ARRAY['Ti-5-2.5', 'Grade 6'], ARRAY['titanium', 'aerospace', 'alpha-titanium'],
  '140 HB', 140, NULL, NULL, 4.46, 1600, 790, 690,
  'Ti-5Al-2.5Sn', 'Alpha titanium',
  'alloy', 'soft', true, false, 'excellent',
  'Annealed', 700,
  'Use slow-speed diamond saw with coolant', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Kroll''s reagent for 5-15 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Kroll''s Reagent', 'Modified Kroll''s'],
  ARRAY['Aerospace', 'Marine'], ARRAY['Aircraft components', 'Marine hardware'], 'Alpha titanium alloy with good strength and excellent corrosion resistance. Used in aerospace and marine applications.',
  'published', false, 49),

('C63000 Aluminum Nickel Bronze', 'c63000-aluminum-nickel-bronze', 'Copper Alloy', ARRAY['C63000', 'Aluminum Nickel Bronze', 'CuAl10Ni5Fe4'], ARRAY['bronze', 'high-strength', 'corrosion-resistant'],
  '195 HB', 195, NULL, NULL, 7.5, 1040, 655, 345,
  'Cu-10Al-5Ni-4Fe', 'Alpha copper with beta phase and iron particles',
  'alloy', 'medium', false, false, 'high',
  'As cast or heat treated', 900,
  'Use slow-speed diamond saw with coolant', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Ammonium persulfate or ferric chloride',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Ammonium Persulfate', 'Ferric Chloride'],
  ARRAY['Marine', 'Bearings', 'Gears'], ARRAY['Propellers', 'Bearings', 'Gears'], 'Aluminum-nickel bronze with excellent strength, wear resistance, and corrosion resistance. Used in marine and bearing applications.',
  'published', false, 41),

('Inconel 725', 'inconel-725', 'Nickel Alloy', ARRAY['IN725', 'UNS N07725', 'Alloy 725'], ARRAY['precipitation-hardening', 'corrosion-resistant', 'nickel-base'],
  '310 HB', 310, 32, NULL, 8.31, 1343, 1100, 860,
  'Ni-21Cr-8Mo-3.4Nb-1Ti-0.2Al', 'Gamma matrix with gamma prime and gamma double prime',
  'alloy', 'very-hard', false, false, 'excellent',
  'Solution treated and aged', 1150,
  'Use slow-speed diamond saw with coolant', 'Cold mounting with epoxy resin', 'Start with 120 grit SiC, progress through 240, 320, 400, 600', 'Use 6μm and 1μm diamond paste on napless cloth', 'Glyceregia or electrolytic 10% oxalic acid',
  ARRAY['120', '240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Glyceregia', 'Electrolytic 10% Oxalic'],
  ARRAY['Oil and gas', 'Marine', 'Chemical processing'], ARRAY['Oil and gas equipment', 'Marine equipment', 'Chemical reactors'], 'Precipitation-hardening nickel alloy with excellent strength and corrosion resistance. Used in demanding oil and gas applications.',
  'published', false, 67);

-- Update slugs using the generate_material_slug function
UPDATE materials SET slug = generate_material_slug(name) WHERE slug IS NULL;

