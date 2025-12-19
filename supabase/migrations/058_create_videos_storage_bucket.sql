-- Create storage bucket for videos
-- This bucket will store process videos and other large video files
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES (
  'videos',
  'videos',
  true, -- Public bucket so videos can be accessed directly
  1073741824, -- 1GB file size limit (1000MB)
  ARRAY['video/mp4', 'video/MP4', 'video/webm', 'video/quicktime']
)
ON CONFLICT (id) DO NOTHING;

-- Policy: Anyone can view videos (public bucket)
DROP POLICY IF EXISTS "Public Access for videos" ON storage.objects;
CREATE POLICY "Public Access for videos"
ON storage.objects
FOR SELECT
USING (bucket_id = 'videos');

-- Policy: Authenticated users can upload videos
DROP POLICY IF EXISTS "Authenticated users can upload videos" ON storage.objects;
CREATE POLICY "Authenticated users can upload videos"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'videos');

-- Policy: Authenticated users can update videos
DROP POLICY IF EXISTS "Authenticated users can update videos" ON storage.objects;
CREATE POLICY "Authenticated users can update videos"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'videos')
WITH CHECK (bucket_id = 'videos');

-- Policy: Authenticated users can delete videos
DROP POLICY IF EXISTS "Authenticated users can delete videos" ON storage.objects;
CREATE POLICY "Authenticated users can delete videos"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'videos');

