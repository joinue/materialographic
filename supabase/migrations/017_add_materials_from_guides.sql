-- Add materials mentioned in material-specific guides
-- This migration adds materials that are referenced in guide pages but may not exist in the database
-- Uses INSERT ... ON CONFLICT to avoid duplicates based on slug

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
-- STAINLESS STEELS
-- ============================================================================

('431 Stainless Steel', '431-stainless-steel', 'Stainless Steel', ARRAY['431', 'AISI 431', 'EN 1.4057'], ARRAY['martensitic', 'hardenable', 'magnetic', 'high-strength'],
  '270 HB', 270, 28, NULL, 7.7, 1480, 655, 550,
  'Fe-15-17Cr-1.25-2.5Ni-0.20C', 'Martensite (quenched), tempered martensite',
  'alloy', 'hard', false, true, 'medium',
  'Quenched and tempered', 950,
  'Use abrasive cutoff wheel with coolant. Harder grade may require slower cutting speed', 'Cold mounting with epoxy resin', 'Start with 120 grit SiC, progress through 240, 320, 400, 600. May require longer grinding times', 'Use 6μm and 1μm diamond paste on napless cloth', 'Kallings no. 2 or Vilella''s reagent for 10-20 seconds',
  ARRAY['120', '240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Kallings no. 2', 'Vilella''s Reagent'],
  ARRAY['Aerospace', 'Marine', 'Fasteners'], ARRAY['Aircraft components', 'Marine hardware', 'High-strength fasteners'], 'Martensitic stainless steel with high strength and moderate corrosion resistance. Can be hardened by heat treatment. Magnetic.',
  'published', true, 14),

-- ============================================================================
-- MAGNESIUM ALLOYS
-- ============================================================================

('AZ31 Magnesium', 'az31-magnesium', 'Magnesium Alloy', ARRAY['AZ31', 'AZ31B', 'Mg-3Al-1Zn'], ARRAY['lightweight', 'aerospace', 'weldable', 'general-purpose'],
  '49 HB', 49, NULL, NULL, 1.77, 630, 290, 200,
  'Mg-3Al-1Zn-0.2Mn', 'Alpha magnesium with Al-Mn precipitates',
  'alloy', 'soft', true, false, 'low',
  'As-cast or solution treated', 345,
  'Use MAX-E blades at 100-200 RPM. Use ethanol-based or oil-based cutting fluid - NEVER water-based', 'Cold mounting with epoxy resin. Ensure sample is completely dry', 'Start with 240 grit SiC, progress through 320, 400, 600. Use very light pressure', 'Use 6μm and 1μm diamond paste on soft cloth. Very light pressure to avoid smearing', 'Glycol etchant or Acetic picral for 5-15 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Glycol Etchant', 'Acetic Picral'],
  ARRAY['Aerospace', 'Automotive', 'Electronics'], ARRAY['Aircraft components', 'Automotive parts', 'Laptop cases'], 'Most common magnesium alloy with good strength and formability. Used in aerospace and automotive applications.',
  'published', true, 350),

('AZ91 Magnesium', 'az91-magnesium', 'Magnesium Alloy', ARRAY['AZ91', 'AZ91D', 'Mg-9Al-1Zn'], ARRAY['lightweight', 'cast', 'high-strength'],
  '63 HB', 63, NULL, NULL, 1.81, 595, 230, 160,
  'Mg-9Al-1Zn-0.2Mn', 'Alpha magnesium with beta (Mg17Al12) phase',
  'alloy', 'soft', true, false, 'low',
  'As-cast or solution treated', 415,
  'Use MAX-E blades at 100-200 RPM. Use ethanol-based or oil-based cutting fluid', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600. Use very light pressure', 'Use 6μm and 1μm diamond paste on soft cloth', 'Glycol etchant or Acetic picral for 5-15 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Glycol Etchant', 'Acetic Picral'],
  ARRAY['Automotive', 'Electronics', 'Power tools'], ARRAY['Automotive parts', 'Laptop cases', 'Power tool housings'], 'High-strength cast magnesium alloy with good castability. Most common cast magnesium alloy.',
  'published', false, 351),

('AM60 Magnesium', 'am60-magnesium', 'Magnesium Alloy', ARRAY['AM60', 'AM60A', 'Mg-6Al'], ARRAY['lightweight', 'cast', 'ductile'],
  '55 HB', 55, NULL, NULL, 1.80, 610, 220, 130,
  'Mg-6Al-0.3Mn', 'Alpha magnesium with beta (Mg17Al12) phase',
  'alloy', 'soft', true, false, 'low',
  'As-cast', 410,
  'Use MAX-E blades at 100-200 RPM. Use ethanol-based or oil-based cutting fluid', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600. Use very light pressure', 'Use 6μm and 1μm diamond paste on soft cloth', 'Acetic picral or dilute Nital for 5-15 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Acetic Picral', 'Dilute Nital'],
  ARRAY['Automotive', 'Aerospace'], ARRAY['Automotive wheels', 'Aircraft components'], 'Cast magnesium alloy with good ductility and impact resistance. Used in automotive and aerospace applications.',
  'published', false, 352),

('WE43 Magnesium', 'we43-magnesium', 'Magnesium Alloy', ARRAY['WE43', 'Mg-4Y-3RE'], ARRAY['lightweight', 'high-temperature', 'rare-earth'],
  '75 HB', 75, NULL, NULL, 1.84, 640, 250, 160,
  'Mg-4Y-3RE-0.4Zr', 'Alpha magnesium with rare earth precipitates',
  'alloy', 'soft', true, false, 'medium',
  'Solution treated and aged', 525,
  'Use MAX-E blades at 100-200 RPM. Use ethanol-based or oil-based cutting fluid', 'Cold mounting with epoxy resin', 'Start with 240 grit SiC, progress through 320, 400, 600', 'Use 6μm and 1μm diamond paste on soft cloth', 'Glycol etchant preferred for 5-15 seconds',
  ARRAY['240', '320', '400', '600'], ARRAY['6μm diamond', '1μm diamond'],
  ARRAY['Glycol Etchant'],
  ARRAY['Aerospace', 'Racing', 'High-temperature'], ARRAY['Aircraft components', 'Racing car parts', 'High-temperature applications'], 'Rare-earth containing magnesium alloy with good high-temperature properties. Used in aerospace and racing applications.',
  'published', false, 353)

ON CONFLICT (slug) DO NOTHING;

-- Update slugs for any materials that might have NULL slugs
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_proc WHERE proname = 'generate_material_slug') THEN
    UPDATE materials SET slug = generate_material_slug(name) WHERE slug IS NULL;
  END IF;
END $$;

