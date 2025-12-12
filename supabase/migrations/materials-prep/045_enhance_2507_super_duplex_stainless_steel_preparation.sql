-- Enhance preparation procedures for 2507 Super Duplex Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 045
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 2507 SUPER DUPLEX STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '2507 Super Duplex Stainless Steel is a very hard (310 HB, 32 HRC) super duplex stainless steel with approximately 50% austenite and 50% ferrite phases. The higher alloy content (25% Cr, 7% Ni, 4% Mo) compared to standard duplex grades provides superior strength and corrosion resistance. The high hardness allows for more aggressive preparation than softer materials, but the duplex microstructure requires careful etching to reveal both phases properly. The two-phase structure can show different polishing rates between phases, so monitor for relief during polishing. Use appropriate abrasives and sufficient time per step. Edge retention is critical for offshore, chemical processing, and desalination applications - ensure proper mounting and avoid excessive relief.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - excessive heat can affect the phase balance and cause precipitation of intermetallic phases (sigma, chi, etc.). The higher alloy content makes this material more sensitive to heat input than standard duplex grades. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the high hardness allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the phase balance or cause precipitation of intermetallic phases. For best edge retention on this hard material, use a low-shrinkage epoxy or glass-filled epoxy-phenolic resin. Ensure complete cure before grinding to prevent edge rounding.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic). Use phenolic or epoxy-phenolic resins designed for hard materials. Ensure proper cooling under pressure to minimize shrinkage and maintain edge retention. Avoid excessive heat that could affect the duplex microstructure.<br /><br />For critical offshore/chemical processing/desalination applications requiring maximum edge retention, consider glass-filled epoxy-phenolic compression mounting resins.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%');

-- Enhance grinding notes
UPDATE materials
SET grinding_notes = 'The high hardness (310 HB, 32 HRC) of 2507 Super Duplex Stainless Steel allows for more aggressive grinding than softer materials. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply moderate to firm pressure (30-50 N per 30 mm sample) - the material can tolerate more pressure than soft materials.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds)</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds)</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds)</li><li><strong>400 grit:</strong> Refinement (30-60 seconds)</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds)</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal.<br /><br />For best results, consider extending the sequence to include 800 and 1200 grit for finer finish before polishing, especially for high-magnification analysis or phase identification work.<br /><br />The high hardness means grinding times can be longer than for softer materials - ensure complete scratch removal at each step before proceeding.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%310 HB%');

-- Fix polishing sequence: Update to full sequence for very-hard materials
-- Standard for very-hard materials should be: 9μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '9μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes
UPDATE materials
SET polishing_notes = 'The high hardness allows for more aggressive polishing than softer materials. Use diamond polishing with appropriate polishing pads for each stage. The duplex microstructure (austenite and ferrite) may polish at slightly different rates, so monitor for relief between phases.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> 3-5 minutes on a metal mesh pad (e.g., CERMESH) with moderate pressure (30-50 N per 30 mm sample). Metal mesh pads are excellent for initial removal of damage from sectioning and hard materials. The hard material can tolerate firm pressure and longer times.</li><li><strong>3μm diamond:</strong> 3-5 minutes on a non-woven intermediate pad (e.g., TEXPAN) or porometric polymer pad (e.g., Black CHEM 2) with moderate pressure.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad designed for fine polishing (e.g., GOLD PAD) with lighter pressure (20-30 N). These pads provide consistent material removal and flatness control.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. High-napped pads are recommended for colloidal silica and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching.</li></ul>Use appropriate polishing lubricants. The high hardness means polishing times can be longer than for softer materials - ensure complete scratch removal at each step. Monitor for relief between austenite and ferrite phases - reduce polishing time if excessive relief develops, as this can affect phase identification and quantitative analysis. The higher alloy content may result in slightly different polishing characteristics compared to standard duplex grades.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%');

-- Enhance etching notes with comprehensive procedures
UPDATE materials
SET etching_notes = '2507 Super Duplex Stainless Steel requires careful etching to reveal both the austenite and ferrite phases clearly. The super duplex microstructure benefits from etchants that provide color contrast or differential etching between phases. The higher alloy content may affect etching response compared to standard duplex grades. Two primary etchants are recommended:<br /><br /><strong>Beraha''s Reagent (Chemical Etching)</strong> - Primary choice for super duplex stainless steels:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 20ml HCl, 80ml H₂O, 1g K₂S₂O₅ (potassium metabisulfite)</li><li><strong>Preparation:</strong> Dissolve K₂S₂O₅ in water, then add HCl. Prepare fresh for best results. Solution is stable for a few days.</li><li><strong>Application:</strong> Immerse sample or swab for 30-60 seconds. Beraha''s reagent provides color contrast between phases - ferrite typically appears darker (brown/blue) while austenite appears lighter.</li><li><strong>Reveals:</strong> Clear distinction between austenite and ferrite phases with color contrast. Excellent for phase identification and quantitative analysis. Also reveals grain boundaries and any intermetallic phases (sigma, chi, etc.) which may appear as dark particles.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: 2-3 days. Use in fume hood. The color contrast develops over time - check progress frequently.</li></ul><strong>10% Oxalic Acid (Electrolytic)</strong> - For revealing phase structure without color contrast:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 10g oxalic acid dihydrate (COOH)₂·2H₂O in 100ml distilled water</li><li><strong>Preparation:</strong> Dissolve oxalic acid in water. Solution is stable for several months.</li><li><strong>Application:</strong> Use as electrolyte with stainless steel cathode. Sample is anode. Apply 6V DC at 0.1 A/cm² current density for 30-60 seconds.</li><li><strong>Reveals:</strong> Grain boundaries, phase boundaries, and secondary phases. Less aggressive than chemical etchants, good for revealing fine microstructural details. Provides relief contrast between phases rather than color contrast.</li><li><strong>Rinse:</strong> Immediately with water after etching. Dry with compressed air.</li><li><strong>Note:</strong> Ensure good electrical contact. If no etching occurs, check connections and increase voltage slightly.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Beraha''s reagent for general microstructure examination and phase identification - it provides excellent color contrast between austenite and ferrite</li><li>Use electrolytic oxalic acid if color contrast is not needed or for revealing fine microstructural details</li><li>Etching time may vary with solution annealing condition - ensure material is properly solution annealed to avoid intermetallic phases</li><li>Check etching progress frequently - over-etching can obscure phase boundaries and make quantitative analysis difficult</li><li>For phase fraction analysis, Beraha''s reagent is particularly effective as it provides clear distinction between phases</li><li>If intermetallic phases (sigma, chi, etc.) are present, they may appear as dark particles - longer etching times may help reveal them, but be careful not to over-etch</li><li>The higher alloy content of super duplex grades may require slightly different etching times compared to standard duplex grades</li></ul><strong>Safety:</strong> Both etchants require proper PPE and fume hood. Beraha''s reagent produces toxic fumes. Oxalic acid is toxic if ingested.'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%Beraha%' OR etching_notes LIKE '%oxalic%');

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'hard'
WHERE (id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
   OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel'))
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
  WHERE id = 'ceb2e5e3-f832-4680-b34b-dae26a93c38b'::uuid
     OR (slug = '2507-super-duplex-stainless-steel' AND name = '2507 Super Duplex Stainless Steel')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 2507 Super Duplex Stainless Steel not found (tried ID: ceb2e5e3-f832-4680-b34b-dae26a93c38b, slug: 2507-super-duplex-stainless-steel)';
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
  
  RAISE NOTICE 'Successfully updated 2507 Super Duplex Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

