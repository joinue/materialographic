-- Update recommended procedures for all materials to follow best practices
-- This migration ensures all materials have complete and correct grinding and polishing sequences
-- based on material hardness, category, and metallographic best practices

-- ============================================================================
-- UPDATE GRINDING SEQUENCES
-- ============================================================================

-- Hard materials (steels, titanium, nickel alloys, hard materials)
-- Standard sequence: 120, 240, 320, 400, 600, 800, 1200 (800 and 1200 optional but recommended for best results)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600', '800', '1200']
WHERE hardness_category IN ('hard', 'very-hard')
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%' OR
    category LIKE '%Superalloy%' OR
    category LIKE '%Tool Steel%'
  )
  AND (
    recommended_grinding_sequence IS NULL OR
    recommended_grinding_sequence[1] != '120' OR
    array_length(recommended_grinding_sequence, 1) < 5
  );

-- Medium hardness materials (some stainless steels, medium-hard alloys)
-- Standard sequence: 120, 240, 320, 400, 600, 800, 1200 (800 and 1200 optional but recommended)
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600', '800', '1200']
WHERE hardness_category = 'medium'
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%'
  )
  AND (
    recommended_grinding_sequence IS NULL OR
    recommended_grinding_sequence[1] != '120' OR
    array_length(recommended_grinding_sequence, 1) < 5
  );

-- Soft materials (aluminum, copper, soft alloys)
-- Start with 240 grit to minimize deformation: 240, 320, 400, 600
UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE hardness_category = 'soft'
  AND (
    category LIKE '%Aluminum%' OR
    category LIKE '%Copper%' OR
    category LIKE '%Brass%' OR
    category LIKE '%Bronze%'
  )
  AND (
    recommended_grinding_sequence IS NULL OR
    recommended_grinding_sequence[1] != '240' OR
    array_length(recommended_grinding_sequence, 1) != 4
  );

-- Soft stainless steels (austenitic) - use standard sequence but can start with 120
-- Include 800 and 1200 for finer finish: 120, 240, 320, 400, 600, 800, 1200
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600', '800', '1200']
WHERE hardness_category = 'soft'
  AND category LIKE '%Stainless Steel%'
  AND (
    recommended_grinding_sequence IS NULL OR
    recommended_grinding_sequence[1] != '120' OR
    array_length(recommended_grinding_sequence, 1) < 5
  );

-- ============================================================================
-- UPDATE POLISHING SEQUENCES
-- ============================================================================

-- Hard materials (steels, titanium, nickel alloys, hard materials)
-- Best practice: 9μm → 3μm → 1μm → 0.05μm colloidal silica
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE hardness_category IN ('hard', 'very-hard')
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%' OR
    category LIKE '%Superalloy%' OR
    category LIKE '%Tool Steel%'
  )
  AND (
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) < 4 OR
    NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
    NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
  );

-- Medium hardness materials (some stainless steels, medium-hard alloys)
-- Best practice: 9μm → 3μm → 1μm → 0.05μm colloidal silica
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE hardness_category = 'medium'
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%'
  )
  AND (
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) < 4 OR
    NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
    NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
  );

-- Soft stainless steels (austenitic) - work-hardening materials
-- Best practice: 9μm → 3μm → 1μm → 0.05μm colloidal silica
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE hardness_category = 'soft'
  AND category LIKE '%Stainless Steel%'
  AND (
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) < 4 OR
    NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
    NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
  );

-- Soft materials (aluminum, copper, soft alloys)
-- Best practice: 6μm → 3μm → 1μm → 0.05μm colloidal silica (or 9μm for harder aluminum)
-- For most aluminum alloys, use 6μm start
UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE hardness_category = 'soft'
  AND (
    category LIKE '%Aluminum%' OR
    category LIKE '%Copper%' OR
    category LIKE '%Brass%' OR
    category LIKE '%Bronze%'
  )
  AND (
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) < 4 OR
    NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
    NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
  );

-- For harder aluminum alloys (like 7075), use 9μm start
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE hardness_category = 'medium'
  AND category LIKE '%Aluminum%'
  AND (
    recommended_polishing_sequence IS NULL OR
    array_length(recommended_polishing_sequence, 1) < 4 OR
    NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
    NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
  );

-- ============================================================================
-- FIX SPECIFIC MATERIALS THAT MAY HAVE UNIQUE REQUIREMENTS
-- ============================================================================

-- Ensure all materials have at least a basic sequence if they're missing one
-- This catches any materials that weren't covered by the category-specific updates above

-- Grinding sequences for materials without sequences
-- Steels, titanium, and nickel alloys get full sequence including 800 and 1200
UPDATE materials
SET recommended_grinding_sequence = ARRAY['120', '240', '320', '400', '600', '800', '1200']
WHERE recommended_grinding_sequence IS NULL
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%'
  );

UPDATE materials
SET recommended_grinding_sequence = ARRAY['240', '320', '400', '600']
WHERE recommended_grinding_sequence IS NULL
  AND (
    category LIKE '%Aluminum%' OR
    category LIKE '%Copper%' OR
    category LIKE '%Brass%' OR
    category LIKE '%Bronze%'
  );

-- Polishing sequences for materials without sequences
UPDATE materials
SET recommended_polishing_sequence = ARRAY['9μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE recommended_polishing_sequence IS NULL
  AND (
    category LIKE '%Steel%' OR
    category LIKE '%Titanium%' OR
    category LIKE '%Nickel%'
  );

UPDATE materials
SET recommended_polishing_sequence = ARRAY['6μm diamond', '3μm diamond', '1μm diamond', '0.05μm colloidal silica']
WHERE recommended_polishing_sequence IS NULL
  AND (
    category LIKE '%Aluminum%' OR
    category LIKE '%Copper%' OR
    category LIKE '%Brass%' OR
    category LIKE '%Bronze%'
  );

-- ============================================================================
-- VERIFICATION QUERIES (commented out - run separately to verify)
-- ============================================================================

-- Check materials with incomplete polishing sequences
-- SELECT name, category, hardness_category, recommended_polishing_sequence
-- FROM materials
-- WHERE recommended_polishing_sequence IS NOT NULL
--   AND (
--     array_length(recommended_polishing_sequence, 1) < 4 OR
--     NOT ('3μm diamond' = ANY(recommended_polishing_sequence)) OR
--     NOT ('0.05μm colloidal silica' = ANY(recommended_polishing_sequence))
--   )
-- ORDER BY category, name;

-- Check materials with incorrect grinding sequences
-- SELECT name, category, hardness_category, recommended_grinding_sequence
-- FROM materials
-- WHERE recommended_grinding_sequence IS NOT NULL
--   AND (
--     (hardness_category IN ('hard', 'very-hard', 'medium') AND category LIKE '%Steel%' AND recommended_grinding_sequence[1] != '120') OR
--     (hardness_category = 'soft' AND (category LIKE '%Aluminum%' OR category LIKE '%Copper%') AND recommended_grinding_sequence[1] != '240')
--   )
-- ORDER BY category, name;

