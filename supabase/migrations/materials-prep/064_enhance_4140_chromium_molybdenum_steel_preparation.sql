-- Enhance preparation procedures for AISI 4140 Chromium-Molybdenum Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 064
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE AISI 4140 CHROMIUM-MOLYBDENUM STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = 'AISI 4140 Chromium-Molybdenum Steel is a medium-hard (197 HB) alloy steel (0.40% C, 1% Cr, 0.25% Mo) with a tempered martensite microstructure when quenched and tempered. One of the most commonly used alloy steels in aerospace, automotive, and oil & gas applications. The chromium and molybdenum additions provide excellent hardenability and strength. The medium hardness allows for standard preparation procedures with moderate pressure. The tempered martensite structure will reveal clearly with standard alloy steel etchants. The material is typically quenched and tempered, so the microstructure will show tempered martensite with possible carbides. Commonly used in shafts, gears, bolts, and high-stress applications due to excellent hardenability and strength.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for alloy steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the tempered martensite structure. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the medium-hard material allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the tempered martensite structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic). Use phenolic or epoxy-phenolic resins designed for medium-hard materials. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention. For aerospace, automotive, and oil & gas applications, ensure the mounting material is compatible with the intended use environment.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The medium hardness (197 HB) of AISI 4140 allows for standard grinding procedures. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate pressure (25-35 N per 30 mm sample) - the medium-hard material can tolerate reasonable pressure. Use sharp, fresh grinding papers to minimize deformation.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds). Use moderate pressure to remove heat-affected zone.</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds). Ensure complete scratch removal.</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds). Continue scratch removal.</li><li><strong>400 grit:</strong> Refinement (30-60 seconds). Prepare for polishing.</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds). Ensure all scratches are removed before polishing.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Adequate water lubrication is critical.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%197 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for medium-hard alloy steel
-- Standard for medium-hard alloy steel should be: 120, 240, 320, 400, 600 (5 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600']
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 5 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '120') OR
    (array_length(recommended_grinding_sequence, 1) >= 5 AND recommended_grinding_sequence[5] != '600')
  );

-- Fix polishing sequence: Update to full sequence for medium-hard alloy steel
-- Standard for medium-hard alloy steel should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The medium hardness allows for standard polishing procedures. Use diamond polishing with appropriate polishing pads for each stage. Apply moderate pressure throughout. The tempered martensite structure should be preserved during polishing.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (25-35 N per 30 mm sample). Start with 6μm for medium-hard materials. Standard synthetic pads work well for this hardness level.</li><li><strong>3μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) or non-woven intermediate pad with moderate pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops.</li></ul>Use appropriate polishing lubricants. The medium hardness means standard polishing times work well - ensure complete scratch removal at each step. Monitor for any carbides that may require additional polishing time. The tempered martensite structure should be clearly visible after proper polishing.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = 'AISI 4140 Chromium-Molybdenum Steel responds well to standard alloy steel etchants. The tempered martensite structure will reveal clearly with appropriate etchants. The chromium and molybdenum additions may require slightly longer etching times than plain carbon steels. Two primary etchants are recommended:<br /><br /><strong>2% Nital (Chemical Etching)</strong> - Primary choice for alloy steels:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HNO₃ (concentrated), 98ml ethanol</li><li><strong>Preparation:</strong> Add nitric acid to ethanol slowly with stirring. Prepare fresh for best results. Solution is stable for several days if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 5-15 seconds. Standard etchant for alloy steels. The chromium and molybdenum content may require slightly longer etching times than plain carbon steels.</li><li><strong>Reveals:</strong> Tempered martensite structure, prior austenite grain boundaries, and any carbides clearly. Excellent for general microstructure examination. Good contrast for tempered martensite structure.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several days. Use in fume hood. The alloy content may require slightly longer etching times than plain carbon steels.</li></ul><strong>4% Picral (Chemical Etching)</strong> - For revealing carbides and fine structure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 4g picric acid, 100ml ethanol</li><li><strong>Preparation:</strong> Dissolve picric acid in ethanol with stirring. Prepare fresh for best results. Solution is stable for several weeks if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 10-60 seconds. Excellent for revealing carbides without attacking the matrix. Particularly useful when examining carbide distribution in tempered martensite.</li><li><strong>Reveals:</strong> Carbides clearly with excellent contrast. Less aggressive on the matrix than nital. Good for revealing fine carbide distribution in tempered martensite.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood. Picric acid is explosive when dry - keep moist and handle with care.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with 2% nital for general microstructure examination - it provides good contrast and reveals tempered martensite structure clearly</li><li>Use 4% picral if you need to examine carbide distribution in detail or when nital is too aggressive</li><li>Etching time may vary with tempering condition - higher tempering temperatures result in coarser carbides and different etching response</li><li>The chromium and molybdenum additions provide excellent hardenability - ensure material is properly quenched and tempered</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details</li><li>For aerospace applications, ensure proper surface preparation to reveal any service-related changes or fatigue damage</li><li>For automotive applications, ensure proper surface preparation to reveal any microstructural changes from service or processing</li><li>For oil & gas applications, ensure proper surface preparation to reveal any service-related changes or corrosion</li><li>The tempered martensite structure should reveal prior austenite grain boundaries with proper etching</li><li>Carbides may be present depending on tempering temperature - higher tempering temperatures result in more and coarser carbides</li><li>The chromium and molybdenum additions may result in slightly different etching characteristics compared to plain carbon steels</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Nital produces toxic fumes. Picral contains picric acid which is explosive when dry - keep moist and handle with extreme care.'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
  AND (etching_notes IS NULL OR etching_notes LIKE '%nital%' OR etching_notes LIKE '%picral%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel')
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
  WHERE slug = 'aisi-4140-chromium-molybdenum-steel' OR name = 'AISI 4140 Chromium-Molybdenum Steel'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material AISI 4140 Chromium-Molybdenum Steel not found. Please verify the material exists in the database with slug "aisi-4140-chromium-molybdenum-steel" or name "AISI 4140 Chromium-Molybdenum Steel"';
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
  IF v_grinding_seq IS NULL OR array_length(v_grinding_seq, 1) != 5 THEN
    RAISE EXCEPTION 'Grinding sequence incorrect: expected 5 steps, got %', array_length(v_grinding_seq, 1);
  END IF;
  
  IF v_grinding_seq[1] != '120' OR v_grinding_seq[5] != '600' THEN
    RAISE EXCEPTION 'Grinding sequence incorrect: expected [120, 240, 320, 400, 600], got %', v_grinding_seq;
  END IF;
  
  -- Verify polishing sequence
  IF v_polishing_seq IS NULL OR array_length(v_polishing_seq, 1) != 4 THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected 4 steps, got %', array_length(v_polishing_seq, 1);
  END IF;
  
  IF v_polishing_seq[1] != '6μm diamond' OR v_polishing_seq[4] != '0.05μm colloidal silica' THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected [6μm diamond, 3μm diamond, 1μm diamond, 0.05μm colloidal silica], got %', v_polishing_seq;
  END IF;
  
  RAISE NOTICE 'Successfully updated AISI 4140 Chromium-Molybdenum Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

