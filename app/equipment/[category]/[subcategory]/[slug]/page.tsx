'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoryMetadata } from '@/lib/supabase'
import type { SubcategoryMetadata, Equipment, EquipmentWithDetails } from '@/lib/supabase'
import { ChevronRight, ArrowLeft, X, ChevronLeft, ShoppingBag, ExternalLink, Package } from 'lucide-react'
import { getEquipmentImageUrl } from '@/lib/storage'
import LoadingSpinner from '@/components/LoadingSpinner'
import SectioningSpecs from '@/components/equipment/SectioningSpecs'
import MountingSpecs from '@/components/equipment/MountingSpecs'
import GrindingPolishingSpecs from '@/components/equipment/GrindingPolishingSpecs'
import MicroscopySpecs from '@/components/equipment/MicroscopySpecs'
import HardnessTestingSpecs from '@/components/equipment/HardnessTestingSpecs'
import LabFurnitureSpecs from '@/components/equipment/LabFurnitureSpecs'

const categoryLabels: Record<string, string> = {
  'sectioning': 'Sectioning',
  'mounting': 'Mounting',
  'grinding-polishing': 'Grinding & Polishing',
  'microscopy': 'Microscopy',
  'hardness-testing': 'Hardness Testing',
  'lab-furniture': 'Lab Furniture',
}

// Map equipment category to consumable category
function mapEquipmentCategoryToConsumableCategory(eqCategory: string): string {
  const mapping: Record<string, string> = {
    'sectioning': 'sectioning',
    'mounting': 'mounting',
    'grinding-polishing': 'grinding-lapping', // or 'polishing' depending on equipment type
    'microscopy': 'cleaning', // Microscopy might need cleaning supplies
    'hardness-testing': 'hardness-testing',
    'lab-furniture': 'cleaning'
  }
  return mapping[eqCategory] || eqCategory
}

// Get relevant consumable categories for equipment
function getRelevantConsumableCategories(
  equipmentCategory: string,
  equipmentSubcategory?: string
): Array<{ name: string; url: string }> {
  const categories: Array<{ name: string; url: string }> = []
  const baseUrl = 'https://shop.metallographic.com/collections'
  
  if (equipmentCategory === 'sectioning') {
    const subcategoryLower = equipmentSubcategory?.toLowerCase() || ''
    if (subcategoryLower.includes('precision') || subcategoryLower.includes('wafering')) {
      categories.push({ name: 'Precision Wafering Blades', url: `${baseUrl}/precision-cutting-blades` })
    } else {
      categories.push({ name: 'Abrasive Blades', url: `${baseUrl}/abrasive-blades` })
    }
  } else if (equipmentCategory === 'mounting') {
    const subcategoryLower = equipmentSubcategory?.toLowerCase() || ''
    if (subcategoryLower.includes('compression') || subcategoryLower.includes('hot')) {
      categories.push({ name: 'Compression Mounting', url: `${baseUrl}/compression-mounting` })
    } else if (subcategoryLower.includes('castable') || subcategoryLower.includes('cold')) {
      categories.push({ name: 'Castable Mounting', url: `${baseUrl}/castable-mounting` })
    } else {
      // Show both if unclear
      categories.push({ name: 'Compression Mounting', url: `${baseUrl}/compression-mounting` })
      categories.push({ name: 'Castable Mounting', url: `${baseUrl}/castable-mounting` })
    }
  } else if (equipmentCategory === 'grinding-polishing') {
    // Grinding consumables
    categories.push({ name: 'SiC Grinding Papers', url: `${baseUrl}/sic-grinding` })
    categories.push({ name: 'Alumina Grinding Papers', url: `${baseUrl}/alumina` })
    categories.push({ name: 'Diamond Grinding Disks', url: `${baseUrl}/diamond-grinding` })
    categories.push({ name: 'Lapping Films', url: `${baseUrl}/lapping-films` })
    
    // Polishing consumables
    categories.push({ name: 'Polishing Pads', url: `${baseUrl}/polishing-pads` })
    categories.push({ name: 'Diamond Abrasives', url: `${baseUrl}/diamond-abrasives` })
    categories.push({ name: 'Final Polishing', url: `${baseUrl}/final-polishing` })
  } else if (equipmentCategory === 'microscopy') {
    categories.push({ name: 'Etchants', url: `${baseUrl}/etchants` })
  } else if (equipmentCategory === 'hardness-testing') {
    const subcategoryLower = equipmentSubcategory?.toLowerCase() || ''
    if (subcategoryLower.includes('rockwell')) {
      categories.push({ name: 'Rockwell Hardness Testing', url: `${baseUrl}/rockwell-hardness-testing` })
      categories.push({ name: 'Superficial Hardness Testing', url: `${baseUrl}/superficial-hardness-testing` })
    } else if (subcategoryLower.includes('microhardness') || subcategoryLower.includes('vickers') || subcategoryLower.includes('knoop')) {
      categories.push({ name: 'Microhardness Testing', url: `${baseUrl}/microhardness-hardness-testing` })
    } else if (subcategoryLower.includes('brinell')) {
      categories.push({ name: 'Brinell Hardness Testing', url: `${baseUrl}/brinell-hardness-testing` })
    } else {
      // Show all if unclear
      categories.push({ name: 'Rockwell Hardness Testing', url: `${baseUrl}/rockwell-hardness-testing` })
      categories.push({ name: 'Microhardness Testing', url: `${baseUrl}/microhardness-hardness-testing` })
      categories.push({ name: 'Brinell Hardness Testing', url: `${baseUrl}/brinell-hardness-testing` })
      categories.push({ name: 'Superficial Hardness Testing', url: `${baseUrl}/superficial-hardness-testing` })
    }
  }
  
  return categories
}

export default function EquipmentProductPage({ params }: { params: Promise<{ category: string; subcategory: string; slug: string }> }) {
  const { category, subcategory, slug } = use(params)
  const [equipment, setEquipment] = useState<EquipmentWithDetails | null>(null)
  const [subcategoryMeta, setSubcategoryMeta] = useState<SubcategoryMetadata | null>(null)
  const [consumablesCoverImage, setConsumablesCoverImage] = useState<string | null>(null)
  const [loading, setLoading] = useState(true)
  const [selectedImageIndex, setSelectedImageIndex] = useState(0)
  const [lightboxOpen, setLightboxOpen] = useState(false)

  useEffect(() => {
    const fetchData = async () => {
      try {
        const supabase = createClient()
        
        // Fetch equipment with category-specific data using joins
        let { data, error } = await supabase
          .from('equipment')
          .select(`
            *,
            equipment_sectioning (*),
            equipment_mounting (*),
            equipment_grinding_polishing (*),
            equipment_microscopy (*),
            equipment_hardness_testing (*),
            equipment_lab_furniture (*)
          `)
          .or(`slug.eq.${slug},item_id.ilike.${slug.toUpperCase()}`)
          .eq('status', 'active')
          .single()

        if (error && error.code === 'PGRST116') {
          // Try with lowercase item_id
          const { data: data2, error: error2 } = await supabase
            .from('equipment')
            .select(`
              *,
              equipment_sectioning (*),
              equipment_mounting (*),
              equipment_grinding_polishing (*),
              equipment_microscopy (*),
              equipment_hardness_testing (*),
              equipment_lab_furniture (*)
            `)
            .ilike('item_id', slug.toUpperCase())
            .eq('status', 'active')
            .single()
          
          if (error2) {
            console.error('Equipment not found:', error2)
            return
          }
          data = data2
        } else if (error) {
          console.error('Error fetching equipment:', error)
          return
        }

        // Transform the data to match EquipmentWithDetails type
        const equipmentWithDetails: EquipmentWithDetails = {
          ...data,
          sectioning: Array.isArray(data.equipment_sectioning) && data.equipment_sectioning.length > 0 
            ? data.equipment_sectioning[0] 
            : null,
          mounting: Array.isArray(data.equipment_mounting) && data.equipment_mounting.length > 0 
            ? data.equipment_mounting[0] 
            : null,
          grinding_polishing: Array.isArray(data.equipment_grinding_polishing) && data.equipment_grinding_polishing.length > 0 
            ? data.equipment_grinding_polishing[0] 
            : null,
          microscopy: Array.isArray(data.equipment_microscopy) && data.equipment_microscopy.length > 0 
            ? data.equipment_microscopy[0] 
            : null,
          hardness_testing: Array.isArray(data.equipment_hardness_testing) && data.equipment_hardness_testing.length > 0 
            ? data.equipment_hardness_testing[0] 
            : null,
          lab_furniture: Array.isArray(data.equipment_lab_furniture) && data.equipment_lab_furniture.length > 0 
            ? data.equipment_lab_furniture[0] 
            : null,
        }

        setEquipment(equipmentWithDetails)

        // Fetch subcategory metadata
        if (data?.subcategory) {
          const meta = await getSubcategoryMetadata(category, data.subcategory, 'equipment')
          setSubcategoryMeta(meta)
        }

        // Set consumables cover image path - explicit mapping to actual filenames
        const coverImageMap: Record<string, string> = {
          // Sectioning
          'precision-wafering': '/images/consumables/precision-wafering-cover.webp',
          'precision': '/images/consumables/precision-wafering-cover.webp',
          'wafering': '/images/consumables/precision-wafering-cover.webp',
          'abrasive-sectioning': '/images/consumables/abrasive-sectioning-cover.webp',
          'automated': '/images/consumables/abrasive-sectioning-cover.webp',
          'manual': '/images/consumables/abrasive-sectioning-cover.webp',
          // Mounting
          'compression-mounting': '/images/consumables/compression-mounting-cover.webp',
          'compression': '/images/consumables/compression-mounting-cover.webp',
          'castable-mounting': '/images/consumables/castable-mounting-cover.webp',
          'castable': '/images/consumables/castable-mounting-cover.webp',
          // Grinding & Polishing
          'grinding-polishing': '/images/consumables/grinding-cover.webp',
          'grinding': '/images/consumables/grinding-cover.webp',
          'polishing': '/images/consumables/polishing-cover.webp',
          // Hardness Testing
          'hardness-testing': '/images/consumables/hardness-testing-cover.webp',
          'hardness': '/images/consumables/hardness-testing-cover.webp',
        }
        
        let coverImage: string | null = null
        
        // Try subcategory first
        if (equipmentWithDetails.subcategory) {
          const subcategoryKey = equipmentWithDetails.subcategory.toLowerCase().replace(/\s+/g, '-')
          coverImage = coverImageMap[subcategoryKey]
        }
        
        // Fallback to category
        if (!coverImage) {
          coverImage = coverImageMap[category] || coverImageMap[category.replace(/\s+/g, '-')]
        }
        
        if (coverImage) {
          setConsumablesCoverImage(coverImage)
        }
      } catch (error) {
        console.error('Error fetching data:', error)
      } finally {
        setLoading(false)
      }
    }

    fetchData()
  }, [category, subcategory, slug])

  const categoryLabel = categoryLabels[category] || category
  const subcategoryLabel = subcategoryMeta?.subcategory_label || subcategory

  if (loading) {
    return (
      <div className="py-4 sm:py-6 md:py-12">
        <div className="container-custom">
          <div className="text-center py-12">
            <LoadingSpinner size="md" message="Loading equipment..." />
          </div>
        </div>
      </div>
    )
  }

  if (!equipment) {
    return (
      <div className="py-4 sm:py-6 md:py-12">
        <div className="container-custom">
          <div className="text-center py-12">
            <h1 className="text-2xl font-bold mb-4">Equipment Not Found</h1>
            <p className="text-gray-600 mb-6">The equipment you're looking for doesn't exist.</p>
            <Link href={`/equipment/${category}`} className="btn-primary">
              Back to {categoryLabel}
            </Link>
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="py-4 sm:py-6 md:py-12">
      <div className="container-custom">
        {/* Breadcrumb */}
        <div className="flex items-center gap-2 text-sm text-gray-600 mb-6">
          <Link 
            href="/equipment"
            className="hover:text-primary-600 transition-colors"
          >
            Equipment
          </Link>
          <ChevronRight className="w-4 h-4" />
          <Link 
            href={`/equipment/${category}`}
            className="hover:text-primary-600 transition-colors"
          >
            {categoryLabel}
          </Link>
          <ChevronRight className="w-4 h-4" />
          <Link 
            href={`/equipment/${category}/${subcategory}`}
            className="hover:text-primary-600 transition-colors"
          >
            {subcategoryLabel}
          </Link>
          <ChevronRight className="w-4 h-4" />
          <span className="text-gray-900">{equipment.name}</span>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
          {/* Image Section */}
          <div>
            {/* Main Image */}
            {(() => {
              // Get all images: primary image_url + additional images array
              const allImages: Array<{ url: string; alt?: string; caption?: string }> = []
              
              // Normalize URLs for comparison (remove query params, trailing slashes, protocol)
              const normalizeUrl = (url: string) => {
                if (!url) return ''
                // Remove protocol, query params, trailing slashes, and convert to lowercase
                return url
                  .replace(/^https?:\/\//, '')
                  .split('?')[0]
                  .replace(/\/$/, '')
                  .toLowerCase()
              }
              
              // Add primary image if it exists
              if (equipment.image_url) {
                allImages.push({ 
                  url: equipment.image_url, 
                  alt: equipment.name,
                  caption: 'Primary image'
                })
              }
              
              // Add additional images from images array
              // Handle both array and string (JSON) formats
              let imagesArray: any[] = []
              if (equipment.images) {
                if (Array.isArray(equipment.images)) {
                  imagesArray = equipment.images
                } else if (typeof equipment.images === 'string') {
                  try {
                    imagesArray = JSON.parse(equipment.images)
                  } catch {
                    // If parsing fails, try to treat as single URL
                    if (equipment.images.trim()) {
                      imagesArray = [{ url: equipment.images }]
                    }
                  }
                }
              }
              
              if (imagesArray.length > 0) {
                const primaryUrlNormalized = equipment.image_url ? normalizeUrl(equipment.image_url) : ''
                
                imagesArray.forEach((img: any) => {
                  if (img && img.url) {
                    // Only add if it's different from the primary image (normalized comparison)
                    const imgUrlNormalized = normalizeUrl(img.url)
                    if (imgUrlNormalized && imgUrlNormalized !== primaryUrlNormalized) {
                      allImages.push({
                        url: img.url,
                        alt: img.alt || equipment.name,
                        caption: img.caption
                      })
                    }
                  }
                })
              }
              
              
              if (allImages.length === 0) return null
              
              // Ensure selectedImageIndex is within bounds
              const safeIndex = Math.min(Math.max(0, selectedImageIndex), allImages.length - 1)
              const currentImage = allImages[safeIndex] || allImages[0]
              
              return (
                <>
                  <div 
                    className="relative w-full h-96 rounded-lg overflow-hidden bg-transparent mb-4 cursor-pointer group"
                    onClick={() => setLightboxOpen(true)}
                  >
                    <Image
                      src={getEquipmentImageUrl(currentImage.url) || currentImage.url}
                      alt={currentImage.alt || equipment.name}
                      fill
                      className="object-contain group-hover:scale-105 transition-transform duration-300"
                    />
                    {allImages.length > 1 && (
                      <div className="absolute bottom-4 left-4 bg-black bg-opacity-50 text-white px-3 py-1 rounded text-sm">
                        {safeIndex + 1} / {allImages.length}
                      </div>
                    )}
                    {currentImage.caption && (
                      <div className="absolute bottom-4 right-4 bg-black bg-opacity-50 text-white px-3 py-1 rounded text-sm max-w-xs">
                        {currentImage.caption}
                      </div>
                    )}
                  </div>
                  
                  {/* Thumbnail Gallery */}
                  {allImages.length > 1 && (
                    <div className="grid grid-cols-4 sm:grid-cols-6 gap-2">
                      {allImages.map((img, index) => (
                        <button
                          key={index}
                          type="button"
                          onClick={() => {
                            setSelectedImageIndex(index)
                            setLightboxOpen(false) // Close lightbox if open
                          }}
                          className={`relative aspect-square rounded-lg overflow-hidden border-2 transition-all ${
                            safeIndex === index
                              ? 'border-primary-600 ring-2 ring-primary-200'
                              : 'border-gray-200 hover:border-gray-300'
                          }`}
                        >
                          <Image
                            src={getEquipmentImageUrl(img.url) || img.url}
                            alt={img.alt || `${equipment.name} - Image ${index + 1}`}
                            fill
                            className="object-contain"
                            sizes="(max-width: 640px) 25vw, 16vw"
                          />
                        </button>
                      ))}
                    </div>
                  )}
                  
                  {/* Show message if only one image */}
                  {allImages.length === 1 && (
                    <p className="text-xs text-gray-500 mt-2 text-center">
                      Click image to view full size
                    </p>
                  )}
                  
                  {/* Lightbox Modal */}
                  {lightboxOpen && (
                    <div 
                      className="fixed inset-0 bg-black bg-opacity-90 z-50 flex items-center justify-center p-4"
                      onClick={() => setLightboxOpen(false)}
                    >
                      <button
                        onClick={() => setLightboxOpen(false)}
                        className="absolute top-4 right-4 text-white hover:text-gray-300 z-10"
                      >
                        <X className="w-8 h-8" />
                      </button>
                      
                      {allImages.length > 1 && (
                        <>
                          <button
                            onClick={(e) => {
                              e.stopPropagation()
                              setSelectedImageIndex((prev) => 
                                prev > 0 ? prev - 1 : allImages.length - 1
                              )
                            }}
                            className="absolute left-4 text-white hover:text-gray-300 z-10"
                          >
                            <ChevronLeft className="w-10 h-10" />
                          </button>
                          <button
                            onClick={(e) => {
                              e.stopPropagation()
                              setSelectedImageIndex((prev) => 
                                prev < allImages.length - 1 ? prev + 1 : 0
                              )
                            }}
                            className="absolute right-4 text-white hover:text-gray-300 z-10"
                          >
                            <ChevronRight className="w-10 h-10" />
                          </button>
                        </>
                      )}
                      
                      <div 
                        className="relative max-w-7xl max-h-full w-full h-full flex items-center justify-center"
                        onClick={(e) => e.stopPropagation()}
                      >
                        <div className="relative w-full h-full">
                          <Image
                            src={getEquipmentImageUrl(currentImage.url) || currentImage.url}
                            alt={currentImage.alt || equipment.name}
                            fill
                            className="object-contain"
                            sizes="100vw"
                          />
                          {currentImage.caption && (
                            <div className="absolute bottom-0 left-0 right-0 bg-black bg-opacity-75 text-white p-4 text-center">
                              {currentImage.caption}
                            </div>
                          )}
                          {allImages.length > 1 && (
                            <div className="absolute top-4 left-1/2 transform -translate-x-1/2 bg-black bg-opacity-50 text-white px-4 py-2 rounded">
                              {safeIndex + 1} / {allImages.length}
                            </div>
                          )}
                        </div>
                      </div>
                    </div>
                  )}
                </>
              )
            })()}
          </div>

          {/* Details Section */}
          <div>
            <h1 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-4">
              {equipment.name}
            </h1>
            {equipment.item_id && (
              <p className="text-sm text-gray-500 mb-4">Item ID: {equipment.item_id}</p>
            )}
            {equipment.description && (
              <div className="prose prose-sm max-w-none mb-6">
                <p className="text-gray-700 leading-relaxed">{equipment.description}</p>
              </div>
            )}

            {/* NANO Base Requirement for FEMTO Equipment */}
            {equipment.item_id && equipment.item_id.toUpperCase().includes('FEMTO') && (() => {
              // Extract NANO model from description
              const description = equipment.description || ''
              const nanoMatch = description.match(/NANO-[\dA-Z]+/gi)
              const nanoModels = nanoMatch ? [...new Set(nanoMatch.map(m => m.toUpperCase()))] : []
              
              if (nanoModels.length > 0) {
                return (
                  <div className="bg-blue-50 border-l-4 border-blue-600 p-4 mb-6 rounded-r-lg">
                    <div className="flex items-start gap-3">
                      <div className="flex-shrink-0">
                        <svg className="w-6 h-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                      </div>
                      <div className="flex-1">
                        <h3 className="text-lg font-semibold text-blue-900 mb-2">Required Base Unit</h3>
                        <p className="text-blue-800 mb-2">
                          This FEMTO polishing head requires a NANO base unit to operate:
                        </p>
                        <ul className="list-disc list-inside space-y-1 mb-3">
                          {nanoModels.map((nano, index) => (
                            <li key={index} className="text-blue-800 font-medium">
                              {nano}
                            </li>
                          ))}
                        </ul>
                        {nanoModels.length > 0 && (
                          <Link
                            href="/equipment/grinding-polishing/manual"
                            className="inline-flex items-center gap-2 text-blue-700 hover:text-blue-900 font-semibold transition-colors"
                          >
                            View NANO Base Units
                            <ChevronRight className="w-4 h-4" />
                          </Link>
                        )}
                      </div>
                    </div>
                  </div>
                )
              }
              return null
            })()}

            {/* Category-Specific Specifications */}
            {category === 'sectioning' && <SectioningSpecs specs={equipment.sectioning} />}
            {category === 'mounting' && <MountingSpecs specs={equipment.mounting} />}
            {category === 'grinding-polishing' && <GrindingPolishingSpecs specs={equipment.grinding_polishing} />}
            {category === 'microscopy' && <MicroscopySpecs specs={equipment.microscopy} />}
            {category === 'hardness-testing' && <HardnessTestingSpecs specs={equipment.hardness_testing} />}
            {category === 'lab-furniture' && <LabFurnitureSpecs specs={equipment.lab_furniture} />}

            {/* CTA Buttons */}
            <div className="flex flex-col sm:flex-row gap-4">
              <Link
                href="/quote"
                className="btn-primary text-center"
              >
                Request Quote
              </Link>
              {equipment.product_url && (
                <Link
                  href={equipment.product_url}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-secondary text-center"
                >
                  View Product Page
                </Link>
              )}
            </div>
          </div>
        </div>

        {/* Applications Section */}
        {equipment.suitable_for_applications && equipment.suitable_for_applications.length > 0 && (
          <section className="mt-12 mb-8">
            <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-6">Applications</h2>
            <div className="bg-gray-50 rounded-xl p-6 sm:p-8">
              <p className="text-gray-700 mb-4 leading-relaxed">
                This equipment is well-suited for the following applications:
              </p>
              <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                {equipment.suitable_for_applications.map((app, index) => (
                  <div key={index} className="flex items-start gap-3">
                    <div className="flex-shrink-0 w-2 h-2 rounded-full bg-primary-600 mt-2" />
                    <div>
                      <h3 className="font-semibold text-gray-900 capitalize mb-1">
                        {app.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase())}
                      </h3>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </section>
        )}

        {/* Material & Sample Suitability */}
        {(equipment.suitable_for_material_types?.length > 0 || 
          equipment.suitable_for_hardness?.length > 0 || 
          equipment.suitable_for_sample_sizes?.length > 0) && (
          <section className="mt-12 mb-8">
            <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-6">Suitability</h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {equipment.suitable_for_material_types && equipment.suitable_for_material_types.length > 0 && (
                <div className="bg-gray-50 rounded-xl p-6">
                  <h3 className="font-semibold text-gray-900 mb-3">Material Types</h3>
                  <ul className="space-y-2">
                    {equipment.suitable_for_material_types.map((material, index) => (
                      <li key={index} className="text-sm text-gray-700 flex items-center gap-2">
                        <span className="text-primary-600">•</span>
                        <span className="capitalize">{material.replace(/-/g, ' ')}</span>
                      </li>
                    ))}
                  </ul>
                </div>
              )}
              {equipment.suitable_for_hardness && equipment.suitable_for_hardness.length > 0 && (
                <div className="bg-gray-50 rounded-xl p-6">
                  <h3 className="font-semibold text-gray-900 mb-3">Hardness Range</h3>
                  <ul className="space-y-2">
                    {equipment.suitable_for_hardness.map((hardness, index) => (
                      <li key={index} className="text-sm text-gray-700 flex items-center gap-2">
                        <span className="text-primary-600">•</span>
                        <span className="capitalize">{hardness.replace(/-/g, ' ')}</span>
                      </li>
                    ))}
                  </ul>
                </div>
              )}
              {equipment.suitable_for_sample_sizes && equipment.suitable_for_sample_sizes.length > 0 && (
                <div className="bg-gray-50 rounded-xl p-6">
                  <h3 className="font-semibold text-gray-900 mb-3">Sample Sizes</h3>
                  <ul className="space-y-2">
                    {equipment.suitable_for_sample_sizes.map((size, index) => (
                      <li key={index} className="text-sm text-gray-700 flex items-center gap-2">
                        <span className="text-primary-600">•</span>
                        <span className="capitalize">{size.replace(/-/g, ' ')}</span>
                      </li>
                    ))}
                  </ul>
                </div>
              )}
            </div>
          </section>
        )}

        {/* Enhanced Specifications Section */}
        <section className="mt-12 mb-8">
          <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-6">Technical Specifications</h2>
          <div className="bg-white border border-gray-200 rounded-xl p-6 sm:p-8">
            {/* Category-Specific Specifications */}
            {category === 'sectioning' && <SectioningSpecs specs={equipment.sectioning} />}
            {category === 'mounting' && <MountingSpecs specs={equipment.mounting} />}
            {category === 'grinding-polishing' && <GrindingPolishingSpecs specs={equipment.grinding_polishing} />}
            {category === 'microscopy' && <MicroscopySpecs specs={equipment.microscopy} />}
            {category === 'hardness-testing' && <HardnessTestingSpecs specs={equipment.hardness_testing} />}
            {category === 'lab-furniture' && <LabFurnitureSpecs specs={equipment.lab_furniture} />}

            {/* General Equipment Attributes */}
            <div className="mt-6 pt-6 border-t border-gray-200">
              <h3 className="font-semibold text-gray-900 mb-4">General Information</h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                {equipment.item_id && (
                  <div>
                    <span className="text-sm font-medium text-gray-600">Item ID:</span>
                    <span className="ml-2 text-sm text-gray-900">{equipment.item_id}</span>
                  </div>
                )}
                {equipment.automation_level && (
                  <div>
                    <span className="text-sm font-medium text-gray-600">Automation Level:</span>
                    <span className="ml-2 text-sm text-gray-900 capitalize">{equipment.automation_level.replace(/-/g, ' ')}</span>
                  </div>
                )}
                {equipment.blade_size_mm && (
                  <div>
                    <span className="text-sm font-medium text-gray-600">Blade Size:</span>
                    <span className="ml-2 text-sm text-gray-900">{equipment.blade_size_mm} mm</span>
                    {equipment.blade_size_inches && (
                      <span className="ml-1 text-sm text-gray-500">({equipment.blade_size_inches}")</span>
                    )}
                  </div>
                )}
                {equipment.max_cutting_capacity_mm && (
                  <div>
                    <span className="text-sm font-medium text-gray-600">Max Cutting Capacity:</span>
                    <span className="ml-2 text-sm text-gray-900">{equipment.max_cutting_capacity_mm} mm</span>
                    {equipment.max_cutting_capacity_inches && (
                      <span className="ml-1 text-sm text-gray-500">({equipment.max_cutting_capacity_inches}")</span>
                    )}
                  </div>
                )}
                {equipment.wheel_size_inches && equipment.wheel_size_inches.length > 0 && (
                  <div>
                    <span className="text-sm font-medium text-gray-600">Wheel Sizes:</span>
                    <span className="ml-2 text-sm text-gray-900">
                      {equipment.wheel_size_inches.map(size => `${size}"`).join(', ')}
                    </span>
                  </div>
                )}
              </div>
            </div>
          </div>
        </section>

        {/* Relevant Consumables Categories Section - At the bottom */}
        {(() => {
          const consumableCategories = getRelevantConsumableCategories(
            category,
            equipment?.subcategory || undefined
          )
          
          if (consumableCategories.length === 0) return null
          
          return (
            <section className="mt-12 mb-8">
              <div className="flex items-center gap-4 mb-6">
                <h2 className="text-2xl sm:text-3xl font-bold text-gray-900">Relevant Consumables</h2>
              </div>
              
              <div className="grid grid-cols-1 lg:grid-cols-4 gap-6 mb-6">
                {/* Cover Image */}
                {consumablesCoverImage && (
                  <div className="lg:col-span-1">
                    <div className="relative w-full h-48 lg:h-full min-h-[200px] rounded-lg overflow-hidden bg-transparent">
                      <Image
                        src={consumablesCoverImage}
                        alt={`${categoryLabels[category]} consumables`}
                        fill
                        className="object-contain"
                        sizes="(max-width: 1024px) 100vw, 25vw"
                        unoptimized
                        onError={(e) => {
                          // Hide parent div if image fails to load
                          const parent = e.currentTarget.closest('div.lg\\:col-span-1')
                          if (parent) {
                            parent.style.display = 'none'
                          }
                        }}
                      />
                    </div>
                  </div>
                )}
                
                {/* Consumable Categories - More compact layout */}
                <div className={consumablesCoverImage ? "lg:col-span-3" : "lg:col-span-4"}>
                  <div className="flex flex-wrap gap-2">
                    {consumableCategories.map((cat, index) => (
                      <Link
                        key={index}
                        href={cat.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="inline-flex items-center gap-2 px-4 py-2 bg-white border border-gray-300 rounded-lg hover:border-primary-600 hover:bg-primary-50 transition-all group text-sm font-medium text-gray-700 hover:text-primary-700"
                      >
                        <span>{cat.name}</span>
                        <ExternalLink className="w-3.5 h-3.5 text-gray-400 group-hover:text-primary-600 transition-colors flex-shrink-0" />
                      </Link>
                    ))}
                  </div>
                </div>
              </div>
            </section>
          )
        })()}
      </div>
    </div>
  )
}

