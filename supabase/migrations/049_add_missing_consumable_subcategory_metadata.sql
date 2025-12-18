-- Migration: Add missing consumable subcategory metadata entries
-- This adds subcategory metadata for URL-friendly slugs that map to standardized subcategories
-- For example, 'diamond-paste' maps to 'rough' polishing subcategory

-- Add diamond-paste subcategory metadata (maps to rough polishing)
INSERT INTO subcategory_metadata (entity_type, category, subcategory_key, subcategory_label, display_order, description, cover_image_url)
VALUES
  ('consumables', 'polishing', 'diamond-paste', 'Diamond Paste', 1, 'Polycrystalline and monocrystalline diamond pastes for rough polishing operations', '/images/consumables/rough polishing-cover.webp')
ON CONFLICT (entity_type, category, subcategory_key) DO UPDATE SET
  subcategory_label = EXCLUDED.subcategory_label,
  display_order = EXCLUDED.display_order,
  description = EXCLUDED.description,
  cover_image_url = EXCLUDED.cover_image_url,
  updated_at = NOW();

-- Ensure all diamond paste items are properly categorized
-- Update items with original CSV subcategory names to standardized 'rough' subcategory
UPDATE consumables 
SET subcategory = 'rough',
    updated_at = NOW()
WHERE category IN ('polishing', 'grinding & polishing')
  AND (
    subcategory ILIKE '%Polycrystalline Diamond Paste%'
    OR subcategory ILIKE '%Monocrystalline Diamond Paste%'
    OR subcategory ILIKE '%diamond paste%'
    OR description ILIKE '%diamond paste%'
    OR item_id ILIKE 'PC-%'
    OR item_id ILIKE 'MA-%'
  )
  AND subcategory != 'rough';

-- Also ensure items with 'Grinding & Polishing' category are properly mapped
-- Some items might still have the original category name
UPDATE consumables
SET category = 'polishing',
    updated_at = NOW()
WHERE category = 'grinding & polishing'
  AND subcategory IN ('rough', 'final', 'Polycrystalline Diamond Paste', 'Monocrystalline Diamond Paste');

-- Add index for better query performance on subcategory lookups
CREATE INDEX IF NOT EXISTS idx_consumables_category_subcategory_status 
ON consumables(category, subcategory, status, is_active)
WHERE status = 'active' AND is_active = true;


