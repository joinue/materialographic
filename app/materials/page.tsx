'use client'

import { useState, useEffect } from 'react'
import Link from 'next/link'
import { Search, Filter, X, ChevronDown } from 'lucide-react'
import { getAllMaterials, getMaterialsByCategory, searchMaterials, type Material } from '@/lib/supabase'

export default function MaterialsDatabasePage() {
  const [searchQuery, setSearchQuery] = useState('')
  const [selectedCategory, setSelectedCategory] = useState<string>('All')
  const [materials, setMaterials] = useState<Material[]>([])
  const [filteredMaterials, setFilteredMaterials] = useState<Material[]>([])
  const [loading, setLoading] = useState(true)
  const [categories, setCategories] = useState<string[]>([])
  const [mobileFiltersOpen, setMobileFiltersOpen] = useState(false)

  // Load materials on mount
  useEffect(() => {
    async function loadMaterials() {
      try {
        const allMaterials = await getAllMaterials()
        setMaterials(allMaterials)
        setFilteredMaterials(allMaterials)
        
        // Extract unique categories
        const uniqueCategories = Array.from(new Set(allMaterials.map(m => m.category))).sort()
        setCategories(uniqueCategories)
      } catch (error) {
        console.error('Error loading materials:', error)
      } finally {
        setLoading(false)
      }
    }
    
    loadMaterials()
  }, [])

  // Filter materials based on search and category
  useEffect(() => {
    async function filterMaterials() {
      if (loading) return

      let filtered = materials

      if (selectedCategory !== 'All') {
        try {
          filtered = await getMaterialsByCategory(selectedCategory)
        } catch (error) {
          console.error('Error filtering by category:', error)
          filtered = materials.filter(m => m.category === selectedCategory)
        }
      }

      if (searchQuery.trim()) {
        try {
          const searchResults = await searchMaterials(searchQuery)
          filtered = searchResults.filter(m => 
            selectedCategory === 'All' || m.category === selectedCategory
          )
        } catch (error) {
          console.error('Error searching materials:', error)
          // Fallback to client-side search
          const searchTerm = searchQuery.toLowerCase()
          filtered = filtered.filter(m =>
            m.name.toLowerCase().includes(searchTerm) ||
            m.category.toLowerCase().includes(searchTerm) ||
            m.composition.toLowerCase().includes(searchTerm) ||
            m.microstructure.toLowerCase().includes(searchTerm)
          )
        }
      }

      setFilteredMaterials(filtered)
    }

    filterMaterials()
  }, [searchQuery, selectedCategory, materials, loading])

  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Header */}
        <div className="mb-4 md:mb-8">
          <h1 className="text-2xl md:text-4xl font-bold mb-2 md:mb-4">Materials Database</h1>
          <p className="text-sm md:text-xl text-gray-600">
            Comprehensive database of material properties and preparation information for metallographic analysis.
          </p>
        </div>

        {/* Search and Filter */}
        <div className="mb-6 space-y-4">
          {/* Search Bar */}
          <div className="relative">
            <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Search materials by name, composition, or properties..."
              className="w-full pl-12 pr-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-base md:text-sm"
              style={{ fontSize: '16px' }}
            />
          </div>

          {/* Desktop Filters */}
          <div className="hidden md:block">
            <div className="bg-gray-50 rounded-lg p-4 border border-gray-200">
              <div className="flex items-center gap-2 mb-3">
                <span className="text-xs font-semibold text-gray-500 uppercase tracking-wider">Filter by Category</span>
                {selectedCategory !== 'All' && (
                  <button
                    onClick={() => setSelectedCategory('All')}
                    className="ml-auto text-xs text-primary-600 hover:text-primary-700 font-medium flex items-center gap-1"
                  >
                    <X className="w-3 h-3" />
                    Clear
                  </button>
                )}
              </div>
              <div className="flex flex-wrap gap-2">
                <button
                  onClick={() => setSelectedCategory('All')}
                  className={`px-3 py-1.5 rounded-md text-sm font-medium transition-colors ${
                    selectedCategory === 'All'
                      ? 'bg-primary-600 text-white shadow-sm'
                      : 'bg-white text-gray-700 hover:bg-gray-100 border border-gray-300'
                  }`}
                >
                  All
                </button>
                {categories.map(category => (
                  <button
                    key={category}
                    onClick={() => setSelectedCategory(category)}
                    className={`px-3 py-1.5 rounded-md text-sm font-medium transition-colors ${
                      selectedCategory === category
                        ? 'bg-primary-600 text-white shadow-sm'
                        : 'bg-white text-gray-700 hover:bg-gray-100 border border-gray-300'
                    }`}
                  >
                    {category}
                  </button>
                ))}
              </div>
            </div>
          </div>

          {/* Mobile Filters - Collapsible */}
          <div className="md:hidden">
            <button
              onClick={() => setMobileFiltersOpen(!mobileFiltersOpen)}
              className="w-full flex items-center justify-between px-4 py-3 bg-gray-50 rounded-lg border border-gray-200 hover:bg-gray-100 transition-colors"
            >
              <div className="flex items-center gap-2">
                <Filter className="w-4 h-4 text-gray-600" />
                <span className="font-medium text-gray-700">Filters</span>
                {selectedCategory !== 'All' && (
                  <span className="px-2 py-0.5 bg-primary-600 text-white text-xs font-semibold rounded-full">
                    1
                  </span>
                )}
              </div>
              <ChevronDown className={`w-4 h-4 text-gray-600 transition-transform ${mobileFiltersOpen ? 'rotate-180' : ''}`} />
            </button>

            {mobileFiltersOpen && (
              <div className="mt-3 bg-white border border-gray-200 rounded-lg p-4">
                <div>
                  <div className="flex items-center justify-between mb-2">
                    <span className="text-sm font-semibold text-gray-700">Category</span>
                    {selectedCategory !== 'All' && (
                      <button
                        onClick={() => setSelectedCategory('All')}
                        className="text-xs text-primary-600 hover:text-primary-700 font-medium"
                      >
                        Clear
                      </button>
                    )}
                  </div>
                  <div className="flex flex-wrap gap-2">
                    <button
                      onClick={() => setSelectedCategory('All')}
                      className={`px-3 py-1.5 rounded-md text-sm font-medium transition-colors ${
                        selectedCategory === 'All'
                          ? 'bg-primary-600 text-white'
                          : 'bg-gray-100 text-gray-700'
                      }`}
                    >
                      All
                    </button>
                    {categories.map(category => (
                      <button
                        key={category}
                        onClick={() => setSelectedCategory(category)}
                        className={`px-3 py-1.5 rounded-md text-sm font-medium transition-colors ${
                          selectedCategory === category
                            ? 'bg-primary-600 text-white'
                            : 'bg-gray-100 text-gray-700'
                        }`}
                      >
                        {category}
                      </button>
                    ))}
                  </div>
                </div>
              </div>
            )}
          </div>

          {/* Active Filters Summary - Mobile */}
          {selectedCategory !== 'All' && (
            <div className="md:hidden flex flex-wrap gap-2">
              <span className="inline-flex items-center gap-1 px-3 py-1 bg-primary-100 text-primary-700 rounded-full text-sm font-medium">
                {selectedCategory}
                <button
                  onClick={() => setSelectedCategory('All')}
                  className="ml-1 hover:text-primary-900"
                >
                  <X className="w-3 h-3" />
                </button>
              </span>
            </div>
          )}
        </div>

        {/* Results Count */}
        <div className="mb-6">
          {loading ? (
            <p className="text-gray-600">Loading materials...</p>
          ) : (
            <p className="text-gray-600">
              Showing <span className="font-semibold">{filteredMaterials.length}</span> material{filteredMaterials.length !== 1 ? 's' : ''}
            </p>
          )}
        </div>

        {/* Materials Grid */}
        {loading ? (
          <div className="text-center py-12">
            <p className="text-gray-500">Loading materials...</p>
          </div>
        ) : filteredMaterials.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6">
            {filteredMaterials.map(material => (
              <Link
                key={material.id}
                href={`/materials/${material.slug || material.id}`}
                className="bg-white border-2 border-gray-200 rounded-lg p-4 md:p-6 hover:border-primary-400 hover:shadow-lg transition-all duration-200 group"
              >
                <h3 className="text-xl font-semibold mb-2 text-gray-900 group-hover:text-primary-600 transition-colors">
                  {material.name}
                </h3>
                <p className="text-sm text-gray-600 mb-4">{material.category}</p>
                
                <div className="space-y-2 text-sm">
                  {material.hardness && (
                    <div className="flex justify-between">
                      <span className="text-gray-500">Hardness:</span>
                      <span className="font-medium text-gray-900">{material.hardness}</span>
                    </div>
                  )}
                  <div className="flex justify-between">
                    <span className="text-gray-500">Microstructure:</span>
                    <span className="font-medium text-gray-900">{material.microstructure}</span>
                  </div>
                </div>

                <div className="mt-4 pt-4 border-t border-gray-200">
                  <span className="text-primary-600 font-medium text-sm group-hover:underline">
                    View Details →
                  </span>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-12">
            <p className="text-gray-500 text-lg">No materials found matching your search.</p>
            <p className="text-gray-400 mt-2">Try adjusting your search terms or filters.</p>
          </div>
        )}
      </div>
    </div>
  )
}

