'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoryMetadata } from '@/lib/supabase'
import type { SubcategoryMetadata, Equipment, EquipmentWithDetails } from '@/lib/supabase'
import { ChevronRight, ArrowLeft, X, ChevronLeft } from 'lucide-react'
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

export default function EquipmentProductPage({ params }: { params: Promise<{ category: string; subcategory: string; slug: string }> }) {
  const { category, subcategory, slug } = use(params)
  const [equipment, setEquipment] = useState<EquipmentWithDetails | null>(null)
  const [subcategoryMeta, setSubcategoryMeta] = useState<SubcategoryMetadata | null>(null)
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
                    className="relative w-full h-96 rounded-lg overflow-hidden bg-gray-100 mb-4 cursor-pointer group"
                    onClick={() => setLightboxOpen(true)}
                  >
                    <Image
                      src={getEquipmentImageUrl(currentImage.url) || currentImage.url}
                      alt={currentImage.alt || equipment.name}
                      fill
                      className="object-cover group-hover:scale-105 transition-transform duration-300"
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
                            className="object-cover"
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
      </div>
    </div>
  )
}

