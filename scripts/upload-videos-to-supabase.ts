/**
 * Script to upload videos from public/videos to Supabase storage
 * and optionally update code references to use Supabase URLs.
 * 
 * Usage:
 *   npx tsx scripts/upload-videos-to-supabase.ts
 * 
 * Requires:
 *   - SUPABASE_SERVICE_ROLE_KEY environment variable
 *   - NEXT_PUBLIC_SUPABASE_URL environment variable
 *   - Videos in public/videos/ directory
 */

import { createClient } from '@supabase/supabase-js'
import { readdir, readFile, stat } from 'fs/promises'
import { join } from 'path'
import { existsSync } from 'fs'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Missing required environment variables:')
  console.error('  - NEXT_PUBLIC_SUPABASE_URL')
  console.error('  - SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseServiceKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false,
  },
})

const VIDEOS_DIR = join(process.cwd(), 'public', 'videos')
const STORAGE_BUCKET = 'videos'

interface VideoFile {
  localPath: string
  storagePath: string
  size: number
}

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
 * Recursively find all video files in the videos directory
 */
async function findVideoFiles(dir: string, basePath: string = ''): Promise<VideoFile[]> {
  const files: VideoFile[] = []
  
  try {
    const entries = await readdir(dir, { withFileTypes: true })
    
    for (const entry of entries) {
      const fullPath = join(dir, entry.name)
      const relativePath = basePath ? join(basePath, entry.name) : entry.name
      
      if (entry.isDirectory()) {
        const subFiles = await findVideoFiles(fullPath, relativePath)
        files.push(...subFiles)
      } else if (entry.isFile()) {
        const ext = entry.name.toLowerCase()
        if (ext.endsWith('.mp4') || ext.endsWith('.webm')) {
          const stats = await stat(fullPath)
          const rawPath = relativePath.replace(/\\/g, '/') // Normalize path separators
          const sanitizedPath = sanitizeStoragePath(rawPath)
          if (rawPath !== sanitizedPath) {
            console.log(`📝 Sanitizing file name: "${rawPath}" → "${sanitizedPath}"`)
          }
          files.push({
            localPath: fullPath,
            storagePath: sanitizedPath,
            size: stats.size,
          })
        }
      }
    }
  } catch (error) {
    console.error(`Error reading directory ${dir}:`, error)
  }
  
  return files
}

/**
 * Check if file already exists in storage
 */
async function fileExists(storagePath: string): Promise<boolean> {
  const { data, error } = await supabase.storage
    .from(STORAGE_BUCKET)
    .list(storagePath.split('/').slice(0, -1).join('/') || '', {
      limit: 1000,
    })
  
  if (error) {
    console.warn(`Error checking if file exists: ${storagePath}`, error.message)
    return false
  }
  
  const fileName = storagePath.split('/').pop()!
  return data?.some(file => file.name === fileName) || false
}

/**
 * Upload a single video file
 */
async function uploadVideo(video: VideoFile): Promise<boolean> {
  try {
    // Check if file already exists
    if (await fileExists(video.storagePath)) {
      console.log(`⏭️  Skipping ${video.storagePath} (already exists)`)
      return true
    }
    
    // Read file
    const fileBuffer = await readFile(video.localPath)
    const fileSizeMB = (video.size / (1024 * 1024)).toFixed(2)
    
    console.log(`📤 Uploading ${video.storagePath} (${fileSizeMB} MB)...`)
    
    // Upload to Supabase
    const { data, error } = await supabase.storage
      .from(STORAGE_BUCKET)
      .upload(video.storagePath, fileBuffer, {
        contentType: 'video/mp4',
        upsert: false, // Don't overwrite existing files
      })
    
    if (error) {
      console.error(`❌ Error uploading ${video.storagePath}:`, error.message)
      return false
    }
    
    // Get public URL
    const { data: urlData } = supabase.storage
      .from(STORAGE_BUCKET)
      .getPublicUrl(video.storagePath)
    
    console.log(`✅ Uploaded ${video.storagePath}`)
    console.log(`   URL: ${urlData.publicUrl}`)
    return true
  } catch (error) {
    console.error(`❌ Error uploading ${video.storagePath}:`, error)
    return false
  }
}

/**
 * Main upload function
 */
async function uploadVideos() {
  console.log('🎬 Starting video upload to Supabase Storage...\n')
  
  if (!existsSync(VIDEOS_DIR)) {
    console.error(`❌ Videos directory not found: ${VIDEOS_DIR}`)
    process.exit(1)
  }
  
  // Find all video files
  console.log('📁 Scanning for video files...')
  const videos = await findVideoFiles(VIDEOS_DIR)
  
  if (videos.length === 0) {
    console.log('⚠️  No video files found in public/videos/')
    return
  }
  
  console.log(`Found ${videos.length} video file(s)\n`)
  
  // Show file sizes
  const totalSize = videos.reduce((sum, v) => sum + v.size, 0)
  const totalSizeMB = (totalSize / (1024 * 1024)).toFixed(2)
  console.log(`Total size: ${totalSizeMB} MB\n`)
  
  // Upload each video
  let successCount = 0
  let failCount = 0
  
  for (const video of videos) {
    const success = await uploadVideo(video)
    if (success) {
      successCount++
    } else {
      failCount++
    }
    console.log('') // Empty line for readability
  }
  
  // Summary
  console.log('='.repeat(50))
  console.log(`✅ Successfully uploaded: ${successCount}`)
  if (failCount > 0) {
    console.log(`❌ Failed: ${failCount}`)
  }
  console.log('='.repeat(50))
  
  // Get public URLs for all videos
  console.log('\n📋 Public URLs for uploaded videos:')
  for (const video of videos) {
    const { data } = supabase.storage
      .from(STORAGE_BUCKET)
      .getPublicUrl(video.storagePath)
    console.log(`  ${video.storagePath}: ${data.publicUrl}`)
  }
  
  console.log('\n💡 Next steps:')
  console.log('   1. Update your code to use Supabase URLs instead of /videos/ paths')
  console.log('   2. Example: Replace "/videos/process/sectioning.MP4" with the Supabase URL')
  console.log('   3. You can now safely exclude videos from Git using .gitignore')
}

// Run the upload
uploadVideos().catch(console.error)

