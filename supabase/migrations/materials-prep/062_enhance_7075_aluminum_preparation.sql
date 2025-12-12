-- Enhance preparation procedures for 7075 Aluminum
-- Add comprehensive expert-level preparation guidance
-- Migration: 062
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 7075 ALUMINUM PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '7075 Aluminum is a medium-hard (150 HB) high-strength heat-treatable aluminum-zinc-copper-magnesium alloy (Al-5.6Zn-2.5Mg-1.6Cu-0.23Cr) with an alpha aluminum matrix containing Zn-Mg-Cu precipitates. One of the highest strength aluminum alloys, commonly used in aerospace, military, and high-performance applications. The medium hardness allows for slightly more aggressive preparation than softer aluminum alloys, but still requires careful attention to avoid smearing and excessive relief. Use moderate pressure throughout grinding and polishing. The precipitation-hardened microstructure (T6 temper) contains fine Zn-Mg-Cu precipitates that should be preserved during preparation. The higher alloy content compared to 6061 means it can tolerate slightly more pressure, but still monitor for smearing and relief. Commonly used in aircraft structures, bicycle frames, and golf clubs due to excellent fatigue resistance.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use slow-speed diamond saw or abrasive cut-off wheel designed for non-ferrous materials. Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating and minimize deformation. The medium-hard material can tolerate slightly more aggressive cutting than softer aluminum. Cutting speed: 150-250 RPM for most cut-off saws. Apply moderate pressure - the medium-hard material allows for reasonable feed rates but still requires careful handling. Avoid forcing the cut which can cause sample damage and work hardening. Leave adequate allowance (~1-2 mm) for grinding away the heat-affected zone and any deformation from cutting.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use slow-speed diamond saw with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the precipitation structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity. The mount should be slightly harder than the sample for better edge retention.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. The medium-hard material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage. For aerospace and high-performance applications, ensure the mounting material is compatible with the intended use environment.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The medium hardness (150 HB) of 7075 Aluminum allows for slightly more aggressive grinding than softer aluminum alloys. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate pressure (25-35 N per 30 mm sample) - the medium-hard material can tolerate more pressure than soft aluminum, but still monitor for smearing. Use sharp, fresh grinding papers to minimize deformation. The precipitation-hardened microstructure (T6 temper) contains fine Zn-Mg-Cu precipitates that should be preserved during grinding.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>240 grit:</strong> Remove sectioning damage (20-40 seconds). Use moderate pressure to remove heat-affected zone. The medium-hard material can tolerate slightly more pressure than soft aluminum.</li><li><strong>320 grit:</strong> Remove previous scratches (20-40 seconds). Monitor for smearing, though less likely than with softer aluminum.</li><li><strong>400 grit:</strong> Further refinement (20-40 seconds). Ensure complete scratch removal.</li><li><strong>600 grit:</strong> Final grinding step (20-40 seconds). Prepare surface for polishing. Ensure all scratches are removed before proceeding.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Adequate water lubrication is critical - avoid drying during grinding which can cause smearing. The medium-hard material means grinding times may be slightly longer than for softer aluminum.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 240 grit%' OR grinding_notes LIKE '%150 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for medium-hard aluminum
-- Standard for medium-hard aluminum should be: 240, 320, 400, 600 (4 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 4 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '240') OR
    (array_length(recommended_grinding_sequence, 1) >= 4 AND recommended_grinding_sequence[4] != '600')
  );

-- Fix polishing sequence: Update to full sequence for medium-hard aluminum
-- Standard for medium-hard aluminum should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The medium hardness allows for slightly more aggressive polishing than softer aluminum alloys. Use diamond polishing with appropriate polishing pads for each stage. Apply moderate pressure throughout to prevent deformation. The fine Zn-Mg-Cu precipitates in T6 temper should be preserved during polishing.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (25-30 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage. The medium-hard material can tolerate slightly more pressure than soft aluminum. Monitor for smearing and reduce pressure if needed.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (20-25 N). Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (15-20 N). These pads provide gentle material removal suitable for medium-hard aluminum. Monitor for orange peel or smearing.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with light pressure. Soft pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops.</li></ul>Use appropriate polishing lubricants. The medium-hard material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief and affect grain boundary revelation. Monitor the surface frequently under the microscope to check for smearing, orange peel, or excessive relief. The fine Zn-Mg-Cu precipitates in T6 temper should be preserved and visible after proper polishing.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '7075 Aluminum responds well to standard aluminum etchants. The high zinc (5.6%), magnesium (2.5%), and copper (1.6%) content form Zn-Mg-Cu precipitates in T6 temper, which will be visible after proper etching. The alpha aluminum matrix will reveal grain boundaries well with standard etchants. The precipitation-hardened microstructure means T6 temper will show different etching characteristics than solution-treated or over-aged material. Two primary etchants are recommended:<br /><br /><strong>Keller''s Reagent (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HF, 3ml HCl, 5ml HNO₃, 190ml H₂O</li><li><strong>Preparation:</strong> Add acids to water slowly with stirring. Prepare fresh for best results. Store in plastic container (HF attacks glass).</li><li><strong>Application:</strong> Immerse sample or swab for 10-20 seconds. Classic general-purpose micro-etchant for Al alloys. The high alloy content means etching behavior is similar to other high-strength aluminum alloys. The precipitation-hardened structure (T6 temper) will reveal grain boundaries and fine precipitates clearly.</li><li><strong>Reveals:</strong> Grain boundaries, grain structure, and fine Zn-Mg-Cu precipitates clearly. Excellent for general microstructure examination. Good contrast for alpha aluminum matrix. The fine precipitates in T6 temper will appear as small particles in the matrix.</li><li><strong>Rinse:</strong> Immediately with water, then alcohol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood.</li></ul><strong>0.5% HF (Light Etching)</strong> - For sensitive microstructures or when Keller''s is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 0.5ml HF (48%) in 100ml distilled water</li><li><strong>Preparation:</strong> Add HF to water slowly with stirring. Solution is stable for several months if stored in plastic container.</li><li><strong>Application:</strong> Immerse sample or swab for 15-30 seconds. Less aggressive than Keller''s reagent, good for revealing fine grain structure and precipitates without over-etching. Particularly useful for revealing fine precipitation structure in T6 temper.</li><li><strong>Reveals:</strong> Grain boundaries, fine grain structure, and fine Zn-Mg-Cu precipitates. Less contrast than Keller''s but gentler on the microstructure. Good for revealing fine precipitation details.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good ventilation. HF is highly toxic - use proper PPE and fume hood.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Keller''s reagent for general microstructure examination - it provides good contrast and reveals grain boundaries and precipitates clearly</li><li>Use 0.5% HF if Keller''s is too aggressive or for revealing fine precipitation details, especially for T6 temper</li><li>Etching time may vary with heat treatment condition - T6 temper (solution-treated and aged) will show fine precipitates, while solution-treated material may show different structure</li><li>Over-aged material may show coarser precipitates - adjust etching time accordingly</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine precipitation details</li><li>For aerospace applications, ensure proper surface preparation to reveal any service-related changes, fatigue damage, or stress-corrosion cracking</li><li>For high-performance applications, ensure proper surface preparation to reveal any microstructural changes from service or heat treatment</li><li>The fine Zn-Mg-Cu precipitates in T6 temper should be visible as small particles in the matrix after proper etching</li><li>Grain size may vary depending on heat treatment - solution-treated and aged material typically has fine grains</li><li>The high alloy content provides excellent fatigue resistance - ensure proper etching to reveal any fatigue-related microstructural changes</li></ul><strong>Safety:</strong> All etchants contain HF or fluoride salts – full PPE (gloves, safety glasses, lab coat), proper fume hood, and HF-specific safety measures are mandatory. HF can cause severe burns and is toxic if ingested or absorbed through skin.'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
  AND (etching_notes IS NULL OR etching_notes LIKE '%Keller%' OR etching_notes LIKE '%HF%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = '7075-aluminum' OR name = '7075 Aluminum')
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
  WHERE slug = '7075-aluminum' OR name = '7075 Aluminum'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 7075 Aluminum not found. Please verify the material exists in the database with slug "7075-aluminum" or name "7075 Aluminum"';
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
  
  RAISE NOTICE 'Successfully updated 7075 Aluminum preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

