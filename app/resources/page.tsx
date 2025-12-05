'use client'

import Link from 'next/link'
import { useState, useEffect } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { Search, FileText, BarChart3, BookOpen, AlertCircle, ChevronRight, Scale, Shield, Eye } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'

// Resource categories in order
const categoryOrder = ['Checklists & Quick References', 'Reference Charts', 'Preparation Guides', 'Troubleshooting']

const resources = [
  {
    title: 'Sample Preparation Checklist',
    slug: 'checklist',
    description: 'A comprehensive checklist to ensure you follow all steps in the preparation process. Perfect for keeping track of your workflow and avoiding missed steps.',
    category: 'Checklists & Quick References',
    type: 'Checklist',
    icon: FileText,
    order: 1,
  },
  {
    title: 'Grit Size Conversion Chart',
    slug: 'grit-size-chart',
    description: 'Reference chart for converting between different grit size standards (FEPA, ANSI, JIS). Essential for selecting the right abrasive for your material.',
    category: 'Reference Charts',
    type: 'Chart',
    icon: BarChart3,
    order: 1,
  },
  {
    title: 'Common Etchants Reference Guide',
    slug: 'common-etchants-guide',
    description: 'Quick reference guide to common etching reagents and their applications. Find the right etchant for your material and understand proper usage.',
    category: 'Reference Charts',
    type: 'Reference',
    icon: BarChart3,
    order: 2,
  },
  {
    title: 'Hardness Scale Conversion Chart',
    slug: 'hardness-scale-conversion',
    description: 'Reference chart for converting between different hardness scales (Rockwell, Brinell, Vickers, Knoop). Essential for hardness testing and material characterization.',
    category: 'Reference Charts',
    type: 'Chart',
    icon: Scale,
    order: 3,
  },
  {
    title: 'ASTM Standards Quick Reference',
    slug: 'astm-standards-reference',
    description: 'Quick reference guide to key ASTM standards relevant to metallography, including preparation, testing, and analysis standards.',
    category: 'Reference Charts',
    type: 'Reference',
    icon: FileText,
    order: 4,
  },
  {
    title: 'Standards Database',
    slug: 'standards',
    description: 'Searchable database of ASTM, ISO, and other standards for metallography. Browse by category, organization, or search by standard number or title.',
    category: 'Reference Charts',
    type: 'Database',
    icon: FileText,
    order: 5,
  },
  {
    title: 'Safety Data Sheet Quick Reference',
    slug: 'safety-data-sheet-reference',
    description: 'Quick reference for essential safety information for common chemicals used in metallography laboratories. Includes hazards, handling, and first aid.',
    category: 'Checklists & Quick References',
    type: 'Reference',
    icon: Shield,
    order: 2,
  },
  {
    title: 'Microscope Magnification Selection Guide',
    slug: 'microscope-magnification-guide',
    description: 'Guide to selecting appropriate magnifications for different metallographic applications and analyses. Includes recommended ranges and general guidelines.',
    category: 'Reference Charts',
    type: 'Guide',
    icon: Eye,
    order: 5,
  },
  {
    title: 'Material-Specific Preparation Guide',
    slug: 'material-preparation-guide',
    description: 'Comprehensive guide covering preparation techniques for various material types. Learn material-specific approaches for optimal results.',
    category: 'Preparation Guides',
    type: 'Guide',
    icon: BookOpen,
    order: 1,
  },
  {
    title: 'Polishing Cloth Selection Guide',
    slug: 'polishing-cloth-guide',
    description: 'Guide to selecting the right polishing cloth for your application. Understand cloth types, nap levels, and when to use each option.',
    category: 'Preparation Guides',
    type: 'Guide',
    icon: BookOpen,
    order: 2,
  },
  {
    title: 'Troubleshooting Quick Reference',
    slug: 'troubleshooting-guide',
    description: 'One-page guide to identifying and solving common preparation problems. Quick solutions for scratches, contamination, relief, and other issues.',
    category: 'Troubleshooting',
    type: 'Reference',
    icon: AlertCircle,
    order: 1,
  },
]

export default function ResourcesPage() {
  const categories = ['All', ...categoryOrder]
  const searchParams = useSearchParams()
  const router = useRouter()
  const categoryParam = searchParams.get('category') || 'All'
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
      router.push('/resources')
    } else {
      router.push(`/resources?category=${encodeURIComponent(category)}`)
    }
  }
  
  // Sort resources by category order, then within category
  const sortedResources = [...resources].sort((a, b) => {
    const aCategoryIndex = categoryOrder.indexOf(a.category)
    const bCategoryIndex = categoryOrder.indexOf(b.category)
    
    // If same category
    if (aCategoryIndex === bCategoryIndex) {
      return (a.order || 0) - (b.order || 0)
    }
    
    return aCategoryIndex - bCategoryIndex
  })
  
  const filteredResources = sortedResources.filter(resource => {
    const matchesCategory = selectedCategory === 'All' || resource.category === selectedCategory
    const matchesSearch = searchQuery === '' || 
      resource.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      resource.description.toLowerCase().includes(searchQuery.toLowerCase())
    return matchesCategory && matchesSearch
  })
  
  // Group resources by category for sectioned display
  const resourcesByCategory = filteredResources.reduce((acc, resource) => {
    if (!acc[resource.category]) {
      acc[resource.category] = []
    }
    acc[resource.category].push(resource)
    return acc
  }, {} as Record<string, typeof filteredResources>)

  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-8">
          <h1 className="text-3xl md:text-4xl font-bold mb-2 text-gray-900">Free Resources</h1>
          <p className="text-lg text-gray-600 mt-2">
            Downloadable checklists, reference guides, and educational materials organized by category. 
            Use these resources to support your metallography work and improve your sample preparation workflow.
          </p>
        </div>

        {/* Search Bar */}
        <div className="mb-6">
          <div className="relative max-w-2xl">
            <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              type="text"
              placeholder="Search resources..."
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

        {/* Resources by Section */}
        {selectedCategory === 'All' ? (
          // Show resources grouped by section when "All" is selected
          <div className="space-y-12 mb-16">
            {categoryOrder.map(category => {
              const categoryResources = resourcesByCategory[category] || []
              if (categoryResources.length === 0) return null
              
              return (
                <section key={category} className="scroll-mt-24">
                  <div className="flex items-center gap-3 mb-6">
                    <h2 className="text-2xl font-bold text-gray-900">{category}</h2>
                    <span className="text-sm text-gray-500">({categoryResources.length} {categoryResources.length === 1 ? 'resource' : 'resources'})</span>
                  </div>
                  {category === 'Checklists & Quick References' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Quick-reference materials to help you stay organized and follow best practices during sample preparation.
                    </p>
                  )}
                  {category === 'Reference Charts' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Essential reference charts and guides for selecting abrasives, etchants, and understanding material specifications.
                    </p>
                  )}
                  {category === 'Preparation Guides' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Comprehensive guides covering material-specific preparation techniques and equipment selection.
                    </p>
                  )}
                  {category === 'Troubleshooting' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Problem-solving resources to help identify and resolve common issues in sample preparation.
                    </p>
                  )}
                  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {categoryResources.map((resource, index) => {
                      // Standards database links to /standards, not /resources/standards
                      const href = resource.slug === 'standards' ? '/standards' : `/resources/${resource.slug}`
                      return (
                      <AnimatedCard key={resource.slug} index={index} animation="fadeInUp" duration={500}>
                        <Link 
                          href={href}
                          className="card hover:border-gray-300 group"
                        >
                        <div className="flex items-start justify-between mb-3">
                          <div className="flex items-center gap-2 flex-wrap">
                            {resource.icon && (
                              <resource.icon className="w-5 h-5 text-primary-600 flex-shrink-0" />
                            )}
                            <span className="text-xs font-semibold text-primary-600 uppercase tracking-wide bg-primary-50 px-2 py-1 rounded">
                              {resource.type}
                            </span>
                          </div>
                          <span className="text-xs text-gray-500">Free</span>
                        </div>
                        <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
                          {resource.title}
                        </h3>
                        <p className="text-gray-600 text-sm leading-relaxed mb-4">
                          {resource.description}
                        </p>
                        <span className="text-primary-600 font-semibold text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
                          View Resource
                          <ChevronRight className="w-4 h-4" />
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
          // Show filtered resources in grid when a specific category is selected
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
            {filteredResources.map((resource, index) => {
              // Standards database links to /standards, not /resources/standards
              const href = resource.slug === 'standards' ? '/standards' : `/resources/${resource.slug}`
              return (
              <AnimatedCard key={resource.slug} index={index} animation="fadeInUp" duration={500}>
                <Link 
                  href={href}
                  className="card hover:border-gray-300 group"
                >
                <div className="flex items-start justify-between mb-3">
                  <div className="flex items-center gap-2 flex-wrap">
                    {resource.icon && (
                      <resource.icon className="w-5 h-5 text-primary-600 flex-shrink-0" />
                    )}
                    <span className="text-xs font-semibold text-primary-600 uppercase tracking-wide bg-primary-50 px-2 py-1 rounded">
                      {resource.type}
                    </span>
                  </div>
                  <span className="text-xs text-gray-500">Free</span>
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
                  {resource.title}
                </h3>
                <p className="text-gray-600 text-sm leading-relaxed mb-4">
                  {resource.description}
                </p>
                <span className="text-primary-600 font-semibold text-sm inline-flex items-center gap-1 group-hover:gap-2 transition-all">
                  View Resource
                  <ChevronRight className="w-4 h-4" />
                </span>
                </Link>
              </AnimatedCard>
              )
            })}
          </div>
        )}

        {filteredResources.length === 0 && (
          <div className="text-center py-12">
            <p className="text-gray-600">No resources found matching your search.</p>
          </div>
        )}

        {/* Newsletter Signup */}
        <div className="mt-16 bg-gradient-to-br from-primary-50 to-primary-100 rounded-lg p-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Get New Resources Delivered</h2>
          <p className="text-gray-700 mb-6">
            Subscribe to our newsletter and receive new guides, resources, and tips directly in your inbox.
          </p>
          <form className="flex flex-col sm:flex-row gap-4 max-w-md mx-auto">
            <input
              type="email"
              placeholder="Enter your email"
              className="flex-1 px-4 py-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-primary-500"
            />
            <button type="submit" className="btn-primary whitespace-nowrap">
              Subscribe
            </button>
          </form>
          <p className="text-xs text-gray-600 mt-4">
            We respect your privacy. Unsubscribe at any time.
          </p>
        </div>

        {/* CTA Section */}
        <div className="mt-12 bg-gray-50 rounded-lg p-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Need More Help?</h2>
          <p className="text-gray-700 mb-6">
            Browse our comprehensive guides or use our procedure tool to save and manage your preparation methods.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/guides" className="btn-primary">
              Browse Guides
            </Link>
            <Link 
              href="https://materialsprep.com"
              target="_blank"
              rel="noopener noreferrer"
              className="btn-secondary"
            >
              Try Procedure Tool
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}
