/**
 * Helper functions for Supabase storage URLs
 */

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL!

/**
 * Get public URL for a file in Supabase storage
 * @param bucket - Storage bucket name
 * @param path - Path to the file in storage
 * @returns Public URL to the file
 */
export function getStorageUrl(bucket: string, path: string): string {
  if (!SUPABASE_URL) {
    throw new Error('NEXT_PUBLIC_SUPABASE_URL is not set')
  }
  
  // Remove leading slash if present
  const cleanPath = path.startsWith('/') ? path.slice(1) : path
  
  return `${SUPABASE_URL}/storage/v1/object/public/${bucket}/${cleanPath}`
}

/**
 * Get public URL for an equipment image
 * @param path - Path to the image (can be relative path or full URL)
 * @returns Public URL to the image
 */
export function getEquipmentImageUrl(path: string | null | undefined): string | null {
  if (!path) return null
  
  // If it's already a full URL, return as-is
  if (path.startsWith('http://') || path.startsWith('https://')) {
    return path
  }
  
  // If it's a public/images path, convert to storage path with 'equipment/' prefix
  if (path.startsWith('/images/equipment/')) {
    const storagePath = `equipment/${path.replace('/images/equipment/', '')}`
    return getStorageUrl('equipment-images', storagePath)
  }
  
  // If it's already a storage path (no leading slash), check if it has 'equipment/' prefix
  if (!path.startsWith('/')) {
    // If it doesn't start with 'equipment/', add it
    const storagePath = path.startsWith('equipment/') ? path : `equipment/${path}`
    return getStorageUrl('equipment-images', storagePath)
  }
  
  // Otherwise, assume it's a storage path and remove leading slash, add 'equipment/' if needed
  const cleanPath = path.slice(1)
  const storagePath = cleanPath.startsWith('equipment/') ? cleanPath : `equipment/${cleanPath}`
  return getStorageUrl('equipment-images', storagePath)
}

/**
 * Get public URL for a consumable image
 * @param path - Path to the image (can be relative path or full URL)
 * @returns Public URL to the image
 */
export function getConsumableImageUrl(path: string | null | undefined): string | null {
  if (!path) return null
  
  // If it's already a full URL, return as-is
  if (path.startsWith('http://') || path.startsWith('https://')) {
    return path
  }
  
  // If it's a public/images path, convert to storage path
  if (path.startsWith('/images/consumables/')) {
    const storagePath = path.replace('/images/consumables/', '')
    return getStorageUrl('consumable-images', storagePath)
  }
  
  // If it's already a storage path (no leading slash), use as-is
  if (!path.startsWith('/')) {
    return getStorageUrl('consumable-images', path)
  }
  
  // Otherwise, assume it's a storage path and remove leading slash
  return getStorageUrl('consumable-images', path.slice(1))
}

/**
 * Get public URL for a blog image
 * @param path - Path to the image (can be relative path or full URL)
 * @returns Public URL to the image
 */
export function getBlogImageUrl(path: string | null | undefined): string | null {
  if (!path) return null
  
  // If it's already a full URL, return as-is
  if (path.startsWith('http://') || path.startsWith('https://')) {
    return path
  }
  
  // If it's a storage path, use it directly
  if (!path.startsWith('/')) {
    return getStorageUrl('blog-images', path)
  }
  
  // Otherwise, assume it's a storage path and remove leading slash
  return getStorageUrl('blog-images', path.slice(1))
}

/**
 * Get public URL for an equipment brochure
 * @param path - Path to the brochure (can be relative path or full URL)
 * @returns Public URL to the brochure PDF
 */
export function getBrochureUrl(path: string | null | undefined): string | null {
  if (!path) return null
  
  // If it's already a full URL, return as-is
  if (path.startsWith('http://') || path.startsWith('https://')) {
    return path
  }
  
  // If it's a storage path, use it directly
  if (!path.startsWith('/')) {
    return getStorageUrl('brochures', path)
  }
  
  // Otherwise, assume it's a storage path and remove leading slash
  return getStorageUrl('brochures', path.slice(1))
}

