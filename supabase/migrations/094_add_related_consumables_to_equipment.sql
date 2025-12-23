-- ============================================================================
-- ADD RELATED_CONSUMABLES COLUMN TO EQUIPMENT TABLE
-- ============================================================================
-- Adds a JSONB column to store related consumable links that can be
-- managed by admin users. Each consumable has a name and URL.
-- ============================================================================

-- Add related_consumables column to equipment table
ALTER TABLE equipment
  ADD COLUMN IF NOT EXISTS related_consumables JSONB DEFAULT '[]'::JSONB,
  ADD COLUMN IF NOT EXISTS related_consumables_image_url TEXT;

-- Add comments explaining the structure
COMMENT ON COLUMN equipment.related_consumables IS 'Array of related consumable links. Format: [{"name": "Consumable Name", "url": "https://shop.metallographic.com/collections/..."}]';
COMMENT ON COLUMN equipment.related_consumables_image_url IS 'URL to the cover image for the related consumables section. Falls back to category/subcategory defaults if not set.';

