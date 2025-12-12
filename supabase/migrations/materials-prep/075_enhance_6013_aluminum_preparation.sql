-- Enhance preparation procedures for 6013 Aluminum
-- Add comprehensive expert-level preparation guidance
-- Migration: 075
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 6013 ALUMINUM PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '6013 Aluminum is a soft (95 HB) heat-treatable aluminum-magnesium-silicon-copper alloy (Al-0.8Mg-0.8Si-0.6Cu) with an alpha aluminum matrix containing Mg₂Si precipitates. Heat-treatable aluminum-magnesium-silicon-copper alloy with good strength and weldability, commonly used in aerospace, automotive, and general fabrication applications. The softness requires careful preparation to avoid smearing, orange peel, and excessive relief. Use low to moderate pressure throughout all preparation steps to prevent deformation of the soft aluminum matrix. Sharp, fresh abrasives are essential to minimize smearing. The precipitation-hardened microstructure (T6 temper) contains fine Mg₂Si precipitates that should be preserved during preparation. The copper addition (0.6%) provides additional strengthening. Monitor for smearing and relief during grinding and polishing - reduce pressure if any deformation is observed. The material exhibits work hardening, so strain-hardened conditions may show different microstructural features than solution-treated and aged material. Commonly used in aircraft structures, automotive parts, and general fabrication due to good strength and weldability.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use slow-speed diamond saw or abrasive cut-off wheel designed for non-ferrous materials. Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize deformation. The soft material requires gentle handling. Cutting speed: 150-250 RPM for most cut-off saws. Apply light to moderate pressure - the soft material requires gentle handling to avoid excessive deformation and work hardening. Avoid forcing the cut which can cause sample damage, work hardening, and significant deformation. Leave adequate allowance (~1-2 mm) for grinding away the heat-affected zone and any deformation from cutting.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use slow-speed diamond saw with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the soft material or precipitation structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity. The mount should be slightly harder than the sample for better edge retention.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic), but cold mounting is recommended for this soft material. Use phenolic or epoxy-phenolic resins. The soft material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage. For aerospace, automotive, and general fabrication applications, ensure the mounting material is compatible with the intended use environment.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The softness (95 HB) of 6013 Aluminum requires careful grinding to avoid smearing and deformation. Use standard SiC grinding papers with abundant water lubrication. Disc speed: 200-300 RPM. Apply light to moderate pressure (20-30 N per 30 mm sample) - the soft material is prone to smearing if too much pressure is applied. Use sharp, fresh grinding papers to minimize deformation. Over-grinding can affect grain boundary revelation during etching. The precipitation-hardened microstructure (T6 temper) contains fine Mg₂Si precipitates that should be preserved during grinding.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>240 grit:</strong> Remove sectioning damage (20-40 seconds). Use light pressure to avoid deep scratches and smearing. Start at P240 (standard) or P320/P400 for minimal sectioning damage. Monitor constantly for smearing.</li><li><strong>320 grit:</strong> Remove previous scratches (20-40 seconds). Monitor for smearing continuously. Reduce pressure if any deformation is observed.</li><li><strong>400 grit:</strong> Further refinement (20-40 seconds). Ensure complete scratch removal. Continue monitoring for smearing.</li><li><strong>600 grit:</strong> Final grinding step (20-40 seconds). Prepare surface for polishing. Ensure all scratches are removed before proceeding.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Abundant water lubrication is critical - avoid drying during grinding which can cause smearing. Grind just long enough to remove the previous scratch orientation - over-grinding can affect grain boundary revelation and damage fine precipitates.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 240 grit%' OR grinding_notes LIKE '%95 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for soft aluminum
-- Standard for soft aluminum should be: 240, 320, 400, 600 (4 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 4 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '240') OR
    (array_length(recommended_grinding_sequence, 1) >= 4 AND recommended_grinding_sequence[4] != '600')
  );

-- Fix polishing sequence: Update to full sequence for soft aluminum
-- Standard for soft aluminum should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The softness requires careful polishing to avoid smearing and excessive relief. Use diamond polishing with appropriate polishing pads for each stage. Apply light to moderate pressure throughout to prevent deformation. The fine Mg₂Si precipitates in T6 temper should be preserved during polishing.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light to moderate pressure (20-25 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage to the soft material. Monitor constantly for smearing and reduce pressure immediately if any deformation is observed.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure (15-20 N). Continue removing scratches from previous step. Monitor for smearing continuously.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (12-18 N). These pads provide gentle material removal suitable for soft aluminum. Monitor for orange peel or smearing. The fine precipitates should remain visible.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with very light pressure. Soft pads are recommended for colloidal silica on soft materials and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time immediately if excessive relief develops or if any smearing or orange peel is observed.</li></ul>Use appropriate polishing lubricants. The soft material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief, smearing, orange peel, and affect grain boundary revelation. Monitor the surface frequently under the microscope to check for smearing, orange peel, or excessive relief. The fine Mg₂Si precipitates in T6 temper should be preserved and visible after proper polishing.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '6013 Aluminum responds well to standard aluminum etchants. The magnesium (0.8%), silicon (0.8%), and copper (0.6%) content form Mg₂Si precipitates in T6 temper, which will be visible after proper etching. The alpha aluminum matrix will reveal grain boundaries well with standard etchants. The precipitation-hardened microstructure means T6 temper will show different etching characteristics than solution-treated or over-aged material. The copper addition (0.6%) provides additional strengthening and may affect etching behavior slightly. Two primary etchants are recommended:<br /><br /><strong>Keller''s Reagent (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HF, 3ml HCl, 5ml HNO₃, 190ml H₂O</li><li><strong>Preparation:</strong> Add acids to water slowly with stirring. Prepare fresh for best results. Store in plastic container (HF attacks glass).</li><li><strong>Application:</strong> Immerse sample or swab for 10-20 seconds. Classic general-purpose micro-etchant for Al alloys. The precipitation-hardened structure (T6 temper) will reveal grain boundaries and fine Mg₂Si precipitates clearly. The copper addition may result in slightly different etching characteristics compared to copper-free alloys.</li><li><strong>Reveals:</strong> Grain boundaries, grain structure, and fine Mg₂Si precipitates clearly. Excellent for general microstructure examination. Good contrast for alpha aluminum matrix. The fine precipitates in T6 temper will appear as small particles in the matrix.</li><li><strong>Rinse:</strong> Immediately with water, then alcohol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood.</li></ul><strong>0.5% HF (Light Etching)</strong> - For sensitive microstructures or when Keller''s is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 0.5ml HF (48%) in 100ml distilled water</li><li><strong>Preparation:</strong> Add HF to water slowly with stirring. Solution is stable for several months if stored in plastic container.</li><li><strong>Application:</strong> Immerse sample or swab for 15-30 seconds. Less aggressive than Keller''s reagent, good for revealing fine grain structure and precipitates without over-etching. Particularly useful for revealing fine precipitation structure in T6 temper.</li><li><strong>Reveals:</strong> Grain boundaries, fine grain structure, and fine Mg₂Si precipitates. Less contrast than Keller''s but gentler on the microstructure. Good for revealing fine precipitation details.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good ventilation. HF is highly toxic - use proper PPE and fume hood.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Keller''s reagent for general microstructure examination - it provides good contrast and reveals grain boundaries and precipitates clearly</li><li>Use 0.5% HF if Keller''s is too aggressive or for revealing fine precipitation details, especially for T6 temper</li><li>Etching time may vary with heat treatment condition - T6 temper (solution-treated and aged) will show fine precipitates, while solution-treated material may show different structure</li><li>Over-aged material may show coarser precipitates - adjust etching time accordingly</li><li>The copper addition (0.6%) provides additional strengthening and may result in slightly different etching characteristics</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine precipitation details</li><li>For aerospace applications (aircraft structures), ensure proper surface preparation to reveal any service-related changes or fatigue damage</li><li>For automotive applications, ensure proper surface preparation to reveal any work hardening or grain structure changes from forming operations</li><li>For general fabrication applications, ensure proper surface preparation to reveal any microstructural changes from processing</li><li>The fine Mg₂Si precipitates in T6 temper should be visible as small particles in the matrix after proper etching</li><li>Grain size may vary depending on heat treatment - solution-treated and aged material typically has fine grains</li><li>The material has good weldability - ensure proper etching to reveal any weld-related microstructural changes</li><li>The copper addition provides good strength - ensure proper etching to reveal any service-related microstructural changes</li></ul><strong>Safety:</strong> All etchants contain HF or fluoride salts – full PPE (gloves, safety glasses, lab coat), proper fume hood, and HF-specific safety measures are mandatory. HF can cause severe burns and is toxic if ingested or absorbed through skin.'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
  AND (etching_notes IS NULL OR etching_notes LIKE '%Keller%' OR etching_notes LIKE '%HF%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = '6013-aluminum' OR name = '6013 Aluminum')
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
  WHERE slug = '6061-aluminum' OR name = '6061 Aluminum'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 6013 Aluminum not found. Please verify the material exists in the database with slug "6013-aluminum" or name "6013 Aluminum"';
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
  
  RAISE NOTICE 'Successfully updated 6013 Aluminum preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

