'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState, useEffect, Suspense } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { Search, Scissors, Package, Gauge, Microscope, HardDrive, Home, ChevronRight } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'
import LoadingSpinner from '@/components/LoadingSpinner'
import { createClient } from '@/lib/supabase-client'
import { getEquipmentImageUrl } from '@/lib/storage'

// Process order for equipment categories
const categoryOrder = ['sectioning', 'mounting', 'grinding-polishing', 'microscopy', 'hardness-testing', 'lab-furniture']
const categoryLabels: Record<string, string> = {
  'sectioning': 'Sectioning',
  'mounting': 'Mounting',
  'grinding-polishing': 'Grinding & Polishing',
  'microscopy': 'Microscopy',
  'hardness-testing': 'Hardness Testing',
  'lab-furniture': 'Lab Furniture',
}

const categoryIcons: Record<string, typeof Scissors> = {
  'sectioning': Scissors,
  'mounting': Package,
  'grinding-polishing': Gauge,
  'microscopy': Microscope,
  'hardness-testing': HardDrive,
  'lab-furniture': Home,
}

function EquipmentPageContent() {
  const categories = ['All', ...categoryOrder.map(cat => categoryLabels[cat])]
  const searchParams = useSearchParams()
  const router = useRouter()
  const categoryParam = searchParams.get('category') || 'All'
  const [selectedCategory, setSelectedCategory] = useState(categoryParam)
  const [searchQuery, setSearchQuery] = useState('')
  const [equipment, setEquipment] = useState<any[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const fetchEquipment = async () => {
      try {
        const supabase = createClient()
        const { data, error } = await supabase
          .from('equipment')
          .select('*')
          .eq('status', 'active')
          .order('sort_order', { ascending: true })
          .order('name', { ascending: true })

        if (error) throw error
        setEquipment(data || [])
      } catch (error) {
        console.error('Error fetching equipment:', error)
      } finally {
        setLoading(false)
      }
    }

    fetchEquipment()
  }, [])

  // Sync state with URL when it changes externally
  useEffect(() => {
    const category = searchParams.get('category') || 'All'
    setSelectedCategory(category)
  }, [searchParams])

  const handleCategoryChange = (category: string) => {
    setSelectedCategory(category)
    if (category === 'All') {
      router.push('/equipment')
    } else {
      const categoryKey = Object.keys(categoryLabels).find(key => categoryLabels[key] === category) || category
      router.push(`/equipment/${categoryKey}`)
    }
  }

  // Map database categories to navigation categories
  const mapCategory = (dbCategory: string): string => {
    if (dbCategory === 'sectioning') return 'sectioning'
    if (dbCategory === 'mounting') return 'mounting'
    if (dbCategory === 'grinding' || dbCategory === 'polishing') return 'grinding-polishing'
    if (dbCategory === 'microscopy') return 'microscopy'
    if (dbCategory === 'hardness') return 'hardness-testing'
    if (dbCategory === 'cleaning' || dbCategory === 'lab-furniture') return 'lab-furniture'
    return dbCategory
  }

  const filteredEquipment = equipment.filter(item => {
    const itemCategory = mapCategory(item.category)
    const categoryLabel = categoryLabels[itemCategory] || itemCategory
    const matchesCategory = selectedCategory === 'All' || categoryLabel === selectedCategory
    const matchesSearch = searchQuery === '' || 
      item.name?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.description?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.item_id?.toLowerCase().includes(searchQuery.toLowerCase())
    return matchesCategory && matchesSearch
  })

  // Group equipment by category for sectioned display
  const equipmentByCategory = filteredEquipment.reduce((acc, item) => {
    const itemCategory = mapCategory(item.category)
    const categoryLabel = categoryLabels[itemCategory] || itemCategory
    if (!acc[categoryLabel]) {
      acc[categoryLabel] = []
    }
    acc[categoryLabel].push(item)
    return acc
  }, {} as Record<string, typeof filteredEquipment>)

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

  return (
    <div className="py-4 sm:py-6 md:py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-3 sm:mb-4 md:mb-6">
          <h1 className="text-2xl sm:text-3xl md:text-4xl font-bold mb-1.5 sm:mb-2 text-gray-900">Equipment</h1>
          <p className="text-xs sm:text-sm md:text-base text-gray-600 mt-1 sm:mt-2">
            Browse our complete range of metallographic equipment organized by process step.
          </p>
        </div>

        {/* Search Bar */}
        <div className="mb-4 sm:mb-6">
          <div className="relative max-w-2xl">
            <Search className="absolute left-3 sm:left-4 top-1/2 transform -translate-y-1/2 w-4 h-4 sm:w-5 sm:h-5 text-gray-400" />
            <input
              type="text"
              placeholder="Search equipment..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 sm:pl-12 pr-3 sm:pr-4 py-2.5 sm:py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 placeholder-gray-400 text-sm sm:text-base"
            />
          </div>
        </div>

        {/* Category Filter - Scrollable on mobile */}
        <div className="mb-3 sm:mb-4 md:mb-6">
          <div className="flex gap-2 sm:gap-3 overflow-x-auto pb-2 -mx-4 sm:mx-0 px-4 sm:px-0 scrollbar-hide">
            {categories.map(category => (
              <button
                key={category}
                onClick={() => handleCategoryChange(category)}
                className={`px-4 sm:px-5 py-2 sm:py-2.5 rounded-full font-semibold text-xs sm:text-sm transition-colors duration-200 whitespace-nowrap flex-shrink-0 ${
                  selectedCategory === category
                    ? 'bg-primary-600 text-white'
                    : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                }`}
              >
                {category}
              </button>
            ))}
          </div>
        </div>

        {/* Equipment by Section */}
        {selectedCategory === 'All' ? (
          <div className="space-y-6 sm:space-y-8 md:space-y-10 mb-4 sm:mb-8 md:mb-12">
            {categoryOrder.map(categoryKey => {
              const categoryLabel = categoryLabels[categoryKey]
              const categoryItems = equipmentByCategory[categoryLabel] || []
              if (categoryItems.length === 0) return null
              
              const IconComponent = categoryIcons[categoryKey] || Package
              
              return (
                <section key={categoryKey} className="scroll-mt-24">
                  <div className="flex items-center gap-2 sm:gap-3 mb-2 sm:mb-3 md:mb-4">
                    <IconComponent className="w-5 h-5 sm:w-6 sm:h-6 text-primary-600" />
                    <h2 className="text-xl sm:text-2xl font-bold text-gray-900">{categoryLabel}</h2>
                    <span className="text-xs sm:text-sm text-gray-500">({categoryItems.length} {categoryItems.length === 1 ? 'item' : 'items'})</span>
                  </div>
                  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
                    {categoryItems.map((item, index) => {
                      const subcategory = item.subcategory || 'general'
                      return (
                      <AnimatedCard key={item.id} index={index} animation="fadeInUp" duration={500}>
                        <Link 
                          href={`/equipment/${categoryKey}/${subcategory}/${item.slug || item.item_id?.toLowerCase()}`}
                          className="card hover:border-gray-300 group p-4 sm:p-6"
                        >
                          {item.image_url && (
                            <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden bg-gray-100">
                              <Image
                                src={getEquipmentImageUrl(item.image_url) || item.image_url}
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
                          <span className="text-primary-600 font-semibold text-xs sm:text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
                            View Details
                            <ChevronRight className="w-3 h-3 sm:w-4 sm:h-4" />
                          </span>
                        </Link>
                      </AnimatedCard>
                      )
                    })}
                  </div>
                </section>
              )
            })}
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6 mb-4 sm:mb-8 md:mb-12">
            {filteredEquipment.map((item, index) => {
              const itemCategory = mapCategory(item.category)
              const subcategory = item.subcategory || 'general'
              return (
                <AnimatedCard key={item.id} index={index} animation="fadeInUp" duration={500}>
                  <Link 
                    href={`/equipment/${itemCategory}/${subcategory}/${item.slug || item.item_id?.toLowerCase()}`}
                    className="card hover:border-gray-300 group p-4 sm:p-6"
                  >
                    {item.image_url && (
                      <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden bg-gray-100">
                        <Image
                          src={getEquipmentImageUrl(item.image_url) || item.image_url}
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
                    <span className="text-primary-600 font-semibold text-xs sm:text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
                      View Details
                      <ChevronRight className="w-3 h-3 sm:w-4 sm:h-4" />
                    </span>
                  </Link>
                </AnimatedCard>
              )
            })}
          </div>
        )}

        {filteredEquipment.length === 0 && !loading && (
          <div className="text-center py-12">
            <p className="text-gray-600">No equipment found matching your search.</p>
          </div>
        )}
      </div>
    </div>
  )
}

export default function EquipmentPage() {
  return (
    <Suspense fallback={
      <div className="py-4 sm:py-6 md:py-12">
        <div className="container-custom">
          <div className="text-center py-12">
            <LoadingSpinner size="md" message="Loading equipment..." />
          </div>
        </div>
      </div>
    }>
      <EquipmentPageContent />
    </Suspense>
  )
}

