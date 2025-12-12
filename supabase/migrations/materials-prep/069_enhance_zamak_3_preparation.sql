-- Enhance preparation procedures for Zamak 3
-- Add comprehensive expert-level preparation guidance
-- Migration: 069
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE ZAMAK 3 PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = 'Zamak 3 is a soft (82 HB) zinc-aluminum die-casting alloy (Zn-4Al-0.04Mg) with an alpha zinc matrix containing Al-rich phase particles. The most common zinc die-casting alloy, used extensively in automotive parts, hardware, and toys. The softness requires careful preparation to avoid smearing, orange peel, and excessive relief. Use low to moderate pressure throughout all preparation steps to prevent deformation of the soft zinc matrix. Sharp, fresh abrasives are essential to minimize smearing. The aluminum (4%) and magnesium (0.04%) content form Al-rich phase particles in the zinc matrix, which should be preserved during preparation. The material is typically as-cast, so the microstructure will show the cast structure with Al-rich phase particles. Monitor for smearing and relief during grinding and polishing - reduce pressure if any deformation is observed. The material is commonly die-cast, so porosity and casting defects may be present.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use slow-speed diamond saw or abrasive cut-off wheel designed for non-ferrous materials. Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize deformation. The soft material requires gentle handling. Cutting speed: 150-250 RPM for most cut-off saws. Apply light to moderate pressure - the soft material requires gentle handling to avoid excessive deformation. Avoid forcing the cut which can cause sample damage and significant deformation. Leave adequate allowance (~1-2 mm) for grinding away the heat-affected zone and any deformation from cutting. Die-cast parts may have porosity near the surface - ensure adequate material is removed during grinding.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use slow-speed diamond saw with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the soft material or cast structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity. The mount should be slightly harder than the sample for better edge retention.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic), but cold mounting is recommended for this soft material. Use phenolic or epoxy-phenolic resins. The soft material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage. For die-cast parts, ensure the mounting material fills any porosity to prevent edge rounding.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The softness (82 HB) of Zamak 3 requires careful grinding to avoid smearing and deformation. Use standard SiC grinding papers with abundant water lubrication. Disc speed: 200-300 RPM. Apply light to moderate pressure (20-30 N per 30 mm sample) - the soft material is prone to smearing if too much pressure is applied. Use sharp, fresh grinding papers to minimize deformation. Over-grinding can affect grain boundary revelation during etching. The Al-rich phase particles are harder than the zinc matrix and may cause relief if not polished carefully.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>240 grit:</strong> Remove sectioning damage (20-40 seconds). Use light pressure to avoid deep scratches and smearing. Start at P240 (standard) or P320/P400 for minimal sectioning damage. Monitor constantly for smearing.</li><li><strong>320 grit:</strong> Remove previous scratches (20-40 seconds). Monitor for smearing continuously. Reduce pressure if any deformation is observed.</li><li><strong>400 grit:</strong> Further refinement (20-40 seconds). Ensure complete scratch removal. Continue monitoring for smearing.</li><li><strong>600 grit:</strong> Final grinding step (20-40 seconds). Prepare surface for polishing. Ensure all scratches are removed before proceeding.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Abundant water lubrication is critical - avoid drying during grinding which can cause smearing. Grind just long enough to remove the previous scratch orientation - over-grinding can affect grain boundary revelation and cause work hardening artifacts. Die-cast parts may have porosity - ensure porosity is not filled with grinding debris.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 240 grit%' OR grinding_notes LIKE '%82 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for soft zinc alloy
-- Standard for soft zinc alloy should be: 240, 320, 400, 600 (4 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 4 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '240') OR
    (array_length(recommended_grinding_sequence, 1) >= 4 AND recommended_grinding_sequence[4] != '600')
  );

-- Fix polishing sequence: Update to full sequence for soft zinc alloy
-- Standard for soft zinc alloy should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The softness requires careful polishing to avoid smearing and excessive relief. Use diamond polishing with appropriate polishing pads for each stage. Apply light to moderate pressure throughout to prevent deformation. The Al-rich phase particles are harder than the zinc matrix and may cause relief if not polished carefully. Monitor for relief around the Al-rich phase particles.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light to moderate pressure (20-25 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage to the soft material. Monitor constantly for smearing and reduce pressure if any deformation is observed. The Al-rich phase particles may require longer times to polish evenly with the matrix.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure (15-20 N). Continue removing scratches from previous step. Monitor for smearing continuously. Monitor for relief around Al-rich phase particles.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (12-18 N). These pads provide gentle material removal suitable for soft zinc alloys. Monitor for orange peel or smearing. Monitor for relief around Al-rich phase particles - reduce pressure if excessive relief develops.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with very light pressure. Soft pads are recommended for colloidal silica on soft materials and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops or if any smearing or orange peel is observed. The Al-rich phase particles should remain well-integrated with the matrix.</li></ul>Use appropriate polishing lubricants. The soft material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief, smearing, orange peel, and affect grain boundary revelation. Monitor the surface frequently under the microscope to check for smearing, orange peel, or excessive relief. The Al-rich phase particles are critical - monitor for relief throughout polishing. If excessive relief develops around the Al-rich phase particles, reduce polishing time or pressure. Die-cast parts may have porosity - ensure porosity is not filled with polishing debris.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = 'Zamak 3 responds well to standard zinc alloy etchants. The aluminum (4%) and magnesium (0.04%) content form Al-rich phase particles in the zinc matrix, which will be visible after proper etching. The alpha zinc matrix will reveal grain boundaries well with appropriate etchants. The material is typically as-cast, so the microstructure will show the cast structure. Two primary etchants are recommended:<br /><br /><strong>1% Nital (Chemical Etching)</strong> - Primary choice for zinc alloys:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 1ml HNO₃ (concentrated), 99ml ethanol</li><li><strong>Preparation:</strong> Add nitric acid to ethanol slowly with stirring. Prepare fresh for best results. Solution is stable for several days if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 5-15 seconds. Standard etchant for zinc alloys. The low concentration (1%) is appropriate for soft zinc alloys - higher concentrations may be too aggressive.</li><li><strong>Reveals:</strong> Grain boundaries, zinc matrix structure, and Al-rich phase particles clearly. Excellent for general microstructure examination. Good contrast for alpha zinc structure. The Al-rich phase particles will appear as bright or dark particles depending on etching time.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several days. Use in fume hood. The soft zinc matrix means shorter etching times may be sufficient compared to harder materials.</li></ul><strong>Chromic Acid Solution (Chemical Etching)</strong> - For revealing Al-rich phase particles:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 200g CrO₃, 15g Na₂SO₄, 1000ml H₂O</li><li><strong>Preparation:</strong> Dissolve chromic acid and sodium sulfate in water with stirring. Solution is stable for several months if stored properly.</li><li><strong>Application:</strong> Immerse sample for 10-30 seconds. Excellent for revealing Al-rich phase particles and grain structure in zinc alloys. Particularly useful when examining the distribution and morphology of Al-rich phase particles.</li><li><strong>Reveals:</strong> Al-rich phase particles clearly with excellent contrast. Good for revealing grain boundaries and zinc matrix structure. The Al-rich phase particles will appear as distinct particles in the etched matrix.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several months if stored properly. Use in fume hood. Chromic acid is highly toxic and carcinogenic - handle with extreme care and use proper PPE. Dispose of properly according to regulations.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with 1% nital for general microstructure examination - it provides good contrast and reveals grain boundaries and Al-rich phase particles clearly</li><li>Use chromic acid solution if you need to examine Al-rich phase particle distribution and morphology in detail</li><li>Etching time may vary with casting condition - as-cast material may show different structure than heat-treated material</li><li>The Al-rich phase particles are critical microstructural features - ensure proper etching to reveal their distribution and morphology</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details</li><li>For die-cast parts, ensure proper surface preparation to reveal any casting defects, porosity, or microstructural changes from the casting process</li><li>For automotive applications, ensure proper surface preparation to reveal any service-related changes or wear</li><li>For hardware applications, ensure proper surface preparation to reveal any microstructural changes from service or processing</li><li>The alpha zinc matrix should reveal grain boundaries clearly after proper etching</li><li>The Al-rich phase particles should be clearly visible as distinct particles in the matrix after proper etching</li><li>Die-cast parts may have porosity - ensure porosity is not filled with debris before etching</li><li>The cast structure may show dendritic or equiaxed grains depending on cooling rate - adjust etching time accordingly</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Nital produces toxic fumes. Chromic acid is highly toxic and carcinogenic - handle with extreme care, use proper PPE, and dispose of properly according to regulations. Never mix chromic acid with organic materials as it can cause fires or explosions.'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (etching_notes IS NULL OR etching_notes LIKE '%nital%' OR etching_notes LIKE '%chromic%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = 'zamak-3' OR name = 'Zamak 3')
  AND (preparation_difficulty IS NULL OR preparation_difficulty != 'medium');

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
  WHERE slug = 'zamak-3' OR name = 'Zamak 3'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material Zamak 3 not found. Please verify the material exists in the database with slug "zamak-3" or name "Zamak 3"';
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
  
  RAISE NOTICE 'Successfully updated Zamak 3 preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

