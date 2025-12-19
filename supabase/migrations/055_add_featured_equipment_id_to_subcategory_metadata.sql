-- Migration: Add featured_equipment_id to subcategory_metadata
-- This allows admins to specify which equipment should be featured in the hero image
-- for each equipment subcategory page

-- Add featured_equipment_id column
ALTER TABLE subcategory_metadata
ADD COLUMN IF NOT EXISTS featured_equipment_id UUID REFERENCES equipment(id) ON DELETE SET NULL;

-- Create index for efficient lookups
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_featured_equipment 
ON subcategory_metadata(featured_equipment_id) 
WHERE featured_equipment_id IS NOT NULL;

-- Add comment
COMMENT ON COLUMN subcategory_metadata.featured_equipment_id IS 
'ID of the equipment item to feature in the hero image for this subcategory page. If NULL, defaults to first equipment item.';

