-- ============================================================================
-- ADD MULTIPLE IMAGES SUPPORT FOR EQUIPMENT
-- ============================================================================
-- This migration adds support for multiple images per equipment item.
-- We keep image_url as the primary/cover image, and add images array for
-- additional images (gallery).
-- ============================================================================

-- Add images array field to equipment table
-- This will store an array of image objects: [{url, alt, caption, type}, ...]
ALTER TABLE equipment
ADD COLUMN IF NOT EXISTS images JSONB DEFAULT '[]'::jsonb;

-- Create index for images array queries
CREATE INDEX IF NOT EXISTS idx_equipment_images ON equipment USING gin(images);

-- Add comment
COMMENT ON COLUMN equipment.images IS 'Array of additional images: [{url: string, alt?: string, caption?: string, type?: "cover" | "detail" | "specs" | "dimensions" | "other"}]. The image_url field remains the primary/cover image.';

-- Example structure:
-- images: [
--   { "url": "/images/equipment/...", "alt": "Front view", "type": "cover" },
--   { "url": "/images/equipment/...", "alt": "Side view", "type": "detail" },
--   { "url": "/images/equipment/...", "alt": "Dimensions diagram", "type": "dimensions" }
-- ]

