-- Enhance preparation procedures for 310 Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 050
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 310 STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '310 Stainless Steel is a medium-hardness (217 HB) austenitic stainless steel with high chromium (25%) and nickel (20%) content designed for high-temperature applications. The austenitic microstructure is stable and non-magnetic, making it suitable for heat treatment and furnace applications. The medium hardness allows for standard preparation procedures, but the high-temperature service history may affect microstructure. Use appropriate abrasives and sufficient time per step. Edge retention is important for furnace component analysis - ensure proper mounting and avoid excessive relief.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the austenitic microstructure and cause carbide precipitation. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the medium hardness allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the austenitic microstructure. For best edge retention on this medium-hardness material, use a low-shrinkage epoxy resin. Ensure complete cure before grinding to prevent edge rounding.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention. Avoid excessive heat that could affect the microstructure.<br /><br />For critical furnace component analysis requiring maximum edge retention, consider glass-filled epoxy-phenolic compression mounting resins.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The medium hardness (217 HB) of 310 Stainless Steel allows for standard grinding procedures. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate pressure (25-40 N per 30 mm sample) - the material can tolerate standard pressure levels.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds). Use moderate pressure to remove heat-affected zone from cutting.</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds). Ensure complete scratch removal.</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds). Monitor for complete scratch removal.</li><li><strong>400 grit:</strong> Refinement (30-60 seconds). Prepare surface for polishing.</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds). Ensure uniform scratch pattern.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) for best results. Adequate water lubrication is critical - avoid drying during grinding. The medium hardness means grinding times are standard - ensure complete scratch removal at each step before proceeding.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%217 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for medium-hardness materials
-- Standard for medium-hardness materials should be: 120, 240, 320, 400, 600 (5 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600']
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 5 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '120') OR
    (array_length(recommended_grinding_sequence, 1) >= 5 AND recommended_grinding_sequence[5] != '600')
  );

-- Fix polishing sequence: Update to full sequence for medium-hardness materials
-- Standard for medium-hardness materials should be: 9μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '9μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The medium hardness allows for standard polishing procedures. Use diamond polishing with appropriate polishing pads for each stage. The austenitic microstructure is generally uniform, so relief should be minimal with proper polishing.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> 3-5 minutes on a metal mesh pad (e.g., CERMESH) or medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (25-40 N per 30 mm sample). Metal mesh pads are excellent for initial removal of damage from sectioning. The medium hardness allows for standard pressure and times.</li><li><strong>3μm diamond:</strong> 3-5 minutes on a non-woven intermediate pad (e.g., TEXPAN) or porometric polymer pad (e.g., Black CHEM 2) with moderate pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching.</li></ul>Use appropriate polishing lubricants. The medium hardness means polishing times are standard - ensure complete scratch removal at each step. Monitor for relief around carbides or inclusions if present - reduce polishing time if excessive relief develops.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '310 Stainless Steel responds well to standard austenitic stainless steel etchants. The high chromium and nickel content in the austenitic microstructure means it will etch clearly and show good grain structure. Two primary etchants are recommended:<br /><br /><strong>Glyceregia (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 15ml HCl, 10ml HNO₃, 10ml Glycerol</li><li><strong>Preparation:</strong> Mix acids and add to glycerol slowly (CAUTION: Exothermic reaction). Prepare fresh for best results. The glycerol slows the reaction rate, making it more controllable than aqua regia.</li><li><strong>Application:</strong> Immerse sample or swab for 10-30 seconds. Classic general-purpose micro-etchant for austenitic stainless steels. The high alloy content means etching behavior is similar to other high-alloy austenitic stainless steels.</li><li><strong>Reveals:</strong> Grain boundaries and grain structure clearly. Excellent for general microstructure examination. Good contrast for austenitic structure. May reveal carbides if present.</li><li><strong>Rinse:</strong> Immediately with water, then alcohol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: 1-2 weeks if stored properly. Use in fume hood.</li></ul><strong>10% Oxalic Acid (Electrolytic)</strong> - For sensitive microstructures or when chemical etching is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 10g oxalic acid dihydrate (COOH)₂·2H₂O in 100ml distilled water</li><li><strong>Preparation:</strong> Dissolve oxalic acid in water. Solution is stable for several months.</li><li><strong>Application:</strong> Use as electrolyte with stainless steel cathode. Sample is anode. Apply 6V DC at 0.1 A/cm² current density for 30-60 seconds.</li><li><strong>Reveals:</strong> Grain boundaries, carbides, and secondary phases. Less aggressive than chemical etchants, good for revealing fine grain structure without over-etching. Particularly useful for revealing carbide precipitation in high-temperature service conditions.</li><li><strong>Rinse:</strong> Immediately with water after etching. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good electrical contact. If no etching occurs, check connections and increase voltage slightly.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Glyceregia for general microstructure examination - it provides good contrast and reveals grain boundaries clearly</li><li>Use electrolytic oxalic acid if Glyceregia is too aggressive or for revealing fine grain details and carbides</li><li>Etching time may vary with service temperature and exposure - high-temperature service may cause carbide precipitation that affects etching behavior</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details</li><li>For furnace component analysis, ensure proper surface preparation to reveal any microstructural changes from high-temperature exposure</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Glyceregia produces toxic fumes. Oxalic acid is toxic if ingested.'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
  AND (etching_notes IS NULL OR etching_notes LIKE '%Glyceregia%' OR etching_notes LIKE '%oxalic%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = '310-stainless-steel' OR name = '310 Stainless Steel')
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
  WHERE slug = '310-stainless-steel' OR name = '310 Stainless Steel'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 310 Stainless Steel not found. Please verify the material exists in the database with slug "310-stainless-steel" or name "310 Stainless Steel"';
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
  
  IF v_polishing_seq[1] != '9μm diamond' OR v_polishing_seq[4] != '0.05μm colloidal silica' THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected [9μm diamond, 3μm diamond, 1μm diamond, 0.05μm colloidal silica], got %', v_polishing_seq;
  END IF;
  
  RAISE NOTICE 'Successfully updated 310 Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

