'use client'

import Link from 'next/link'
import { useState, useEffect } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { Search, Calculator, FlaskConical, Workflow } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'

// Tool categories in order
const categoryOrder = ['Calculators', 'Reference', 'Workflow']

const tools = [
  {
    title: 'Grit Size Converter',
    slug: 'grit-size-converter',
    description: 'Convert between different grit size standards (FEPA, ANSI, JIS, micron).',
    icon: '🔢',
    category: 'Calculators',
    calculatorOrder: 1,
  },
  {
    title: 'Polishing Time Calculator',
    slug: 'polishing-time-calculator',
    description: 'Calculate optimal polishing times based on material and grit size.',
    icon: '⏱️',
    category: 'Calculators',
    calculatorOrder: 2,
  },
  {
    title: 'Grain Size Calculator',
    slug: 'grain-size-calculator',
    description: 'Calculate ASTM grain size numbers and convert between grain size measurements.',
    icon: '📏',
    category: 'Calculators',
    calculatorOrder: 3,
  },
  {
    title: 'Mounting Material Calculator',
    slug: 'mounting-material-calculator',
    description: 'Calculate the amount of mounting material needed for compression or castable mounting.',
    icon: '🧮',
    category: 'Calculators',
    calculatorOrder: 4,
  },
  {
    title: 'Total Procedure Time Estimator',
    slug: 'procedure-time-estimator',
    description: 'Estimate total time for complete sample preparation including grinding, polishing, and mounting.',
    icon: '⏳',
    category: 'Calculators',
    calculatorOrder: 5,
  },
  {
    title: 'Etchant Selector',
    slug: 'etchant-selector',
    description: 'Find the right etchant for your material and application.',
    icon: '🧪',
    category: 'Reference',
  },
  {
    title: 'Sample Size/Mold Compatibility Checker',
    slug: 'mold-compatibility-checker',
    description: 'Check if your sample fits in standard mounting molds and get size recommendations.',
    icon: '📐',
    category: 'Reference',
  },
  {
    title: 'Procedure Tool',
    slug: 'procedure-tool',
    description: 'Save, organize, and get recommendations for your preparation procedures.',
    icon: '📋',
    category: 'Workflow',
    external: true,
    href: 'https://materialsprep.com',
  },
]

export default function ToolsPage() {
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
      router.push('/tools')
    } else {
      router.push(`/tools?category=${encodeURIComponent(category)}`)
    }
  }
  
  // Sort tools by category order, then within category
  const sortedTools = [...tools].sort((a, b) => {
    const aCategoryIndex = categoryOrder.indexOf(a.category)
    const bCategoryIndex = categoryOrder.indexOf(b.category)
    
    // If same category
    if (aCategoryIndex === bCategoryIndex) {
      // Calculators by calculatorOrder
      if (a.category === 'Calculators' && b.category === 'Calculators') {
        return (a.calculatorOrder || 0) - (b.calculatorOrder || 0)
      }
      // Others by title
      return a.title.localeCompare(b.title)
    }
    
    return aCategoryIndex - bCategoryIndex
  })
  
  const filteredTools = sortedTools.filter(tool => {
    const matchesCategory = selectedCategory === 'All' || tool.category === selectedCategory
    const matchesSearch = searchQuery === '' || 
      tool.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      tool.description.toLowerCase().includes(searchQuery.toLowerCase())
    return matchesCategory && matchesSearch
  })
  
  // Group tools by category for sectioned display
  const toolsByCategory = filteredTools.reduce((acc, tool) => {
    if (!acc[tool.category]) {
      acc[tool.category] = []
    }
    acc[tool.category].push(tool)
    return acc
  }, {} as Record<string, typeof filteredTools>)

  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-8">
          <h1 className="text-3xl md:text-4xl font-bold mb-2 text-gray-900">Tools & Calculators</h1>
          <p className="text-lg text-gray-600 mt-2">
            Free practical tools to help with your metallographic sample preparation work. 
            Use <strong>Calculators</strong> for conversions and time calculations, 
            <strong> Reference</strong> tools for material selection, and <strong>Workflow</strong> tools 
            for procedure management.
          </p>
        </div>

        {/* Search Bar */}
        <div className="mb-6">
          <div className="relative max-w-2xl">
            <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              type="text"
              placeholder="Search tools..."
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

        {/* Tools by Section */}
        {selectedCategory === 'All' ? (
          // Show tools grouped by section when "All" is selected
          <div className="space-y-12 mb-16">
            {categoryOrder.map(category => {
              const categoryTools = toolsByCategory[category] || []
              if (categoryTools.length === 0) return null
              
              return (
                <section key={category} className="scroll-mt-24">
                  <div className="flex items-center gap-3 mb-6">
                    {category === 'Calculators' && <Calculator className="w-6 h-6 text-primary-600" />}
                    {category === 'Reference' && <FlaskConical className="w-6 h-6 text-primary-600" />}
                    {category === 'Workflow' && <Workflow className="w-6 h-6 text-primary-600" />}
                    <h2 className="text-2xl font-bold text-gray-900">{category}</h2>
                    <span className="text-sm text-gray-500">({categoryTools.length} {categoryTools.length === 1 ? 'tool' : 'tools'})</span>
                  </div>
                  {category === 'Calculators' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Conversion and calculation tools for grit sizes, polishing times, and other metallographic parameters.
                    </p>
                  )}
                  {category === 'Reference' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Reference tools to help you select the right materials and reagents for your preparation work.
                    </p>
                  )}
                  {category === 'Workflow' && (
                    <p className="text-gray-600 mb-6 max-w-3xl">
                      Tools to help you manage, organize, and optimize your sample preparation workflow.
                    </p>
                  )}
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    {categoryTools.map((tool, index) => (
                      <AnimatedCard key={tool.slug} index={index} animation="fadeInUp" duration={500}>
                        <div className="card hover:border-gray-300 group text-center">
                        <div className="text-5xl mb-4">{tool.icon}</div>
                        <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
                          {tool.title}
                        </h3>
                        <p className="text-gray-600 text-sm leading-relaxed mb-4">
                          {tool.description}
                        </p>
                        {tool.external ? (
                          <Link 
                            href={tool.href || '#'}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="btn-primary inline-block"
                          >
                            Use Tool →
                          </Link>
                        ) : (
                          <Link 
                            href={`/tools/${tool.slug}`} 
                            className="btn-primary inline-block"
                          >
                            Use Tool →
                          </Link>
                        )}
                        </div>
                      </AnimatedCard>
                    ))}
                  </div>
                </section>
              )
            })}
          </div>
        ) : (
          // Show filtered tools in grid when a specific category is selected
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-16">
            {filteredTools.map((tool, index) => (
              <AnimatedCard key={tool.slug} index={index} animation="fadeInUp" duration={500}>
                <div className="card hover:border-gray-300 group text-center">
                <div className="text-5xl mb-4">{tool.icon}</div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">
                  {tool.title}
                </h3>
                <p className="text-gray-600 text-sm leading-relaxed mb-4">
                  {tool.description}
                </p>
                {tool.external ? (
                  <Link 
                    href={tool.href || '#'}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="btn-primary inline-block"
                  >
                    Use Tool →
                  </Link>
                ) : (
                  <Link 
                    href={`/tools/${tool.slug}`} 
                    className="btn-primary inline-block"
                  >
                    Use Tool →
                  </Link>
                )}
                </div>
              </AnimatedCard>
            ))}
          </div>
        )}

        {filteredTools.length === 0 && (
          <div className="text-center py-12">
            <p className="text-gray-600">No tools found matching your search.</p>
          </div>
        )}

        {/* Featured Tool */}
        <div className="mt-16 bg-primary-600 text-white rounded-lg p-8">
          <div className="flex flex-col md:flex-row items-center gap-6">
            <div className="text-6xl">📋</div>
            <div className="flex-1">
              <h2 className="text-2xl font-bold mb-3 text-white">Procedure Tool</h2>
              <p className="text-primary-100 mb-4">
                Our comprehensive procedure management tool lets you save, organize, and get 
                personalized recommendations for your preparation methods. Track your procedures, 
                get product suggestions, and optimize your workflow.
              </p>
              <Link 
                href="https://materialsprep.com"
                target="_blank"
                rel="noopener noreferrer"
                className="bg-white text-primary-600 px-6 py-2.5 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl hover:scale-105"
              >
                Try Procedure Tool Free →
              </Link>
            </div>
          </div>
        </div>

        {/* CTA Section */}
        <div className="mt-12 bg-gray-50 rounded-lg p-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Looking for More Resources?</h2>
          <p className="text-gray-700 mb-6">
            Check out our comprehensive guides and downloadable resources.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/guides" className="btn-primary">
              Browse Guides
            </Link>
            <Link href="/resources" className="btn-secondary">
              View Resources
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

