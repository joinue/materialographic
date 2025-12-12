-- Fix preparation procedures for 1100 Aluminum
-- Based on review: correct grinding and polishing sequences for soft aluminum
-- Migration: 037
-- Date: 2025-01-XX

-- ============================================================================
-- UPDATE 1100 ALUMINUM PREPARATION PROCEDURES
-- ============================================================================

-- Fix grinding sequence: Remove extra grits and EBSD note
-- Standard for soft aluminum should be: 240, 320, 400, 600 (4 steps)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (
    -- Only update if current sequence is incorrect
    recommended_grinding_sequence IS NULL OR
    array_length(recommended_grinding_sequence, 1) != 4 OR
    recommended_grinding_sequence[1] != '240' OR
    recommended_grinding_sequence[4] != '600'
  );

-- Fix polishing sequence: Remove 9μm step (too aggressive for soft aluminum)
-- Standard for soft aluminum should be: 6μm, 3μm, 1μm, 0.05μm colloidal silica (4 steps)
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND (
    -- Only update if current sequence is incorrect
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) != 4 OR
    recommended_polishing_sequence[1] != '6μm diamond' OR
    recommended_polishing_sequence[4] != '0.05μm colloidal silica'
  );

-- Update grinding notes to align with sequence (recommend 240 as standard)
-- Minor improvement: clarify that 240 is standard, P320/P400 for minimal damage
UPDATE materials
SET grinding_notes = 'Remove sectioning damage quickly but without deep scratches. Use fine initial grit compared to steels – start at P240 (standard) or P320/P400 for minimal sectioning damage. Disc speed: ~200–300 rpm using moderate load (e.g. 20–30 N per 30 mm sample as a ballpark; lighter if you see smearing). Abundant water; avoid drying during grinding. Always rotate the specimen holder 90° between steps and grind just long enough to remove the previous scratch orientation.

For automatic machines, complementary rotation (platen and holder same direction, different speeds) is safer for soft Al than contra-rotation, which can increase deformation if too aggressive.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND grinding_notes LIKE '%P320 or P400%';

-- Enhance etching notes with more specific etchant information
UPDATE materials
SET etching_notes = 'For general grain structure of 1100 / 1xxx alloys go with Keller''s reagent (immersion or swab) – classic general-purpose micro-etchant for Al alloys. Composition: 2ml HF, 3ml HCl, 5ml HNO₃, 190ml H₂O. Typical etching time: 10-20 seconds.

For color/tint contrast or interfaces go with Weck''s reagent (Ammonium bifluoride 4.5g, HCl 10ml, Water 240ml) or Graff–Sargent type tint etches (less common in routine work but great for photography and interface studies).

For lighter etching of sensitive microstructures, 0.5% HF can be used as an alternative to Keller''s reagent.

Always clean and degrease before etching. Use short initial etch times (a few seconds), check under the microscope, repeat if needed. Rinse thoroughly with water, then alcohol, then dry with warm air to avoid staining.

Safety: Keller and some other Al etchants contain HF or fluoride salts – full PPE, proper fume hood, and HF-specific safety measures are mandatory.'
WHERE (id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
   OR (slug = '1100-aluminum' AND name = '1100 Aluminum'))
  AND etching_notes IS NOT NULL;

-- Verify the update
DO $$
DECLARE
  v_grinding_seq TEXT[];
  v_polishing_seq TEXT[];
  v_material_name TEXT;
BEGIN
  SELECT name, recommended_grinding_sequence, recommended_polishing_sequence
  INTO v_material_name, v_grinding_seq, v_polishing_seq
  FROM materials
  WHERE id = '6c88d08d-2046-4013-946e-d69755490e97'::uuid
     OR (slug = '1100-aluminum' AND name = '1100 Aluminum')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material 1100 Aluminum not found (tried ID: 6c88d08d-2046-4013-946e-d69755490e97, slug: 1100-aluminum)';
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
  
  RAISE NOTICE 'Successfully updated 1100 Aluminum preparation procedures';
  RAISE NOTICE 'Grinding sequence: %', v_grinding_seq;
  RAISE NOTICE 'Polishing sequence: %', v_polishing_seq;
END $$;

