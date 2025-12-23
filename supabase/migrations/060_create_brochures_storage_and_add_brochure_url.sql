-- ============================================================================
-- CREATE BROCHURES STORAGE BUCKET AND ADD BROCHURE_URL TO EQUIPMENT
-- ============================================================================
-- This migration:
-- 1. Creates a storage bucket for equipment brochures (PDFs)
-- 2. Adds brochure_url field to equipment table
-- 3. Sets up storage policies for public access to brochures
-- ============================================================================

-- Create storage bucket for brochures
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES (
  'brochures',
  'brochures',
  true, -- Public bucket so brochures can be accessed directly
  52428800, -- 50MB file size limit (for PDF brochures)
  ARRAY['application/pdf', 'application/PDF']
)
ON CONFLICT (id) DO NOTHING;

-- Policy: Anyone can view brochures (public bucket)
DROP POLICY IF EXISTS "Public Access for brochures" ON storage.objects;
CREATE POLICY "Public Access for brochures"
ON storage.objects
FOR SELECT
USING (bucket_id = 'brochures');

-- Policy: Authenticated users can upload brochures
DROP POLICY IF EXISTS "Authenticated users can upload brochures" ON storage.objects;
CREATE POLICY "Authenticated users can upload brochures"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'brochures');

-- Policy: Authenticated users can update brochures
DROP POLICY IF EXISTS "Authenticated users can update brochures" ON storage.objects;
CREATE POLICY "Authenticated users can update brochures"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'brochures')
WITH CHECK (bucket_id = 'brochures');

-- Policy: Authenticated users can delete brochures
DROP POLICY IF EXISTS "Authenticated users can delete brochures" ON storage.objects;
CREATE POLICY "Authenticated users can delete brochures"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'brochures');

-- Add brochure_url column to equipment table
ALTER TABLE equipment
ADD COLUMN IF NOT EXISTS brochure_url TEXT;

-- Add comment for documentation
COMMENT ON COLUMN equipment.brochure_url IS 'URL to the equipment brochure PDF stored in Supabase storage (brochures bucket)';

