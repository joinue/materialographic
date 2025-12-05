'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState, useEffect } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { ChevronRight, Scissors, Layers, Gem, FlaskConical, Box, Search, BookOpen, AlertCircle } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'
import { guides, categoryOrder, type Guide } from '@/data/guides'

// Icon mapping for client component
const iconMap: Record<string, any> = {
  BookOpen,
  Scissors,
  Layers,
  Gem,
  FlaskConical,
  Box,
  AlertCircle,
}

interface GuidesClientProps {
  initialCategory?: string | null
}

export default function GuidesClient({ initialCategory }: GuidesClientProps) {
  const categories = ['All', ...categoryOrder]
  const searchParams = useSearchParams()
  const router = useRouter()
  const categoryParam = initialCategory || searchParams.get('category') || 'All'
  const [selectedCategory, setSelectedCategory] = useState(categoryParam)
  const [searchQuery, setSearchQuery] = useState('')

  // Sync state with URL when it changes externally
  useEffect(() => {
    const category = searchParams.get('category') || 'All'
    setSelectedCategory(category)
  }, [searchParams])

  const handleCategoryChange = (category: string) => {
    setSelectedCategory(category)
    if (category === 'All') {
      router.push('/guides')
    } else {
      router.push(`/guides?category=${encodeURIComponent(category)}`)
    }
  }
  
  // Sort guides by category order, then within category
  const sortedGuides = [...guides].sort((a, b) => {
    const aCategoryIndex = categoryOrder.indexOf(a.category)
    const bCategoryIndex = categoryOrder.indexOf(b.category)
    
    // If same category
    if (aCategoryIndex === bCategoryIndex) {
      // Process guides by processOrder
      if (a.category === 'Process' && b.category === 'Process') {
        return (a.processOrder || 0) - (b.processOrder || 0)
      }
      // Basics guides by basicsOrder
      if (a.category === 'Basics' && b.category === 'Basics') {
        return (a.basicsOrder || 0) - (b.basicsOrder || 0)
      }
      // Others by title
      return a.title.localeCompare(b.title)
    }
    
    return aCategoryIndex - bCategoryIndex
  })
  
  const filteredGuides = sortedGuides.filter(guide => {
    const matchesCategory = selectedCategory === 'All' || guide.category === selectedCategory
    const matchesSearch = searchQuery === '' || 
      guide.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      guide.description.toLowerCase().includes(searchQuery.toLowerCase())
    return matchesCategory && matchesSearch
  })
  
  // Group guides by category for sectioned display
  const guidesByCategory = filteredGuides.reduce((acc, guide) => {
    if (!acc[guide.category]) {
      acc[guide.category] = []
    }
    acc[guide.category].push(guide)
    return acc
  }, {} as Record<string, typeof filteredGuides>)

  return (
    <>
      {/* Search Bar */}
      <div className="mb-6">
        <div className="relative max-w-2xl">
          <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400" />
          <input
            type="text"
            placeholder="Search guides..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full pl-12 pr-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 placeholder-gray-400"
          />
        </div>
      </div>

      {/* Category Filter */}
      <div className="mb-8 flex flex-wrap gap-3">
        {categories.map(category => (
          <button
            key={category}
            onClick={() => handleCategoryChange(category)}
            className={`px-5 py-2.5 rounded-full font-semibold text-sm transition-colors duration-200 ${
              selectedCategory === category
                ? 'bg-primary-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            {category}
          </button>
        ))}
      </div>

      {/* Guides by Section */}
      {selectedCategory === 'All' ? (
        // Show guides grouped by section when "All" is selected
        <div className="space-y-12 mb-16">
          {categoryOrder.map(category => {
            const categoryGuides = guidesByCategory[category] || []
            if (categoryGuides.length === 0) return null
            
            return (
              <section key={category} className="scroll-mt-24">
                <div className="flex items-center gap-3 mb-6">
                  <h2 className="text-2xl font-bold text-gray-900">{category}</h2>
                  <span className="text-sm text-gray-500">({categoryGuides.length} {categoryGuides.length === 1 ? 'guide' : 'guides'})</span>
                </div>
                {category === 'Basics' && (
                  <p className="text-gray-600 mb-6 max-w-3xl">
                    Start here if you're new to metallography. These guides cover the fundamentals, history, and purpose of metallographic analysis.
                  </p>
                )}
                {category === 'Process' && (
                  <p className="text-gray-600 mb-6 max-w-3xl">
                    Overview guides for each step in the sample preparation process. These provide general techniques and best practices.
                  </p>
                )}
                {category === 'Material-Specific' && (
                  <p className="text-gray-600 mb-6 max-w-3xl">
                    In-depth guides for preparing specific materials. These are more detailed and suitable for intermediate to advanced users.
                  </p>
                )}
                {category === 'Application-Specific' && (
                  <p className="text-gray-600 mb-6 max-w-3xl">
                    Specialized guides for specific applications and testing requirements. Advanced techniques for experienced metallographers.
                  </p>
                )}
                {category === 'Troubleshooting' && (
                  <p className="text-gray-600 mb-6 max-w-3xl">
                    Problem-solving guides to help identify and resolve common issues in sample preparation.
                  </p>
                )}
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                  {categoryGuides.map((guide, index) => (
                    <GuideCard key={guide.slug} guide={guide} index={index} />
                  ))}
                </div>
              </section>
            )
          })}
        </div>
      ) : (
        // Show filtered guides in grid when a specific category is selected
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
          {filteredGuides.map((guide, index) => (
            <GuideCard key={guide.slug} guide={guide} index={index} />
          ))}
        </div>
      )}

      {filteredGuides.length === 0 && (
        <div className="text-center py-12">
          <p className="text-gray-600">No guides found matching your search.</p>
        </div>
      )}
    </>
  )
}

function GuideCard({ guide, index }: { guide: Guide; index: number }) {
  const IconComponent = guide.icon ? iconMap[guide.icon] : null
  const ProcessIconComponent = guide.processIcon ? iconMap[guide.processIcon] : null

  return (
    <AnimatedCard index={index} animation="fadeInUp" duration={500}>
      <Link 
        href={guide.slug === 'troubleshooting-common-issues' ? '/resources/troubleshooting-guide' : `/guides/${guide.slug}`}
        className="card hover:border-gray-300 group"
      >
        <div className="flex items-start justify-between mb-3">
          <div className="flex items-center gap-2 flex-wrap">
            {guide.category === 'Material-Specific' && guide.microstructureImage && (
              <div className="relative w-8 h-8 flex-shrink-0" style={{ clipPath: 'polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%)' }}>
                <Image
                  src={guide.microstructureImage}
                  alt={`${guide.title} microstructure`}
                  fill
                  className="object-cover"
                  loading="lazy"
                  sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                />
              </div>
            )}
            {(guide.category === 'Process' && ProcessIconComponent) && (
              <ProcessIconComponent className="w-5 h-5 text-primary-600 flex-shrink-0" />
            )}
            {(guide.category === 'Basics' || guide.category === 'Troubleshooting') && IconComponent && (
              <IconComponent className="w-5 h-5 text-primary-600 flex-shrink-0" />
            )}
            {guide.difficulty && (
              <span className={`text-xs font-semibold px-2 py-0.5 rounded ${
                guide.difficulty === 'Beginner' ? 'bg-green-100 text-green-700' :
                guide.difficulty === 'Intermediate' ? 'bg-blue-100 text-blue-700' :
                'bg-purple-100 text-purple-700'
              }`}>
                {guide.difficulty}
              </span>
            )}
          </div>
          {guide.readTime && (
            <span className="text-xs text-gray-500">{guide.readTime}</span>
          )}
        </div>
        <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
          {guide.title}
        </h3>
        <p className="text-gray-600 text-sm leading-relaxed mb-4">
          {guide.description}
        </p>
        <span className="text-primary-600 font-semibold text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
          Read Guide
          <ChevronRight className="w-4 h-4" />
        </span>
      </Link>
    </AnimatedCard>
  )
}

