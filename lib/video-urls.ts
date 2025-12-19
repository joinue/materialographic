/**
 * Helper functions for getting video URLs from Supabase Storage
 * 
 * This allows videos to be hosted on Supabase instead of in the Git repository,
 * which is necessary for large video files that exceed GitHub's 100MB limit.
 */

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL!
const STORAGE_BUCKET = 'videos'

/**
 * Get the Supabase Storage URL for a video file
 * @param videoPath - Path relative to public/videos (e.g., "process/sectioning.MP4")
 * @returns Full URL to the video in Supabase Storage
 */
export function getVideoUrl(videoPath: string): string {
  // Remove leading slash if present
  const cleanPath = videoPath.startsWith('/') ? videoPath.slice(1) : videoPath
  // Remove 'videos/' prefix if present (since we're already in the videos bucket)
  let storagePath = cleanPath.startsWith('videos/') 
    ? cleanPath.replace('videos/', '') 
    : cleanPath
  
  // Prepend 'videos/' since videos are stored in a /videos folder within the bucket
  // The bucket structure is: videos/videos/process/sectioning.MP4
  storagePath = `videos/${storagePath}`
  
  // Construct Supabase Storage public URL
  return `${SUPABASE_URL}/storage/v1/object/public/${STORAGE_BUCKET}/${storagePath}`
}

/**
 * Get video URL - always returns Supabase Storage URL
 * Videos are hosted on Supabase Storage for consistency across all environments
 * 
 * @param videoPath - Path relative to public/videos (e.g., "process/sectioning.MP4")
 * @returns Full URL to the video in Supabase Storage
 */
export function getVideoUrlWithFallback(videoPath: string): string {
  // Always use Supabase URL for consistency
  return getVideoUrl(videoPath)
}

/**
 * Check if a video path should use Supabase
 * All videos now use Supabase Storage for consistency
 */
export function shouldUseSupabase(videoPath: string): boolean {
  // All videos use Supabase Storage
  return true
}

