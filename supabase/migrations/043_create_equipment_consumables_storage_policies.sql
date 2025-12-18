-- Create storage policies for equipment-images and consumable-images buckets
-- Note: Buckets should already be created in Supabase dashboard

-- ============================================================================
-- EQUIPMENT IMAGES STORAGE POLICIES
-- ============================================================================

-- Policy: Anyone can view equipment images (public bucket)
CREATE POLICY IF NOT EXISTS "Public Access for equipment-images"
ON storage.objects
FOR SELECT
USING (bucket_id = 'equipment-images');

-- Policy: Authenticated users can upload equipment images
CREATE POLICY IF NOT EXISTS "Authenticated users can upload equipment images"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'equipment-images');

-- Policy: Authenticated users can update equipment images
CREATE POLICY IF NOT EXISTS "Authenticated users can update equipment images"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'equipment-images')
WITH CHECK (bucket_id = 'equipment-images');

-- Policy: Authenticated users can delete equipment images
CREATE POLICY IF NOT EXISTS "Authenticated users can delete equipment images"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'equipment-images');

-- ============================================================================
-- CONSUMABLE IMAGES STORAGE POLICIES
-- ============================================================================

-- Policy: Anyone can view consumable images (public bucket)
CREATE POLICY IF NOT EXISTS "Public Access for consumable-images"
ON storage.objects
FOR SELECT
USING (bucket_id = 'consumable-images');

-- Policy: Authenticated users can upload consumable images
CREATE POLICY IF NOT EXISTS "Authenticated users can upload consumable images"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'consumable-images');

-- Policy: Authenticated users can update consumable images
CREATE POLICY IF NOT EXISTS "Authenticated users can update consumable images"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'consumable-images')
WITH CHECK (bucket_id = 'consumable-images');

-- Policy: Authenticated users can delete consumable images
CREATE POLICY IF NOT EXISTS "Authenticated users can delete consumable images"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'consumable-images');


