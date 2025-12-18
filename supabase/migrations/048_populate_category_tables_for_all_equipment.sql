-- ============================================================================
-- POPULATE CATEGORY-SPECIFIC TABLES FOR ALL EXISTING EQUIPMENT
-- ============================================================================
-- This migration ensures that ALL equipment items have corresponding records
-- in their category-specific tables, even if they don't have data in the
-- deprecated fields. This is needed when equipment was added via CSV before
-- the category-specific tables existed.
-- ============================================================================

-- Migrate ALL sectioning equipment (create records even if fields are null)
INSERT INTO equipment_sectioning (
  equipment_id,
  blade_size_mm,
  blade_size_inches,
  max_cutting_capacity_mm,
  max_cutting_capacity_inches,
  automation_level
)
SELECT 
  id,
  blade_size_mm,
  blade_size_inches,
  max_cutting_capacity_mm,
  max_cutting_capacity_inches,
  automation_level
FROM equipment
WHERE category = 'sectioning'
  AND id NOT IN (SELECT equipment_id FROM equipment_sectioning)
ON CONFLICT (equipment_id) DO NOTHING;

-- Migrate ALL grinding-polishing equipment
-- Handle multiple possible category name variations
INSERT INTO equipment_grinding_polishing (
  equipment_id,
  wheel_size_inches,
  automation_level
)
SELECT 
  id,
  wheel_size_inches,
  automation_level
FROM equipment
WHERE category IN ('grinding-polishing', 'grinding', 'polishing', 'grinding & polishing')
  AND id NOT IN (SELECT equipment_id FROM equipment_grinding_polishing)
ON CONFLICT (equipment_id) DO NOTHING;

-- Create empty records for mounting equipment (if any exist)
INSERT INTO equipment_mounting (equipment_id)
SELECT id
FROM equipment
WHERE category = 'mounting'
  AND id NOT IN (SELECT equipment_id FROM equipment_mounting)
ON CONFLICT (equipment_id) DO NOTHING;

-- Create empty records for microscopy equipment (if any exist)
INSERT INTO equipment_microscopy (equipment_id)
SELECT id
FROM equipment
WHERE category = 'microscopy'
  AND id NOT IN (SELECT equipment_id FROM equipment_microscopy)
ON CONFLICT (equipment_id) DO NOTHING;

-- Create empty records for hardness-testing equipment (if any exist)
-- Handle both 'hardness' and 'hardness-testing' category names
INSERT INTO equipment_hardness_testing (equipment_id)
SELECT id
FROM equipment
WHERE category IN ('hardness-testing', 'hardness')
  AND id NOT IN (SELECT equipment_id FROM equipment_hardness_testing)
ON CONFLICT (equipment_id) DO NOTHING;

-- Create empty records for lab-furniture equipment (if any exist)
INSERT INTO equipment_lab_furniture (equipment_id)
SELECT id
FROM equipment
WHERE category = 'lab-furniture'
  AND id NOT IN (SELECT equipment_id FROM equipment_lab_furniture)
ON CONFLICT (equipment_id) DO NOTHING;

-- ============================================================================
-- DIAGNOSTIC QUERIES (for troubleshooting)
-- ============================================================================
-- Uncomment these to check what categories exist and what's missing:

-- Check all unique categories in equipment table:
-- SELECT DISTINCT category, COUNT(*) as count 
-- FROM equipment 
-- GROUP BY category 
-- ORDER BY category;

-- Check which equipment doesn't have category-specific records:
-- SELECT e.id, e.item_id, e.name, e.category
-- FROM equipment e
-- LEFT JOIN equipment_sectioning s ON e.id = s.equipment_id
-- LEFT JOIN equipment_mounting m ON e.id = m.equipment_id
-- LEFT JOIN equipment_grinding_polishing gp ON e.id = gp.equipment_id
-- LEFT JOIN equipment_microscopy mic ON e.id = mic.equipment_id
-- LEFT JOIN equipment_hardness_testing ht ON e.id = ht.equipment_id
-- LEFT JOIN equipment_lab_furniture lf ON e.id = lf.equipment_id
-- WHERE s.equipment_id IS NULL 
--   AND m.equipment_id IS NULL 
--   AND gp.equipment_id IS NULL 
--   AND mic.equipment_id IS NULL 
--   AND ht.equipment_id IS NULL 
--   AND lf.equipment_id IS NULL;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- After running this migration, every equipment item should have a
-- corresponding record in its category-specific table. You can then
-- update those records with the appropriate technical specifications
-- either via the admin interface or by running additional UPDATE statements.

