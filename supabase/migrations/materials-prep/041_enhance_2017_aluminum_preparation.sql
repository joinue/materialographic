-- Enhance preparation procedures for 2017 Aluminum
-- Add comprehensive expert-level preparation guidance
-- Migration: 041
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 2017 ALUMINUM PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '2017 Aluminum is a soft (105 HB) high-strength aluminum-copper alloy with Cu-Mg precipitates. Historically used for aircraft rivets and structural applications. The softness requires careful preparation to avoid smearing and deformation, though it is slightly harder than pure aluminum. The copper content means it will respond well to standard aluminum etchants and will show clear grain structure. Use low to moderate pressure throughout grinding and polishing to prevent smearing of the soft aluminum matrix. Monitor for relief around precipitates during polishing.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use slow-speed diamond saw or abrasive cut-off wheel designed for non-ferrous materials. Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize deformation. Cutting speed: 150-250 RPM for most cut-off saws. Apply light to moderate pressure - the soft material requires gentle handling to avoid excessive deformation. Avoid forcing the cut which can cause sample damage and work hardening. Leave adequate allowance (~1-2 mm) for grinding away the heat-affected zone and any deformation from cutting.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use slow-speed diamond saw with coolant' OR sectioning_notes LIKE '%cut-off wheel%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the soft material or precipitation structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. The soft material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage.<br /><br />For critical aerospace applications, consider using a mount material that matches or slightly exceeds the sample hardness to improve edge retention.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%');

-- Enhance grinding notes
UPDATE materials
SET grinding_notes = 'The softness (105 HB) of 2017 Aluminum requires careful grinding to avoid smearing and deformation. Use standard SiC grinding papers with abundant water lubrication. Disc speed: 200-300 RPM. Apply light to moderate pressure (20-30 N per 30 mm sample) - the soft material is prone to smearing if too much pressure is applied. Use sharp, fresh grinding papers to minimize deformation.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>240 grit:</strong> Remove sectioning damage (20-40 seconds). Use light pressure to avoid deep scratches.</li><li><strong>320 grit:</strong> Remove previous scratches (20-40 seconds). Monitor for smearing.</li><li><strong>400 grit:</strong> Further refinement (20-40 seconds). Ensure complete scratch removal.</li><li><strong>600 grit:</strong> Final grinding step (20-40 seconds). Prepare surface for polishing.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Abundant water lubrication is critical - avoid drying during grinding which can cause smearing.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 240 grit%' OR grinding_notes LIKE '%105 HB%');

-- Fix polishing sequence: Update to full sequence for soft aluminum
-- Standard for soft aluminum should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes
UPDATE materials
SET polishing_notes = 'The softness requires careful polishing to avoid smearing and excessive relief around precipitates. Use diamond polishing with appropriate polishing pads for each stage. Apply light to moderate pressure throughout to prevent deformation.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light to moderate pressure (20-25 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage to the soft material. Monitor for smearing and reduce pressure if needed.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (15-20 N). These pads provide gentle material removal suitable for soft aluminum.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with very light pressure. Soft pads are recommended for colloidal silica on soft materials and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief around precipitates - reduce polishing time if excessive relief develops.</li></ul>Use appropriate polishing lubricants. The soft material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief around precipitates. Monitor the surface frequently under the microscope to check for smearing or excessive relief.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%');

-- Enhance etching notes with comprehensive procedures
UPDATE materials
SET etching_notes = '2017 Aluminum responds well to standard aluminum etchants. The copper content means it will etch clearly and show good grain contrast. Two primary etchants are recommended:<br /><br /><strong>Keller''s Reagent (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HF, 3ml HCl, 5ml HNO₃, 190ml H₂O</li><li><strong>Preparation:</strong> Add acids to water slowly with stirring. Prepare fresh for best results. Store in plastic container (HF attacks glass).</li><li><strong>Application:</strong> Immerse sample or swab for 10-20 seconds. The copper content means etching may be slightly faster than pure aluminum - check progress frequently.</li><li><strong>Reveals:</strong> Grain boundaries, grain structure, and Cu-Mg precipitates clearly. Good contrast for precipitation-hardened structure.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood.</li></ul><strong>0.5% HF (Light Etching)</strong> - For sensitive microstructures or when Keller''s is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 0.5ml HF (48%) in 100ml distilled water</li><li><strong>Preparation:</strong> Add HF to water slowly with stirring. Solution is stable for several months if stored in plastic container.</li><li><strong>Application:</strong> Immerse sample or swab for 15-30 seconds. Less aggressive than Keller''s reagent, good for revealing fine grain structure without over-etching.</li><li><strong>Reveals:</strong> Grain boundaries and fine grain structure. Less contrast than Keller''s but gentler on the microstructure, useful for revealing fine precipitation details.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good ventilation. HF is highly toxic - use proper PPE and fume hood.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Keller''s reagent for general microstructure examination - it provides good contrast and reveals grain boundaries and precipitates clearly</li><li>Use 0.5% HF if Keller''s is too aggressive or for revealing fine precipitation details</li><li>Etching time may vary with heat treatment condition - solution-treated material may etch differently than aged (T6) material</li><li>Check etching progress frequently - over-etching can obscure fine precipitation details</li><li>For revealing Cu-Mg precipitates specifically, slightly longer etching times may help, but avoid over-etching which can make precipitates less visible</li></ul><strong>Safety:</strong> Both etchants contain HF or fluoride salts – full PPE (gloves, safety glasses, lab coat), proper fume hood, and HF-specific safety measures are mandatory. HF can cause severe burns and is toxic if ingested or absorbed through skin.'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%Keller%' OR etching_notes LIKE '%HF%');

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
   OR (slug = '2017-aluminum' AND name = '2017 Aluminum'))
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
  WHERE id = '66bb1ca0-b34b-46f1-baf3-56465b5b147c'::uuid
     OR (slug = '2017-aluminum' AND name = '2017 Aluminum')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 2017 Aluminum not found (tried ID: 66bb1ca0-b34b-46f1-baf3-56465b5b147c, slug: 2017-aluminum)';
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
  
  RAISE NOTICE 'Successfully updated 2017 Aluminum preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

