-- Enhance preparation procedures for 309 Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 049
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 309 STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '309 Stainless Steel is a medium-hard (217 HB) austenitic stainless steel with high chromium (23%) and nickel (13%) content designed for high-temperature applications. The medium hardness allows for standard preparation procedures, but the austenitic structure can work-harden during cutting and grinding, so use sharp abrasives and avoid excessive deformation. The high-temperature service conditions mean the material may have been exposed to elevated temperatures, which can affect microstructure and etching response. Use appropriate abrasives and sufficient time per step. Standard preparation procedures work well for this material.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize work hardening. The austenitic structure can work-harden during cutting, so avoid excessive pressure. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the medium hardness allows for reasonable feed rates. Avoid forcing the cut which can cause excessive work hardening and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone and any work-hardened layer from cutting.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the microstructure, especially if the material has been in high-temperature service. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. The medium hardness means standard mounting procedures work well. Ensure proper cooling under pressure to minimize shrinkage.<br /><br />For critical high-temperature applications, consider the material''s service history when selecting mounting method - avoid excessive heat if the material has been exposed to high temperatures in service.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%');

-- Enhance grinding notes
UPDATE materials
SET grinding_notes = 'The medium hardness (217 HB) of 309 Stainless Steel allows for standard grinding procedures. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate pressure (25-35 N per 30 mm sample) - the material can tolerate standard pressure but avoid excessive force that could cause work hardening. Use sharp, fresh grinding papers to minimize work hardening of the austenitic structure.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds)</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds)</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds)</li><li><strong>400 grit:</strong> Refinement (30-60 seconds)</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds)</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. The austenitic structure can work-harden, so use sharp abrasives and avoid excessive pressure. Ensure complete scratch removal at each step before proceeding.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%217 HB%');

-- Fix polishing sequence: Update to full sequence for medium-hard materials
-- Standard for medium-hard materials should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes
UPDATE materials
SET polishing_notes = 'The medium hardness allows for standard polishing procedures. Use diamond polishing with appropriate polishing pads for each stage. The austenitic structure polishes uniformly, but monitor for any work-hardened areas that may polish differently.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (25-35 N per 30 mm sample). Start with 6μm for medium-hard materials. Standard synthetic pads work well for this hardness level.</li><li><strong>3μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) or non-woven intermediate pad with moderate pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching.</li></ul>Use appropriate polishing lubricants. The medium hardness means standard polishing times work well - ensure complete scratch removal at each step. Monitor for any work-hardened areas that may require additional polishing time.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%');

-- Enhance etching notes with comprehensive procedures
UPDATE materials
SET etching_notes = '309 Stainless Steel responds well to standard austenitic stainless steel etchants. The high chromium and nickel content means it will etch clearly and show good grain structure. Two primary etchants are recommended:<br /><br /><strong>Glyceregia (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 15ml HCl, 10ml HNO₃, 10ml Glycerol</li><li><strong>Preparation:</strong> Mix acids and add to glycerol slowly (CAUTION: Exothermic reaction). Prepare fresh for best results.</li><li><strong>Application:</strong> Immerse sample or swab for 10-30 seconds. The glycerol slows the reaction rate, making it more controllable than aqua regia. Standard etching time for 309 is 10-30 seconds.</li><li><strong>Reveals:</strong> Grain boundaries, grain structure, and twin boundaries clearly. Excellent for general microstructure examination of austenitic stainless steels.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: 1-2 weeks. Use in fume hood. The glycerol slows the reaction, making it easier to control than aqua regia.</li></ul><strong>Aqua Regia (Chemical Etching)</strong> - For more aggressive etching or when Glyceregia is too slow:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 1 part HNO₃, 3 parts HCl (by volume)</li><li><strong>Preparation:</strong> Mix acids immediately before use. CAUTION: Very aggressive - prepare fresh and use immediately.</li><li><strong>Application:</strong> Immerse sample or swab for 5-15 seconds. Very aggressive etchant - use shorter times than Glyceregia. Check progress frequently.</li><li><strong>Reveals:</strong> Grain boundaries and grain structure. More aggressive than Glyceregia, useful when faster etching is needed.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh immediately before use. Very aggressive - use with caution. Shelf life: minutes (use immediately). Use in fume hood.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Glyceregia for general microstructure examination - it provides good contrast and reveals grain boundaries clearly</li><li>Use Aqua Regia if Glyceregia is too slow or for more aggressive etching</li><li>Etching time may vary with heat treatment condition - solution-annealed material may etch differently than material that has been in high-temperature service</li><li>Check etching progress frequently - over-etching can obscure fine details</li><li>For material that has been in high-temperature service, longer etching times may be needed to reveal grain boundaries clearly</li><li>The high chromium and nickel content means the material will etch clearly with standard times</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Glyceregia and Aqua Regia produce toxic fumes. Use appropriate safety measures when handling acids.'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%Glyceregia%' OR etching_notes LIKE '%Aqua Regia%');

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
   OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel'))
  AND preparation_difficulty IS NULL;

-- Verify the update
DO $$
DECLARE
  v_material_name TEXT;
  v_prep_notes TEXT;
  v_sectioning_notes TEXT;
  v_mounting_notes TEXT;
  v_grinding_notes TEXT;
  v_polishing_notes TEXT;
  v_etching_notes TEXT;
  v_prep_difficulty TEXT;
  v_polishing_seq TEXT[];
BEGIN
  SELECT name, preparation_notes, sectioning_notes, mounting_notes, 
         grinding_notes, polishing_notes, etching_notes, preparation_difficulty,
         recommended_polishing_sequence
  INTO v_material_name, v_prep_notes, v_sectioning_notes, v_mounting_notes,
       v_grinding_notes, v_polishing_notes, v_etching_notes, v_prep_difficulty,
       v_polishing_seq
  FROM materials
  WHERE id = '064e8d06-3b27-4c72-b2c8-01a69c1ef3c2'::uuid
     OR (slug = '309-stainless-steel' AND name = '309 Stainless Steel')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 309 Stainless Steel not found (tried ID: 064e8d06-3b27-4c72-b2c8-01a69c1ef3c2, slug: 309-stainless-steel)';
  END IF;
  
  -- Verify all notes were updated
  IF v_prep_notes IS NULL OR length(v_prep_notes) < 50 THEN
    RAISE EXCEPTION 'Preparation notes not properly updated (length: %)', length(v_prep_notes);
  END IF;
  
  IF v_sectioning_notes IS NULL OR length(v_sectioning_notes) < 50 THEN
    RAISE EXCEPTION 'Sectioning notes not properly updated (length: %)', length(v_sectioning_notes);
  END IF;
  
  IF v_mounting_notes IS NULL OR length(v_mounting_notes) < 50 THEN
    RAISE EXCEPTION 'Mounting notes not properly updated (length: %)', length(v_mounting_notes);
  END IF;
  
  IF v_grinding_notes IS NULL OR length(v_grinding_notes) < 50 THEN
    RAISE EXCEPTION 'Grinding notes not properly updated (length: %)', length(v_grinding_notes);
  END IF;
  
  IF v_polishing_notes IS NULL OR length(v_polishing_notes) < 50 THEN
    RAISE EXCEPTION 'Polishing notes not properly updated (length: %)', length(v_polishing_notes);
  END IF;
  
  IF v_etching_notes IS NULL OR length(v_etching_notes) < 100 THEN
    RAISE EXCEPTION 'Etching notes not properly updated (length: %)', length(v_etching_notes);
  END IF;
  
  IF v_prep_difficulty IS NULL OR v_prep_difficulty != 'medium' THEN
    RAISE EXCEPTION 'Preparation difficulty not set correctly (got: %)', v_prep_difficulty;
  END IF;
  
  -- Verify polishing sequence
  IF v_polishing_seq IS NULL OR array_length(v_polishing_seq, 1) != 4 THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected 4 steps, got %', array_length(v_polishing_seq, 1);
  END IF;
  
  IF v_polishing_seq[1] != '6μm diamond' OR v_polishing_seq[4] != '0.05μm colloidal silica' THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected [6μm diamond, 3μm diamond, 1μm diamond, 0.05μm colloidal silica], got %', v_polishing_seq;
  END IF;
  
  RAISE NOTICE 'Successfully updated 309 Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

