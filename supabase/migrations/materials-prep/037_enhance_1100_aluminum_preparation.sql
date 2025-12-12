-- Enhance preparation procedures for 1100 Aluminum
-- Add comprehensive expert-level preparation guidance
-- Migration: 037
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 1100 ALUMINUM PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '1100 Aluminum is a very soft (23 HB) commercially pure aluminum. The extreme softness requires very careful preparation to avoid smearing, orange peel, and excessive relief. Use low pressure throughout all preparation steps to prevent deformation of the soft aluminum matrix. Sharp, fresh abrasives are essential to minimize smearing. The pure aluminum composition means it will respond well to standard aluminum etchants. Monitor for smearing and relief during grinding and polishing - reduce pressure if any deformation is observed.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use slow-speed diamond saw or abrasive cut-off wheel designed for non-ferrous materials. Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize deformation. Cutting speed: 150-250 RPM for most cut-off saws. Apply light pressure - the very soft material requires gentle handling to avoid excessive deformation. Avoid forcing the cut which can cause sample damage and work hardening. Leave adequate allowance (~1-2 mm) for grinding away the heat-affected zone and any deformation from cutting.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use slow-speed diamond saw with coolant' OR sectioning_notes LIKE '%cut-off wheel%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the very soft material. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity. The mount should be slightly harder than the sample for better edge retention.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. The very soft material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%');

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The extreme softness (23 HB) of 1100 Aluminum requires very careful grinding to avoid smearing and deformation. Use standard SiC grinding papers with abundant water lubrication. Disc speed: 200-300 RPM. Apply light pressure (15-25 N per 30 mm sample) - the very soft material is extremely prone to smearing if too much pressure is applied. Use sharp, fresh grinding papers to minimize deformation. Over-grinding can affect grain boundary revelation during etching.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>240 grit:</strong> Remove sectioning damage (20-40 seconds). Use light pressure to avoid deep scratches. Start at P240 (standard) or P320/P400 for minimal sectioning damage.</li><li><strong>320 grit:</strong> Remove previous scratches (20-40 seconds). Monitor for smearing.</li><li><strong>400 grit:</strong> Further refinement (20-40 seconds). Ensure complete scratch removal.</li><li><strong>600 grit:</strong> Final grinding step (20-40 seconds). Prepare surface for polishing.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Abundant water lubrication is critical - avoid drying during grinding which can cause smearing. Grind just long enough to remove the previous scratch orientation - over-grinding can affect grain boundary revelation.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 240 grit%' OR grinding_notes LIKE '%23 HB%' OR grinding_notes NOT LIKE '%<strong>%');

-- Fix grinding sequence: Remove extra grits and EBSD note
-- Standard for soft aluminum should be: 240, 320, 400, 600 (4 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 4 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '240') OR
    (array_length(recommended_grinding_sequence, 1) >= 4 AND recommended_grinding_sequence[4] != '600')
  );

-- Fix polishing sequence: Remove 9μm step (too aggressive for soft aluminum)
-- Standard for soft aluminum should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The extreme softness requires very careful polishing to avoid smearing and excessive relief. Use diamond polishing with appropriate polishing pads for each stage. Apply light pressure throughout to prevent deformation.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure (15-20 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage to the very soft material. Monitor for smearing and reduce pressure if needed.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (10-15 N). These pads provide gentle material removal suitable for very soft aluminum.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with very light pressure. Soft pads are recommended for colloidal silica on soft materials and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops.</li></ul>Use appropriate polishing lubricants. The very soft material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief and affect grain boundary revelation. Monitor the surface frequently under the microscope to check for smearing, orange peel, or excessive relief.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%');

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '1100 Aluminum responds well to standard aluminum etchants. The pure aluminum composition means it will etch clearly and show good grain structure. Three primary etchants are recommended:<br /><br /><strong>Keller''s Reagent (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HF, 3ml HCl, 5ml HNO₃, 190ml H₂O</li><li><strong>Preparation:</strong> Add acids to water slowly with stirring. Prepare fresh for best results. Store in plastic container (HF attacks glass).</li><li><strong>Application:</strong> Immerse sample or swab for 10-20 seconds. Classic general-purpose micro-etchant for Al alloys.</li><li><strong>Reveals:</strong> Grain boundaries and grain structure clearly. Excellent for general microstructure examination.</li><li><strong>Rinse:</strong> Immediately with water, then alcohol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood.</li></ul><strong>Weck''s Reagent (Color/Tint Contrast)</strong> - For color/tint contrast or interfaces:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> Ammonium bifluoride 4.5g, HCl 10ml, Water 240ml</li><li><strong>Preparation:</strong> Dissolve ammonium bifluoride in water, then add HCl. Solution is stable for several weeks.</li><li><strong>Application:</strong> Immerse sample or swab for 15-30 seconds. Less common in routine work but great for photography and interface studies.</li><li><strong>Reveals:</strong> Color/tint contrast and interfaces. Excellent for photography and interface studies.</li><li><strong>Rinse:</strong> Immediately with water, then alcohol. Dry with compressed air.</li><li><strong>Note:</strong> Provides color contrast useful for photography. Use in fume hood.</li></ul><strong>0.5% HF (Light Etching)</strong> - For sensitive microstructures or when Keller''s is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 0.5ml HF (48%) in 100ml distilled water</li><li><strong>Preparation:</strong> Add HF to water slowly with stirring. Solution is stable for several months if stored in plastic container.</li><li><strong>Application:</strong> Immerse sample or swab for 15-30 seconds. Less aggressive than Keller''s reagent, good for revealing fine grain structure without over-etching.</li><li><strong>Reveals:</strong> Grain boundaries and fine grain structure. Less contrast than Keller''s but gentler on the microstructure.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good ventilation. HF is highly toxic - use proper PPE and fume hood.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Keller''s reagent for general microstructure examination - it provides good contrast and reveals grain boundaries clearly</li><li>Use Weck''s reagent for color/tint contrast or interface studies, especially for photography</li><li>Use 0.5% HF if Keller''s is too aggressive or for revealing fine grain details</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details</li></ul><strong>Safety:</strong> All etchants contain HF or fluoride salts – full PPE (gloves, safety glasses, lab coat), proper fume hood, and HF-specific safety measures are mandatory. HF can cause severe burns and is toxic if ingested or absorbed through skin.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%Keller%' OR etching_notes LIKE '%HF%' OR etching_notes NOT LIKE '%<strong>%');

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
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
  v_grinding_seq TEXT[];
  v_polishing_seq TEXT[];
BEGIN
  SELECT name, preparation_notes, sectioning_notes, mounting_notes, 
         grinding_notes, polishing_notes, etching_notes, preparation_difficulty,
         recommended_grinding_sequence, recommended_polishing_sequence
  INTO v_material_name, v_prep_notes, v_sectioning_notes, v_mounting_notes,
       v_grinding_notes, v_polishing_notes, v_etching_notes, v_prep_difficulty,
       v_grinding_seq, v_polishing_seq
  FROM materials
  WHERE id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
     OR (slug = '1100-aluminum' AND name = '1100 Aluminum')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 1100 Aluminum not found (tried ID: 6c88d08d-2046-4013-946e-d69755490e97, slug: 1100-aluminum)';
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
  
  -- Verify grinding sequence
  IF v_grinding_seq IS NULL OR array_length(v_grinding_seq, 1) != 4 THEN
    RAISE EXCEPTION 'Grinding sequence incorrect: expected 4 steps, got %', array_length(v_grinding_seq, 1);
  END IF;
  
  IF v_grinding_seq[1] != '240' OR v_grinding_seq[4] != '600' THEN
    RAISE EXCEPTION 'Grinding sequence incorrect: expected [240, 320, 400, 600], got %', v_grinding_seq;
  END IF;
  
  -- Verify polishing sequence
  IF v_polishing_seq IS NULL OR array_length(v_polishing_seq, 1) != 4 THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected 4 steps, got %', array_length(v_polishing_seq, 1);
  END IF;
  
  IF v_polishing_seq[1] != '6μm diamond' OR v_polishing_seq[4] != '0.05μm colloidal silica' THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected [6μm diamond, 3μm diamond, 1μm diamond, 0.05μm colloidal silica], got %', v_polishing_seq;
  END IF;
  
  RAISE NOTICE 'Successfully updated 1100 Aluminum preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

