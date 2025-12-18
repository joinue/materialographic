/**
 * Script to upload equipment images from public/images/equipment to Supabase storage
 * and update the database image_url fields to point to Supabase storage URLs.
 * 
 * Usage:
 *   npx tsx scripts/upload-equipment-images.ts
 * 
 * Requires:
 *   - SUPABASE_SERVICE_ROLE_KEY environment variable
 *   - NEXT_PUBLIC_SUPABASE_URL environment variable
 *   - Images in public/images/equipment/ directory
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

const EQUIPMENT_IMAGES_DIR = join(process.cwd(), 'public', 'images', 'equipment')
const STORAGE_BUCKET = 'equipment-images'

interface ImageFile {
  localPath: string
  storagePath: string
  itemId?: string
}

/**
 * Recursively find all image files in the equipment directory
 */
async function findImageFiles(dir: string, basePath: string = ''): Promise<ImageFile[]> {
  const files: ImageFile[] = []
  
  try {
    const entries = await readdir(dir, { withFileTypes: true })
    
    for (const entry of entries) {
      const fullPath = join(dir, entry.name)
      const relativePath = join(basePath, entry.name)
      
      if (entry.isDirectory()) {
        // Skip Thumbs.db directories and other system files
        if (entry.name === 'Thumbs.db' || entry.name.startsWith('.')) {
          continue
        }
        const subFiles = await findImageFiles(fullPath, relativePath)
        files.push(...subFiles)
      } else if (entry.isFile()) {
        // Only process image files
        const ext = entry.name.toLowerCase().split('.').pop()
        if (['webp', 'png', 'jpg', 'jpeg'].includes(ext || '')) {
          // Skip Thumbs.db files
          if (entry.name === 'Thumbs.db') {
            continue
          }
          
          // Convert Windows path separators to forward slashes for storage
          // Add 'equipment/' prefix to match storage structure
          const storagePath = `equipment/${relativePath.replace(/\\/g, '/')}`
          
          files.push({
            localPath: fullPath,
            storagePath: storagePath,
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
 * Upload a single image file to Supabase storage
 */
async function uploadImage(file: ImageFile): Promise<boolean> {
  try {
    // Check if file already exists in storage
    const { data: existing } = await supabase.storage
      .from(STORAGE_BUCKET)
      .list(file.storagePath.split('/').slice(0, -1).join('/') || '', {
        search: file.storagePath.split('/').pop(),
      })
    
    if (existing && existing.length > 0) {
      console.log(`  ⏭️  Already exists: ${file.storagePath}`)
      return true
    }
    
    // Read the file
    const fileBuffer = await readFile(file.localPath)
    
    // Upload to storage
    const { data, error } = await supabase.storage
      .from(STORAGE_BUCKET)
      .upload(file.storagePath, fileBuffer, {
        contentType: file.localPath.endsWith('.webp') ? 'image/webp' :
                     file.localPath.endsWith('.png') ? 'image/png' :
                     'image/jpeg',
        upsert: true, // Overwrite if exists
      })
    
    if (error) {
      console.error(`  ❌ Error uploading ${file.storagePath}:`, error.message)
      return false
    }
    
    console.log(`  ✅ Uploaded: ${file.storagePath}`)
    return true
  } catch (error: any) {
    console.error(`  ❌ Error processing ${file.storagePath}:`, error.message)
    return false
  }
}

/**
 * Get public URL for a storage path
 */
function getStorageUrl(storagePath: string): string {
  const { data } = supabase.storage
    .from(STORAGE_BUCKET)
    .getPublicUrl(storagePath)
  
  return data.publicUrl
}

/**
 * Update equipment image_url in database based on item_id matching
 */
async function updateEquipmentImageUrls(): Promise<void> {
  console.log('\n📝 Updating equipment image_url fields in database...')
  
  // Get all equipment with item_id
  const { data: equipment, error: fetchError } = await supabase
    .from('equipment')
    .select('id, item_id, image_url')
    .not('item_id', 'is', null)
  
  if (fetchError) {
    console.error('Error fetching equipment:', fetchError)
    return
  }
  
  if (!equipment || equipment.length === 0) {
    console.log('No equipment found to update')
    return
  }
  
  let updated = 0
  let skipped = 0
  
  for (const item of equipment) {
    if (!item.item_id) continue
    
    // Try to find matching image file
    // The image_url in the database might be like: /images/equipment/abrasive sectioning/automated abrasive cutters/mega-t300a/mega-t300a-cover.webp
    // We need to convert this to a storage path
    
    if (item.image_url && item.image_url.startsWith('/images/equipment/')) {
      // Convert public path to storage path with 'equipment/' prefix
      const storagePath = `equipment/${item.image_url.replace('/images/equipment/', '')}`
      
      // Check if file exists in storage
      const { data: fileData } = await supabase.storage
        .from(STORAGE_BUCKET)
        .list(storagePath.split('/').slice(0, -1).join('/') || '', {
          search: storagePath.split('/').pop(),
        })
      
      if (fileData && fileData.length > 0) {
        // Update database with Supabase storage URL
        const storageUrl = getStorageUrl(storagePath)
        
        const { error: updateError } = await supabase
          .from('equipment')
          .update({ image_url: storageUrl })
          .eq('id', item.id)
        
        if (updateError) {
          console.error(`  ❌ Error updating ${item.item_id}:`, updateError.message)
        } else {
          console.log(`  ✅ Updated ${item.item_id}: ${storageUrl}`)
          updated++
        }
      } else {
        console.log(`  ⏭️  Image not found in storage for ${item.item_id}: ${storagePath}`)
        skipped++
      }
    } else if (item.image_url && item.image_url.startsWith('http')) {
      // Already a URL (possibly already updated)
      console.log(`  ⏭️  Already has URL: ${item.item_id}`)
      skipped++
    } else {
      // No image_url set
      skipped++
    }
  }
  
  console.log(`\n✅ Updated ${updated} equipment items`)
  console.log(`⏭️  Skipped ${skipped} equipment items`)
}

/**
 * Main function
 */
async function main() {
  console.log('🚀 Starting equipment images upload...\n')
  
  // Check if equipment images directory exists
  if (!existsSync(EQUIPMENT_IMAGES_DIR)) {
    console.error(`❌ Equipment images directory not found: ${EQUIPMENT_IMAGES_DIR}`)
    process.exit(1)
  }
  
  console.log(`📁 Scanning directory: ${EQUIPMENT_IMAGES_DIR}`)
  
  // Find all image files
  const imageFiles = await findImageFiles(EQUIPMENT_IMAGES_DIR)
  console.log(`\n📸 Found ${imageFiles.length} image files\n`)
  
  if (imageFiles.length === 0) {
    console.log('No image files found. Exiting.')
    return
  }
  
  // Upload all images
  console.log('📤 Uploading images to Supabase storage...\n')
  let successCount = 0
  let failCount = 0
  
  for (const file of imageFiles) {
    const success = await uploadImage(file)
    if (success) {
      successCount++
    } else {
      failCount++
    }
  }
  
  console.log(`\n✅ Upload complete:`)
  console.log(`   Success: ${successCount}`)
  console.log(`   Failed: ${failCount}`)
  
  // Update database URLs
  await updateEquipmentImageUrls()
  
  console.log('\n🎉 Done!')
}

// Run the script
main().catch((error) => {
  console.error('Fatal error:', error)
  process.exit(1)
})

