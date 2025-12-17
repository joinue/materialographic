'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoriesForCategory, getFeaturedConsumablesBySubcategory } from '@/lib/supabase'
import type { SubcategoryMetadata, Consumable } from '@/lib/supabase'
import { Scissors, Package, Gauge, FlaskConical, Droplet, HardDrive, ChevronRight, ArrowLeft } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'

const categoryLabels: Record<string, string> = {
  'sectioning': 'Sectioning',
  'mounting': 'Mounting',
  'grinding-lapping': 'Grinding & Lapping',
  'polishing': 'Polishing',
  'etching': 'Etching',
  'cleaning': 'Cleaning',
  'hardness-testing': 'Hardness Testing',
}

const categoryIcons: Record<string, typeof Scissors> = {
  'sectioning': Scissors,
  'mounting': Package,
  'grinding-lapping': Gauge,
  'polishing': Gauge,
  'etching': FlaskConical,
  'cleaning': Droplet,
  'hardness-testing': HardDrive,
}

const categoryDescriptions: Record<string, string> = {
  'sectioning': 'Cutting blades, fluids, and accessories for sectioning samples.',
  'mounting': 'Mounting resins, molds, and accessories for compression and castable mounting.',
  'grinding-lapping': 'Grinding papers, powders, lapping films, and grinding accessories.',
  'polishing': 'Polishing compounds, pads, cloths, and final polishing materials.',
  'etching': 'Etchants and reagents for revealing microstructures.',
  'cleaning': 'Cleaning solutions and supplies for sample preparation.',
  'hardness-testing': 'Accessories and supplies for hardness testing equipment.',
}

export default function ConsumablesCategoryPage({ params }: { params: Promise<{ category: string }> }) {
  const { category } = use(params)
  const [subcategories, setSubcategories] = useState<SubcategoryMetadata[]>([])
  const [featuredItems, setFeaturedItems] = useState<Record<string, Consumable[]>>({})
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const fetchData = async () => {
      try {
        // Fetch subcategories for this category
        const subcats = await getSubcategoriesForCategory(category, 'consumables')
        setSubcategories(subcats)

        // Fetch featured items for each subcategory
        const featured: Record<string, Consumable[]> = {}
        for (const subcat of subcats) {
          const items = await getFeaturedConsumablesBySubcategory(category, subcat.subcategory_key, 6)
          featured[subcat.subcategory_key] = items
        }
        setFeaturedItems(featured)
      } catch (error) {
        console.error('Error fetching data:', error)
      } finally {
        setLoading(false)
      }
    }

    fetchData()
  }, [category])

  const categoryLabel = categoryLabels[category] || category
  const IconComponent = categoryIcons[category] || Package
  const description = categoryDescriptions[category] || 'Browse consumables in this category.'

  if (loading) {
    return (
      <div className="py-4 sm:py-6 md:py-12">
        <div className="container-custom">
          <div className="text-center py-12">
            <div className="inline-block animate-spin rounded-full h-8 w-8 border-b-2 border-primary-600"></div>
            <p className="mt-4 text-gray-600">Loading consumables...</p>
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="py-4 sm:py-6 md:py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-3 sm:mb-4 md:mb-6">
          <Link 
            href="/consumables"
            className="inline-flex items-center gap-2 text-sm text-gray-600 hover:text-primary-600 mb-4 transition-colors"
          >
            <ArrowLeft className="w-4 h-4" />
            Back to All Consumables
          </Link>
          <div className="flex items-center gap-2 sm:gap-3 mb-2">
            <IconComponent className="w-6 h-6 sm:w-8 sm:h-8 text-primary-600" />
            <h1 className="text-2xl sm:text-3xl md:text-4xl font-bold text-gray-900">{categoryLabel}</h1>
          </div>
          <p className="text-xs sm:text-sm md:text-base text-gray-600 mt-1 sm:mt-2">
            {description}
          </p>
        </div>

        {/* Subcategories Section */}
        {subcategories.length > 0 ? (
          <div className="space-y-8 sm:space-y-12">
            {subcategories.map((subcat, subcatIndex) => {
              const items = featuredItems[subcat.subcategory_key] || []
              return (
                <section key={subcat.id} className="scroll-mt-24">
                  <div className="flex items-center justify-between mb-4 sm:mb-6">
                    <div>
                      <h2 className="text-xl sm:text-2xl md:text-3xl font-bold text-gray-900 mb-2">
                        {subcat.subcategory_label}
                      </h2>
                      {subcat.description && (
                        <p className="text-sm sm:text-base text-gray-600 max-w-3xl">
                          {subcat.description}
                        </p>
                      )}
                    </div>
                    {items.length > 0 && (
                      <Link
                        href={`/consumables/${category}/${subcat.subcategory_key}`}
                        className="hidden sm:flex items-center gap-2 text-sm font-semibold text-primary-600 hover:text-primary-700 transition-colors"
                      >
                        View All
                        <ChevronRight className="w-4 h-4" />
                      </Link>
                    )}
                  </div>

                  {items.length > 0 ? (
                    <>
                      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6 mb-4">
                        {items.map((item, itemIndex) => (
                          <AnimatedCard key={item.id} index={itemIndex} animation="fadeInUp" duration={500}>
                            <Link 
                              href={`/consumables/${category}/${subcat.subcategory_key}/${item.slug || item.item_id?.toLowerCase()}`}
                              className="card hover:border-gray-300 group p-4 sm:p-6"
                            >
                              {item.image_url && (
                                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden bg-gray-100">
                                  <Image
                                    src={item.image_url}
                                    alt={item.name}
                                    fill
                                    className="object-cover group-hover:scale-105 transition-transform duration-300"
                                  />
                                </div>
                              )}
                              <h3 className="text-lg sm:text-xl font-semibold mb-2 sm:mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
                                {item.name}
                              </h3>
                              {item.item_id && (
                                <p className="text-xs text-gray-500 mb-2">Item ID: {item.item_id}</p>
                              )}
                              {item.description && (
                                <p className="text-gray-600 text-sm leading-relaxed mb-3 sm:mb-4 line-clamp-3">
                                  {item.description}
                                </p>
                              )}
                              {item.list_price && (
                                <p className="text-sm font-semibold text-gray-900 mb-2">${item.list_price.toFixed(2)}</p>
                              )}
                              <span className="text-primary-600 font-semibold text-xs sm:text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
                                View Details
                                <ChevronRight className="w-3 h-3 sm:w-4 sm:h-4" />
                              </span>
                            </Link>
                          </AnimatedCard>
                        ))}
                      </div>
                      <div className="text-center sm:hidden">
                        <Link
                          href={`/consumables/${category}/${subcat.subcategory_key}`}
                          className="inline-flex items-center gap-2 text-sm font-semibold text-primary-600 hover:text-primary-700 transition-colors"
                        >
                          View All {subcat.subcategory_label}
                          <ChevronRight className="w-4 h-4" />
                        </Link>
                      </div>
                    </>
                  ) : (
                    <div className="text-center py-8 bg-gray-50 rounded-lg">
                      <p className="text-gray-600">No consumables found in this subcategory.</p>
                    </div>
                  )}
                </section>
              )
            })}
          </div>
        ) : (
          <div className="text-center py-12">
            <p className="text-gray-600">No subcategories found for this category.</p>
          </div>
        )}
      </div>
    </div>
  )
}

