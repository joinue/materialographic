-- Enhance preparation procedures for 15-5 PH Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 038
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 15-5 PH STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '15-5 PH is a very hard (363 HB, 40 HRC) precipitation-hardening stainless steel with a martensitic matrix containing Cu-rich precipitates. The high hardness allows for more aggressive preparation than softer materials, but the precipitation structure requires careful etching to reveal properly. Use appropriate abrasives and sufficient time per step. The martensitic structure can show deformation if over-polished, so monitor polishing progress carefully. Edge retention is critical for aerospace and medical applications - ensure proper mounting and avoid excessive relief.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the precipitation structure. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the high hardness allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the precipitation structure. For best edge retention on this hard material, use a low-shrinkage epoxy or glass-filled epoxy-phenolic resin. Ensure complete cure before grinding to prevent edge rounding.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic). Use phenolic or epoxy-phenolic resins designed for hard materials. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention.<br /><br />For critical aerospace/medical applications requiring maximum edge retention, consider glass-filled epoxy-phenolic compression mounting resins.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%');

-- Enhance grinding notes
UPDATE materials
SET grinding_notes = 'The high hardness (363 HB, 40 HRC) of 15-5 PH allows for more aggressive grinding than softer materials. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate to firm pressure (30-50 N per 30 mm sample) - the material can tolerate more pressure than soft materials.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds)</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds)</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds)</li><li><strong>400 grit:</strong> Refinement (30-60 seconds)</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds)</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal.<br /><br />For best results, consider extending the sequence to include 800 and 1200 grit for finer finish before polishing, especially for high-magnification analysis or EBSD work.<br /><br />The high hardness means grinding times can be longer than for softer materials - ensure complete scratch removal at each step before proceeding.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%363 HB%');

-- Fix polishing sequence: Update to full sequence for very-hard materials
-- Standard for very-hard materials should be: 9μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '9μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes
UPDATE materials
SET polishing_notes = 'The high hardness allows for more aggressive polishing than softer materials. Use diamond polishing with appropriate polishing pads for each stage.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> 3-5 minutes on a metal mesh pad (e.g., CERMESH) with moderate pressure (30-50 N per 30 mm sample). Metal mesh pads are excellent for initial removal of damage from sectioning and hard materials. The hard material can tolerate firm pressure and longer times.</li><li><strong>3μm diamond:</strong> 3-5 minutes on a non-woven intermediate pad (e.g., TEXPAN) or porometric polymer pad (e.g., Black CHEM 2) with moderate pressure.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching.</li></ul>Use appropriate polishing lubricants. The high hardness means polishing times can be longer than for softer materials - ensure complete scratch removal at each step. Monitor for relief around precipitates or inclusions - reduce polishing time if excessive relief develops.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%');

-- Enhance etching notes with comprehensive procedures
UPDATE materials
SET etching_notes = '15-5 PH requires careful etching to reveal the martensitic matrix and Cu-rich precipitates. Two primary etchants are recommended:<br /><br /><strong>Glyceregia (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 15ml HCl, 10ml HNO₃, 10ml Glycerol</li><li><strong>Preparation:</strong> Mix acids and add to glycerol slowly (CAUTION: Exothermic reaction). Prepare fresh for best results.</li><li><strong>Application:</strong> Immerse sample or swab for 20-40 seconds. The glycerol slows the reaction rate, making it more controllable than aqua regia.</li><li><strong>Reveals:</strong> Grain boundaries, martensitic structure, and phases clearly</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: 1-2 weeks. Use in fume hood.</li></ul><strong>10% Oxalic Acid (Electrolytic)</strong> - For sensitive microstructures or when chemical etching is too aggressive:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 10g oxalic acid dihydrate (COOH)₂·2H₂O in 100ml distilled water</li><li><strong>Preparation:</strong> Dissolve oxalic acid in water. Solution is stable for several months.</li><li><strong>Application:</strong> Use as electrolyte with stainless steel cathode. Sample is anode. Apply 6V DC at 0.1 A/cm² current density for 30-60 seconds.</li><li><strong>Reveals:</strong> Grain boundaries, carbides, and secondary phases. Less aggressive than chemical etchants, good for revealing fine precipitation structure.</li><li><strong>Rinse:</strong> Immediately with water after etching. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good electrical contact. If no etching occurs, check connections and increase voltage slightly.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Glyceregia for general microstructure examination</li><li>Use electrolytic oxalic acid if chemical etching is too aggressive or for revealing fine precipitation details</li><li>Etching time varies with heat treatment condition - solution-treated material may etch differently than aged material</li><li>Check etching progress frequently - over-etching can obscure fine precipitation details</li><li>For revealing Cu-rich precipitates specifically, longer etching times or multiple etch cycles may be needed</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Glyceregia produces toxic fumes. Oxalic acid is toxic if ingested.'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%Glyceregia%' OR etching_notes LIKE '%oxalic%');

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'hard'
WHERE (id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
   OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel'))
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
  WHERE id = 'f95d7dfe-2136-4aae-a9a3-969bb917ac69'::uuid
     OR (slug = '155-ph-stainless-steel' AND name = '15-5 PH Stainless Steel')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 15-5 PH Stainless Steel not found (tried ID: f95d7dfe-2136-4aae-a9a3-969bb917ac69, slug: 155-ph-stainless-steel)';
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
  
  IF v_prep_difficulty IS NULL OR v_prep_difficulty != 'hard' THEN
    RAISE EXCEPTION 'Preparation difficulty not set correctly (got: %)', v_prep_difficulty;
  END IF;
  
  -- Verify polishing sequence
  IF v_polishing_seq IS NULL OR array_length(v_polishing_seq, 1) != 4 THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected 4 steps, got %', array_length(v_polishing_seq, 1);
  END IF;
  
  IF v_polishing_seq[1] != '9μm diamond' OR v_polishing_seq[4] != '0.05μm colloidal silica' THEN
    RAISE EXCEPTION 'Polishing sequence incorrect: expected [9μm diamond, 3μm diamond, 1μm diamond, 0.05μm colloidal silica], got %', v_polishing_seq;
  END IF;
  
  RAISE NOTICE 'Successfully updated 15-5 PH Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

