'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoryMetadata } from '@/lib/supabase'
import type { SubcategoryMetadata, Equipment } from '@/lib/supabase'
import { ChevronRight, ArrowLeft } from 'lucide-react'

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
  const [equipment, setEquipment] = useState<Equipment | null>(null)
  const [subcategoryMeta, setSubcategoryMeta] = useState<SubcategoryMetadata | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const fetchData = async () => {
      try {
        const supabase = createClient()
        
        // Try to find equipment by slug first, then by item_id
        let { data, error } = await supabase
          .from('equipment')
          .select('*')
          .or(`slug.eq.${slug},item_id.ilike.${slug.toUpperCase()}`)
          .eq('status', 'active')
          .single()

        if (error && error.code === 'PGRST116') {
          // Try with lowercase item_id
          const { data: data2, error: error2 } = await supabase
            .from('equipment')
            .select('*')
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

        setEquipment(data)

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
            <div className="inline-block animate-spin rounded-full h-8 w-8 border-b-2 border-primary-600"></div>
            <p className="mt-4 text-gray-600">Loading equipment...</p>
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
            {equipment.image_url && (
              <div className="relative w-full h-96 rounded-lg overflow-hidden bg-gray-100 mb-4">
                <Image
                  src={equipment.image_url}
                  alt={equipment.name}
                  fill
                  className="object-cover"
                />
              </div>
            )}
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

            {/* Specifications */}
            {(equipment.blade_size_mm || equipment.automation_level || equipment.wheel_size_inches) && (
              <div className="border-t border-gray-200 pt-6 mb-6">
                <h2 className="text-lg font-semibold text-gray-900 mb-4">Specifications</h2>
                <dl className="grid grid-cols-2 gap-4">
                  {equipment.blade_size_mm && (
                    <>
                      <dt className="text-sm text-gray-600">Blade Size</dt>
                      <dd className="text-sm text-gray-900">{equipment.blade_size_mm}mm ({equipment.blade_size_inches}")</dd>
                    </>
                  )}
                  {equipment.automation_level && (
                    <>
                      <dt className="text-sm text-gray-600">Automation</dt>
                      <dd className="text-sm text-gray-900 capitalize">{equipment.automation_level}</dd>
                    </>
                  )}
                  {equipment.wheel_size_inches && equipment.wheel_size_inches.length > 0 && (
                    <>
                      <dt className="text-sm text-gray-600">Wheel Size</dt>
                      <dd className="text-sm text-gray-900">{equipment.wheel_size_inches.join('", ')}"</dd>
                    </>
                  )}
                </dl>
              </div>
            )}

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

