/**
 * Helper functions for getting video URLs from Supabase Storage
 * 
 * This allows videos to be hosted on Supabase instead of in the Git repository,
 * which is necessary for large video files that exceed GitHub's 100MB limit.
 */

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
const STORAGE_BUCKET = 'videos'

/**
 * Sanitize file path for Supabase storage
 * Supabase requires lowercase file names and extensions, and doesn't allow certain special characters
 */
function sanitizeStoragePath(path: string): string {
  // Split path into directory and filename
  const parts = path.split('/')
  const fileName = parts.pop() || ''
  
  // Sanitize directory parts
  const sanitizedDirs = parts.map(dir => 
    dir.toLowerCase().replace(/[^a-z0-9_-]/g, '-').replace(/^-+|-+$/g, '')
  )
  
  // Sanitize filename: separate name and extension
  const lastDot = fileName.lastIndexOf('.')
  if (lastDot === -1) {
    // No extension, just sanitize the whole name
    const sanitized = fileName.toLowerCase().replace(/[^a-z0-9_-]/g, '-').replace(/^-+|-+$/g, '')
    return [...sanitizedDirs, sanitized].filter(Boolean).join('/')
  }
  
  const name = fileName.substring(0, lastDot)
  const ext = fileName.substring(lastDot + 1)
  
  // Sanitize name part and ensure extension is lowercase
  const sanitizedName = name.toLowerCase().replace(/[^a-z0-9_-]/g, '-').replace(/^-+|-+$/g, '')
  const sanitizedExt = ext.toLowerCase()
  
  return [...sanitizedDirs, `${sanitizedName}.${sanitizedExt}`].filter(Boolean).join('/')
}

/**
 * Get the Supabase Storage URL for a video file
 * @param videoPath - Path relative to public/videos (e.g., "process/sectioning.MP4")
 * @returns Full URL to the video in Supabase Storage
 */
export function getVideoUrl(videoPath: string): string {
  if (!SUPABASE_URL) {
    throw new Error('NEXT_PUBLIC_SUPABASE_URL is not configured')
  }
  
  // Remove leading slash if present
  const cleanPath = videoPath.startsWith('/') ? videoPath.slice(1) : videoPath
  // Remove 'videos/' prefix if present (since we're already in the videos bucket)
  let storagePath = cleanPath.startsWith('videos/') 
    ? cleanPath.replace('videos/', '') 
    : cleanPath
  
  // Sanitize the path to match what was uploaded (lowercase, valid characters only)
  storagePath = sanitizeStoragePath(storagePath)
  
  // Construct Supabase Storage public URL
  return `${SUPABASE_URL}/storage/v1/object/public/${STORAGE_BUCKET}/${storagePath}`
}

/**
 * Get video URL with fallback to local files in development
 * In development: tries Supabase first if configured, falls back to local files
 * In production: always uses Supabase Storage URLs
 * 
 * @param videoPath - Path relative to public/videos (e.g., "process/sectioning.MP4")
 * @returns Supabase URL if available, otherwise local file path in dev
 */
export function getVideoUrlWithFallback(videoPath: string): string {
  // If Supabase is configured, use it (works in both dev and prod)
  if (SUPABASE_URL) {
    return getVideoUrl(videoPath)
  }
  
  // Fallback to local files (development only, when Supabase not configured)
  // Remove leading slash if present, ensure it starts with /videos/
  const cleanPath = videoPath.startsWith('/') ? videoPath.slice(1) : videoPath
  const localPath = cleanPath.startsWith('videos/') 
    ? `/${cleanPath}`
    : `/videos/${cleanPath}`
  
  return localPath
}

/**
 * Check if a video path should use Supabase
 * All videos now use Supabase Storage for consistency
 */
export function shouldUseSupabase(videoPath: string): boolean {
  // All videos use Supabase Storage
  return true
}

