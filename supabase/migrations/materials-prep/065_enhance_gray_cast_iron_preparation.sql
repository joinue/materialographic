-- Enhance preparation procedures for Gray Cast Iron
-- Add comprehensive expert-level preparation guidance
-- Migration: 065
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE GRAY CAST IRON PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = 'Gray Cast Iron is a medium-hard (187 HB) cast iron (3.5% C, 2.5% Si) with a pearlite matrix containing flake graphite. The most common cast iron type, used extensively in engine blocks, machine bases, and pipes. The flake graphite is the critical microstructural feature - it appears as dark flakes in the matrix and must be preserved during preparation. The graphite is very soft and can be easily pulled out or damaged during grinding and polishing, so careful preparation is essential. Use moderate pressure throughout grinding and polishing to avoid graphite pullout. The pearlite matrix is medium-hard and can tolerate standard preparation procedures. The graphite provides good machinability and damping capacity. Monitor for graphite pullout during polishing - reduce pressure if graphite is being pulled out.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for cast iron (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the pearlite matrix and graphite structure. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the medium-hard material allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the pearlite matrix or graphite structure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic). Use phenolic or epoxy-phenolic resins designed for medium-hard materials. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention. For automotive, machinery, and construction applications, ensure the mounting material is compatible with the intended use environment.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The medium hardness (187 HB) of Gray Cast Iron allows for standard grinding procedures, but the flake graphite requires careful attention. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate pressure (25-35 N per 30 mm sample) - the medium-hard material can tolerate reasonable pressure, but be careful not to pull out the soft graphite flakes. Use sharp, fresh grinding papers to minimize deformation and graphite pullout.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds). Use moderate pressure to remove heat-affected zone. Monitor for graphite pullout.</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds). Ensure complete scratch removal. Continue monitoring for graphite pullout.</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds). Continue scratch removal. The graphite should remain well-integrated with the matrix.</li><li><strong>400 grit:</strong> Refinement (30-60 seconds). Prepare for polishing. Ensure graphite is not being pulled out.</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds). Ensure all scratches are removed before polishing. The graphite flakes should be clearly visible and well-integrated.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Adequate water lubrication is critical. Monitor for graphite pullout throughout grinding - reduce pressure if graphite is being pulled out.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%187 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for medium-hard cast iron
-- Standard for medium-hard cast iron should be: 120, 240, 320, 400, 600 (5 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600']
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 5 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '120') OR
    (array_length(recommended_grinding_sequence, 1) >= 5 AND recommended_grinding_sequence[5] != '600')
  );

-- Fix polishing sequence: Update to full sequence for medium-hard cast iron
-- Standard for medium-hard cast iron should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The medium hardness allows for standard polishing procedures, but the flake graphite is critical - it is very soft and can be easily pulled out during polishing. Use diamond polishing with appropriate polishing pads for each stage. Apply moderate pressure throughout, but monitor carefully for graphite pullout. The graphite flakes should remain well-integrated with the pearlite matrix.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (25-35 N per 30 mm sample). Start with 6μm for medium-hard materials. Monitor for graphite pullout - reduce pressure if graphite is being pulled out. The graphite flakes should remain well-integrated.</li><li><strong>3μm diamond:</strong> 3-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) or non-woven intermediate pad with moderate pressure. Continue removing scratches from previous step. Continue monitoring for graphite pullout.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control. Monitor for graphite pullout - reduce pressure if needed.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for graphite pullout - reduce polishing time if graphite is being pulled out. The graphite flakes should remain well-integrated with the matrix.</li></ul>Use appropriate polishing lubricants. The medium hardness means standard polishing times work well - ensure complete scratch removal at each step. The flake graphite is the critical feature - monitor for pullout throughout polishing. If excessive graphite pullout occurs, reduce polishing time or pressure. The graphite flakes should be polished evenly with the pearlite matrix to prevent pullout during etching or examination.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = 'Gray Cast Iron responds well to standard cast iron etchants. The flake graphite will appear as dark areas in the etched matrix. The pearlite matrix will reveal clearly with appropriate etchants. The graphite is not attacked by most etchants, so it will appear as dark flakes. Three primary etchants are recommended:<br /><br /><strong>2% Nital (Chemical Etching)</strong> - Primary choice for cast iron:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2ml HNO₃ (concentrated), 98ml ethanol</li><li><strong>Preparation:</strong> Add nitric acid to ethanol slowly with stirring. Prepare fresh for best results. Solution is stable for several days if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 10-20 seconds. Standard etchant for cast iron. Reveals the pearlite matrix structure and graphite clearly.</li><li><strong>Reveals:</strong> Pearlite matrix structure and flake graphite clearly. Excellent for general microstructure examination. The graphite appears as dark flakes in the etched matrix. Good contrast for pearlite structure.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several days. Use in fume hood. The graphite is not attacked by nital, so it will appear as dark areas.</li></ul><strong>4% Picral (Chemical Etching)</strong> - For revealing pearlite structure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 4g picric acid, 100ml ethanol</li><li><strong>Preparation:</strong> Dissolve picric acid in ethanol with stirring. Prepare fresh for best results. Solution is stable for several weeks if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 10-60 seconds. Excellent for revealing pearlite structure without attacking ferrite boundaries. Particularly useful when examining pearlite morphology in the matrix.</li><li><strong>Reveals:</strong> Pearlite structure clearly with excellent contrast. Less aggressive on ferrite grain boundaries than nital. Good for revealing fine pearlite lamellae. The graphite appears as dark flakes.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood. Picric acid is explosive when dry - keep moist and handle with care.</li></ul><strong>Stead''s Reagent (Chemical Etching)</strong> - For revealing graphite structure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 2g CuCl₂, 40ml HCl, 30-50ml H₂O, 25-40ml ethanol</li><li><strong>Preparation:</strong> Dissolve CuCl₂ in water, add HCl, then add ethanol. Prepare fresh for best results. Solution is stable for several days.</li><li><strong>Application:</strong> Immerse sample or swab for 30-90 seconds. Excellent for revealing graphite structure. Colors the matrix copper color while leaving graphite dark.</li><li><strong>Reveals:</strong> Graphite flakes clearly with excellent contrast. The matrix appears copper-colored while graphite remains dark. Excellent for examining graphite morphology and distribution.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several days. Use in fume hood. Particularly effective for revealing graphite structure in gray cast iron.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with 2% nital for general microstructure examination - it provides good contrast and reveals pearlite matrix and graphite clearly</li><li>Use 4% picral if you need to examine pearlite structure in detail or when nital is too aggressive</li><li>Use Stead''s reagent if you need to examine graphite morphology and distribution in detail</li><li>Etching time may vary with matrix structure - pearlitic cast iron will etch differently than ferritic cast iron</li><li>The flake graphite is not attacked by most etchants, so it will appear as dark areas regardless of etchant</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details</li><li>For automotive applications (engine blocks), ensure proper surface preparation to reveal any microstructural changes from service or processing</li><li>For machinery applications (machine bases), ensure proper surface preparation to reveal any microstructural changes from service</li><li>For construction applications (pipes), ensure proper surface preparation to reveal any microstructural changes from service or corrosion</li><li>The flake graphite should be clearly visible as dark flakes in the matrix after proper etching</li><li>Graphite morphology and distribution are important for cast iron properties - ensure proper etching to reveal these features</li><li>The pearlite matrix structure may vary depending on cooling rate - faster cooling results in finer pearlite</li></ul><strong>Safety:</strong> All etchants require proper PPE and fume hood. Nital produces toxic fumes. Picral contains picric acid which is explosive when dry - keep moist and handle with extreme care. Stead''s reagent contains copper chloride and hydrochloric acid - handle with care.'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
  AND (etching_notes IS NULL OR etching_notes LIKE '%nital%' OR etching_notes LIKE '%picral%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = 'gray-cast-iron' OR name = 'Gray Cast Iron')
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
  WHERE slug = 'gray-cast-iron' OR name = 'Gray Cast Iron'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material Gray Cast Iron not found. Please verify the material exists in the database with slug "gray-cast-iron" or name "Gray Cast Iron"';
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
  
  RAISE NOTICE 'Successfully updated Gray Cast Iron preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

