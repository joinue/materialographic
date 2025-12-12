-- Enhance preparation procedures for 431 Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 058
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 431 STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '431 Stainless Steel is a hard (270 HB, 28 HRC) martensitic stainless steel (15-17% Cr, 1.25-2.5% Ni, 0.20% C) with a martensitic microstructure that may be quenched or tempered depending on heat treatment condition. The high hardness allows for more aggressive preparation than softer materials, but the martensitic structure requires careful polishing to avoid deformation artifacts. The nickel addition provides improved toughness compared to standard martensitic grades. Use appropriate abrasives and sufficient time per step. The martensitic structure can show deformation if over-polished, so monitor polishing progress carefully. Edge retention is critical for aerospace, marine, and fastener applications - ensure proper mounting and avoid excessive relief. The material is magnetic due to its martensitic structure.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the martensitic structure and tempering condition. The hard material may require slower cutting speeds than softer grades. Cutting speed: 150-250 RPM for most cut-off saws (slightly slower than softer materials). Apply steady, moderate pressure - the high hardness allows for reasonable feed rates but may require more time. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the martensitic structure or tempering condition. For best edge retention on this hard material, use a low-shrinkage epoxy or glass-filled epoxy-phenolic resin. Ensure complete cure before grinding to prevent edge rounding.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic). Use phenolic or epoxy-phenolic resins designed for hard materials. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention. Avoid excessive heat that could affect the tempering condition.<br /><br />For critical aerospace/marine/fastener applications requiring maximum edge retention, consider glass-filled epoxy-phenolic compression mounting resins.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The high hardness (270 HB, 28 HRC) of 431 Stainless Steel allows for more aggressive grinding than softer materials. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate to firm pressure (30-45 N per 30 mm sample) - the material can tolerate more pressure than soft materials, but less than very-hard materials.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds). Use moderate to firm pressure to remove heat-affected zone.</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds). Ensure complete scratch removal.</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds). Continue scratch removal.</li><li><strong>400 grit:</strong> Refinement (30-60 seconds). Prepare for polishing.</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds). Ensure all scratches are removed before polishing.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal.<br /><br />For best results, consider extending the sequence to include 800 and 1200 grit for finer finish before polishing, especially for high-magnification analysis or when examining tempered martensite structure.<br /><br />The high hardness means grinding times can be longer than for softer materials - ensure complete scratch removal at each step before proceeding. The martensitic structure is less prone to smearing than soft materials, but still monitor for deformation.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%270 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for hard stainless steel
-- Standard for hard stainless steel should be: 120, 240, 320, 400, 600 (5 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600']
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 5 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '120') OR
    (array_length(recommended_grinding_sequence, 1) >= 5 AND recommended_grinding_sequence[5] != '600')
  );

-- Fix polishing sequence: Update to full sequence for hard stainless steel
-- Standard for hard stainless steel should be: 9μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '9μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The high hardness allows for more aggressive polishing than softer materials. Use diamond polishing with appropriate polishing pads for each stage. The martensitic structure can show deformation if over-polished, so monitor polishing progress carefully.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> 3-5 minutes on a metal mesh pad (e.g., CERMESH) or medium-hard synthetic pad (e.g., TEXPAN) with moderate pressure (30-45 N per 30 mm sample). Metal mesh pads are excellent for initial removal of damage from sectioning and hard materials. The hard material can tolerate firm pressure and longer times.</li><li><strong>3μm diamond:</strong> 3-5 minutes on a non-woven intermediate pad (e.g., TEXPAN) or porometric polymer pad (e.g., Black CHEM 2) with moderate pressure (25-40 N). Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control. Monitor for deformation of the martensitic structure.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops or if martensitic structure shows deformation.</li></ul>Use appropriate polishing lubricants. The high hardness means polishing times can be longer than for softer materials - ensure complete scratch removal at each step. Monitor for deformation of the martensitic structure - reduce polishing time if deformation artifacts appear. The tempered martensite structure should be preserved during polishing.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '431 Stainless Steel requires careful etching to reveal the martensitic structure and any tempering effects. The martensitic structure responds well to standard martensitic stainless steel etchants. Two primary etchants are recommended:<br /><br /><strong>Kallings No. 2 (Chemical Etching)</strong> - Primary choice for martensitic stainless steels:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 5g CuCl₂, 100ml HCl, 100ml ethanol</li><li><strong>Preparation:</strong> Dissolve CuCl₂ in HCl, then add ethanol. Prepare fresh for best results. Solution is stable for several weeks if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 10-30 seconds. Classic etchant for martensitic stainless steels. Provides good contrast for martensitic structure.</li><li><strong>Reveals:</strong> Grain boundaries, martensitic structure, prior austenite grain boundaries, and tempering effects clearly. Excellent for general microstructure examination. Good contrast for martensitic structure and tempered martensite.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several weeks if stored properly. Use in fume hood. The copper chloride provides good contrast for martensitic structures.</li></ul><strong>Vilella''s Reagent (Chemical Etching)</strong> - Alternative for martensitic stainless steels:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 1g picric acid, 5ml HCl, 100ml ethanol</li><li><strong>Preparation:</strong> Dissolve picric acid in ethanol, then add HCl slowly with stirring. Prepare fresh for best results. Solution is stable for several months if stored properly.</li><li><strong>Application:</strong> Immerse sample or swab for 10-30 seconds. Excellent etchant for martensitic stainless steels. Provides good contrast and reveals martensitic structure clearly.</li><li><strong>Reveals:</strong> Grain boundaries, martensitic structure, prior austenite grain boundaries, and tempering effects. Excellent contrast for martensitic structures. Particularly good for revealing tempered martensite.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several months if stored properly. Use in fume hood. Picric acid is explosive when dry - handle with care and store properly.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Kallings No. 2 for general microstructure examination - it provides good contrast and reveals martensitic structure clearly</li><li>Use Vilella''s reagent as an alternative or for revealing tempered martensite structure</li><li>Etching time may vary with heat treatment condition - quenched material may etch differently than tempered material</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details of the martensitic structure</li><li>For aerospace and marine applications, ensure proper surface preparation to reveal any service-related changes or corrosion</li><li>For fastener applications, ensure proper surface preparation to reveal any work hardening or deformation</li><li>The martensitic structure should reveal prior austenite grain boundaries with proper etching</li><li>Tempered martensite will show different contrast than quenched martensite - adjust etching time accordingly</li></ul><strong>Safety:</strong> Both etchants are highly corrosive and produce toxic fumes – full PPE (gloves, safety glasses, lab coat), proper fume hood, and appropriate safety measures are mandatory. Vilella''s reagent contains picric acid which is explosive when dry - handle with extreme care.'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (etching_notes IS NULL OR etching_notes LIKE '%Kallings%' OR etching_notes LIKE '%Vilella%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'hard'
WHERE (slug = '431-stainless-steel' OR name = '431 Stainless Steel')
  AND (preparation_difficulty IS NULL OR preparation_difficulty != 'hard');

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
  WHERE slug = '431-stainless-steel' OR name = '431 Stainless Steel'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 431 Stainless Steel not found. Please verify the material exists in the database with slug "431-stainless-steel" or name "431 Stainless Steel"';
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
  
  RAISE NOTICE 'Successfully updated 431 Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

