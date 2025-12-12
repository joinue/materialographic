-- Enhance preparation procedures for 321 Stainless Steel
-- Add comprehensive expert-level preparation guidance
-- Migration: 052
-- Date: 2025-01-XX
--
-- IMPORTANT: When running this migration manually in Supabase SQL Editor:
-- 1. Use the "Service Role" connection (bypasses RLS) OR
-- 2. Ensure you are authenticated as a user with UPDATE permissions
-- The materials table has RLS enabled, so anonymous users cannot UPDATE

-- ============================================================================
-- UPDATE 321 STAINLESS STEEL PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = '321 Stainless Steel is a soft (123 HB) titanium-stabilized austenitic stainless steel (18% Cr, 10% Ni, 0.4% Ti) with an austenitic microstructure containing TiC particles. The titanium addition prevents sensitization (chromium carbide precipitation) during welding and high-temperature service, making it ideal for welded structures and high-temperature applications. The softness requires careful preparation to avoid smearing and deformation. Use low to moderate pressure throughout grinding and polishing to prevent deformation of the soft austenitic matrix. The TiC particles are stable and will be visible in the microstructure after proper etching. Standard stainless steel preparation procedures work well. Monitor for smearing during grinding and polishing - reduce pressure if any deformation is observed. Commonly used in exhaust systems, heat exchangers, pressure vessels, and welded structures requiring high-temperature stability.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (preparation_notes IS NULL OR preparation_notes = '' OR length(preparation_notes) < 100);

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Use abrasive cut-off wheel designed for stainless steel (Al₂O₃ or SiC abrasive). Standard cut-off wheel (1.0-1.5 mm thickness) is appropriate. Use adequate coolant flow to prevent overheating - while titanium stabilization prevents sensitization, excessive heat can still affect the microstructure. Cutting speed: 200-300 RPM for most cut-off saws. Apply steady, moderate pressure - the soft material allows for reasonable feed rates. Avoid forcing the cut which can cause wheel wear and sample damage. Leave adequate allowance (~2-3 mm) for grinding away the heat-affected zone from cutting. For welded structures, ensure the section includes both base metal and weld metal for complete analysis.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (sectioning_notes IS NULL OR sectioning_notes = 'Use abrasive cutoff wheel with coolant' OR sectioning_notes LIKE '%cut-off wheel%' OR length(sectioning_notes) < 100);

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Cold mounting with epoxy resin is preferred to avoid heat that could affect the microstructure. Use a low-shrinkage epoxy resin for best edge retention. Ensure complete cure before grinding to prevent edge rounding and maintain sample integrity.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (2000-3000 psi for phenolic). Use phenolic or epoxy-phenolic resins. The soft material requires careful handling during mounting to avoid deformation. Ensure proper cooling under pressure to minimize shrinkage.<br /><br />For high-temperature applications and welded structures, ensure the mounting material is compatible with the intended use environment. Edge retention is important for examining TiC particles and weld interfaces.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (mounting_notes IS NULL OR mounting_notes = 'Cold mounting with epoxy resin' OR mounting_notes LIKE '%edge retention%' OR length(mounting_notes) < 100);

-- Enhance grinding notes with HTML formatting
UPDATE materials
SET grinding_notes = 'The softness (123 HB) of 321 Stainless Steel requires careful grinding to avoid smearing and deformation. Use standard SiC grinding papers with adequate water lubrication. Disc speed: 200-300 RPM. Apply light to moderate pressure (20-30 N per 30 mm sample) - the soft material is prone to smearing if too much pressure is applied. Use sharp, fresh grinding papers to minimize deformation.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds). Use moderate pressure to remove heat-affected zone.</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds). Monitor for smearing.</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds). Ensure complete scratch removal.</li><li><strong>400 grit:</strong> Refinement (30-60 seconds). Continue scratch removal.</li><li><strong>600 grit:</strong> Final grinding step (30-60 seconds). Prepare surface for polishing.</li></ul>Always rotate the specimen holder 90° between steps to ensure complete scratch removal. Use complementary rotation (platen and holder same direction, different speeds) rather than contra-rotation to minimize deformation. Adequate water lubrication is critical - avoid drying during grinding which can cause smearing. For welded samples, ensure complete scratch removal to reveal weld interfaces and TiC particles clearly.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%Start with 120 grit%' OR grinding_notes LIKE '%123 HB%' OR grinding_notes NOT LIKE '%<strong>%' OR length(grinding_notes) < 100);

-- Fix grinding sequence: Ensure standard sequence for soft stainless steel
-- Standard for soft stainless steel should be: 120, 240, 320, 400, 600 (5 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600']
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 5 OR
    (array_length(recommended_grinding_sequence, 1) >= 1 AND recommended_grinding_sequence[1] != '120') OR
    (array_length(recommended_grinding_sequence, 1) >= 5 AND recommended_grinding_sequence[5] != '600')
  );

-- Fix polishing sequence: Update to full sequence for soft stainless steel
-- Standard for soft stainless steel should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (
    -- Only update if current sequence is incorrect (simplified to avoid array indexing issues with RLS)
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    (array_length(recommended_polishing_sequence, 1) >= 1 AND recommended_polishing_sequence[1] != '6μm diamond') OR
    (array_length(recommended_polishing_sequence, 1) >= 4 AND recommended_polishing_sequence[4] != '0.05μm colloidal silica')
  );

-- Enhance polishing notes with HTML formatting
UPDATE materials
SET polishing_notes = 'The softness requires careful polishing to avoid smearing and excessive relief. Use diamond polishing with appropriate polishing pads for each stage. Apply light to moderate pressure throughout to prevent deformation.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>6μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light to moderate pressure (20-25 N per 30 mm sample). Start with 6μm rather than 9μm to minimize damage to the soft material. Monitor for smearing and reduce pressure if needed.</li><li><strong>3μm diamond:</strong> 2-4 minutes on a medium-hard synthetic pad (e.g., TEXPAN) with light pressure. Continue removing scratches from previous step.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a soft synthetic pad with lighter pressure (15-20 N). These pads provide gentle material removal suitable for soft stainless steel.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a soft final polishing pad (e.g., MICROPAD) with very light pressure. Soft pads are recommended for colloidal silica on soft materials and produce a mirror finish. This removes any remaining fine scratches and prepares the surface for etching. Monitor for relief - reduce polishing time if excessive relief develops. TiC particles may show slight relief after polishing - this is normal and will be visible after etching.</li></ul>Use appropriate polishing lubricants. The soft material means polishing times should be sufficient but not excessive - avoid over-polishing which can cause relief and affect grain boundary revelation. Monitor the surface frequently under the microscope to check for smearing or excessive relief. For welded samples, ensure proper polishing to reveal weld interfaces and TiC particle distribution.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%6μm and 1μm%' OR polishing_notes LIKE '%Diamond polishing%' OR polishing_notes NOT LIKE '%<strong>%' OR length(polishing_notes) < 100);

-- Enhance etching notes with comprehensive procedures and HTML formatting
UPDATE materials
SET etching_notes = '321 Stainless Steel responds well to standard austenitic stainless steel etchants. The titanium stabilization and TiC particles are key microstructural features that should be revealed. The high chromium and nickel content can make the material more difficult to etch than carbon steels, but several effective etchants are available. Two primary etchants are recommended:<br /><br /><strong>Glyceregia (Chemical Etching)</strong> - Primary choice for general microstructure:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 10ml glycerol, 15ml HCl, 5ml HNO₃</li><li><strong>Preparation:</strong> Add acids to glycerol slowly with stirring. Prepare fresh for best results. The glycerol moderates the reaction rate.</li><li><strong>Application:</strong> Immerse sample or swab for 10-30 seconds. Classic general-purpose micro-etchant for austenitic stainless steels. Provides good grain boundary contrast and reveals TiC particles.</li><li><strong>Reveals:</strong> Grain boundaries, grain structure, twin boundaries, and TiC particles clearly. Excellent for general microstructure examination. Good contrast for austenitic structure. TiC particles appear as small, dark particles in the austenitic matrix.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air or warm air to avoid staining.</li><li><strong>Note:</strong> Prepare fresh when needed. Shelf life: several hours. Use in fume hood. The glycerol moderates the reaction - check progress frequently.</li></ul><strong>Aqua Regia (Chemical Etching)</strong> - For aggressive etching and revealing TiC particles:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> 3 parts HCl, 1 part HNO₃ (by volume)</li><li><strong>Preparation:</strong> Mix acids just before use. Prepare fresh - solution is unstable and loses effectiveness quickly.</li><li><strong>Application:</strong> Immerse sample or swab for 5-15 seconds. Very aggressive etchant - use with caution. Good for revealing TiC particles and grain structure. Effective for difficult-to-etch samples.</li><li><strong>Reveals:</strong> Grain boundaries, structure, and TiC particles. Very aggressive - can over-etch quickly. TiC particles are stable and will be clearly visible. Use for samples that resist other etchants or when TiC particle distribution is critical.</li><li><strong>Rinse:</strong> Immediately with water, then ethanol. Dry with compressed air.</li><li><strong>Note:</strong> Prepare fresh immediately before use. Shelf life: minutes. Use in fume hood with excellent ventilation. Very corrosive - handle with extreme care.</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Start with Glyceregia for general microstructure examination - it provides good contrast and reveals grain boundaries and TiC particles clearly</li><li>Use Aqua Regia when TiC particle distribution is critical or when Glyceregia is insufficient</li><li>Etching time may vary with heat treatment condition - solution-annealed material may etch differently than material exposed to high-temperature service</li><li>For welded structures, ensure proper etching to reveal weld interfaces, heat-affected zones, and TiC particle distribution</li><li>TiC particles are stable and will be visible as small, dark particles in the austenitic matrix - they do not dissolve during normal heat treatment</li><li>Always clean and degrease before etching</li><li>Use short initial etch times (a few seconds), check under the microscope, repeat if needed</li><li>Check etching progress frequently - over-etching can obscure fine details and TiC particles</li><li>For high-temperature applications, ensure proper surface preparation to reveal any microstructural changes from service exposure</li><li>The titanium stabilization prevents sensitization, so chromium carbide precipitation should not be observed in properly heat-treated material</li></ul><strong>Safety:</strong> All etchants are highly corrosive and produce toxic fumes – full PPE (gloves, safety glasses, lab coat), proper fume hood, and appropriate safety measures are mandatory. Aqua Regia is particularly dangerous - use with extreme caution.'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
  AND (etching_notes IS NULL OR etching_notes LIKE '%Glyceregia%' OR etching_notes LIKE '%Aqua Regia%' OR etching_notes NOT LIKE '%<strong>%' OR length(etching_notes) < 100);

-- Set preparation difficulty
UPDATE materials
SET preparation_difficulty = 'medium'
WHERE (slug = '321-stainless-steel' OR name = '321 Stainless Steel')
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
  WHERE slug = '321-stainless-steel' OR name = '321 Stainless Steel'
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 321 Stainless Steel not found. Please verify the material exists in the database with slug "321-stainless-steel" or name "321 Stainless Steel"';
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
  
  RAISE NOTICE 'Successfully updated 321 Stainless Steel preparation procedures';
  RAISE NOTICE 'Material: %', v_material_name;
  RAISE NOTICE 'Preparation difficulty: %', v_prep_difficulty;
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
  RAISE NOTICE 'All preparation notes have been enhanced';
END $$;

