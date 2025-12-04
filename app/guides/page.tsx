'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState } from 'react'
import { ChevronRight, Scissors, Layers, Gem, FlaskConical, Box, Search } from 'lucide-react'

const guides = [
  {
    title: 'Stainless Steel Preparation',
    slug: 'stainless-steel-preparation',
    description: 'Complete guide to preparing stainless steel samples for metallographic analysis, including sectioning, mounting, grinding, polishing, and etching techniques.',
    category: 'Material-Specific',
    readTime: '15 min read',
    microstructureImage: '/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG',
  },
  {
    title: 'Aluminum Sample Preparation',
    slug: 'aluminum-sample-preparation',
    description: 'Best practices for preparing aluminum samples without smearing or deformation. Learn proper techniques for soft materials and avoid common pitfalls.',
    category: 'Material-Specific',
    readTime: '12 min read',
    microstructureImage: '/images/microstructures/6061-Aluminum.jpg',
  },
  {
    title: 'Sectioning',
    slug: 'sectioning',
    description: 'Learn proper sample sectioning techniques including saw selection, cutting parameters, and minimizing damage during the cutting process.',
    category: 'Process',
    readTime: '8 min read',
    processOrder: 1,
    processIcon: Scissors,
  },
  {
    title: 'Mounting',
    slug: 'mounting',
    description: 'Comprehensive guide to mounting procedures including compression mounting, castable mounting, and selecting appropriate mounting materials.',
    category: 'Process',
    readTime: '10 min read',
    processOrder: 2,
    processIcon: Box,
  },
  {
    title: 'Grinding Techniques',
    slug: 'grinding-techniques',
    description: 'Master the art of grinding with proper grit selection, pressure control, and technique. Learn progressive grinding methods for optimal surface quality.',
    category: 'Process',
    readTime: '18 min read',
    processOrder: 3,
    processIcon: Layers,
  },
  {
    title: 'Polishing Methods',
    slug: 'polishing-methods',
    description: 'Learn effective polishing techniques for different materials and applications. Covers diamond polishing, oxide polishing, and final polishing strategies.',
    category: 'Process',
    readTime: '20 min read',
    processOrder: 4,
    processIcon: Gem,
  },
  {
    title: 'Etching Procedures',
    slug: 'etching-procedures',
    description: 'Comprehensive guide to etching techniques, reagent selection, and application methods. Learn how to reveal microstructures effectively and safely.',
    category: 'Process',
    readTime: '16 min read',
    processOrder: 5,
    processIcon: FlaskConical,
  },
  {
    title: 'Troubleshooting Common Issues',
    slug: 'troubleshooting-common-issues',
    description: 'Solutions to common problems in metallographic sample preparation including scratches, contamination, relief, and poor contrast issues.',
    category: 'Troubleshooting',
    readTime: '14 min read',
  },
  {
    title: 'Hardness Testing Preparation',
    slug: 'hardness-testing-preparation',
    description: 'Specialized preparation techniques for samples that will undergo hardness testing. Ensure accurate results with proper surface preparation.',
    category: 'Application-Specific',
    readTime: '8 min read',
  },
  {
    title: 'Copper and Copper Alloys',
    slug: 'copper-alloys-preparation',
    description: 'Preparation methods for copper and its alloys, including brass and bronze. Learn techniques to avoid smearing and reveal true microstructures.',
    category: 'Material-Specific',
    readTime: '11 min read',
    microstructureImage: '/images/microstructures/Tough pitch copper, ASTM-30 200X.JPG',
  },
  {
    title: 'Titanium Preparation',
    slug: 'titanium-preparation',
    description: 'Specialized techniques for preparing titanium samples, including handling reactive surfaces and proper etching methods for alpha and beta phases.',
    category: 'Material-Specific',
    readTime: '13 min read',
    microstructureImage: '/images/microstructures/Titanium+ZrB2, 400X (DIC).JPG',
  },
  {
    title: 'Carbon Steel Preparation',
    slug: 'carbon-steel-preparation',
    description: 'Complete procedures for preparing carbon steel samples, from low to high carbon content. Covers proper etching for pearlite and ferrite structures.',
    category: 'Material-Specific',
    readTime: '12 min read',
    microstructureImage: '/images/microstructures/Ferrite-Pearlite steel.JPG',
  },
  {
    title: 'Quality Control and Inspection',
    slug: 'quality-control-inspection',
    description: 'Learn how to evaluate sample quality, identify preparation artifacts, and ensure your samples meet industry standards for metallographic analysis.',
    category: 'Application-Specific',
    readTime: '15 min read',
  },
]

export default function GuidesPage() {
  const categories = ['All', ...Array.from(new Set(guides.map(g => g.category)))]
  const [selectedCategory, setSelectedCategory] = useState('All')
  const [searchQuery, setSearchQuery] = useState('')
  
  // Sort guides: Process guides by processOrder, then others by title
  const sortedGuides = [...guides].sort((a, b) => {
    if (a.category === 'Process' && b.category === 'Process') {
      return (a.processOrder || 0) - (b.processOrder || 0)
    }
    if (a.category === 'Process') return -1
    if (b.category === 'Process') return 1
    return a.title.localeCompare(b.title)
  })
  
  const filteredGuides = sortedGuides.filter(guide => {
    const matchesCategory = selectedCategory === 'All' || guide.category === selectedCategory
    const matchesSearch = searchQuery === '' || 
      guide.title.toLowerCase().includes(searchQuery.toLowerCase())
    return matchesCategory && matchesSearch
  })
  
  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-8">
          <h1 className="text-3xl md:text-4xl font-bold mb-2 text-gray-900">Sample Preparation Guides</h1>
        </div>

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
              onClick={() => setSelectedCategory(category)}
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

        {/* Guides Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
          {filteredGuides.map(guide => (
            <Link 
              key={guide.slug}
              href={`/guides/${guide.slug}`}
              className="card hover:border-gray-300 group"
            >
              <div className="flex items-start justify-between mb-3">
                <div className="flex items-center gap-2">
                  {guide.category === 'Material-Specific' && guide.microstructureImage && (
                    <div className="relative w-8 h-8 flex-shrink-0" style={{ clipPath: 'polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%)' }}>
                      <Image
                        src={guide.microstructureImage}
                        alt={`${guide.title} microstructure`}
                        fill
                        className="object-cover"
                      />
                    </div>
                  )}
                  {guide.category === 'Process' && guide.processIcon && (
                    <guide.processIcon className="w-5 h-5 text-primary-600 flex-shrink-0" />
                  )}
                  <span className="text-xs font-semibold text-primary-600 uppercase tracking-wide">
                    {guide.category}
                  </span>
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
          ))}
        </div>

        {filteredGuides.length === 0 && (
          <div className="text-center py-12">
            <p className="text-gray-600">No guides found in this category.</p>
          </div>
        )}

        {/* CTA Section */}
        <div className="mt-20">
          <div className="max-w-3xl mx-auto text-center">
            <h2 className="text-4xl font-bold mb-4 text-gray-900">Save and Organize Your Procedures</h2>
            <p className="text-xl mb-4 text-gray-600 leading-relaxed">
              Use our free procedure tool to save, organize, and get personalized recommendations for your preparation methods.
            </p>
            <p className="text-base mb-8 text-gray-500">
              Track your procedures, get product suggestions, and optimize your workflow
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link 
                href="https://materialsprep.com"
                target="_blank"
                rel="noopener noreferrer"
                className="btn-primary"
              >
                Try Procedure Tool Free
              </Link>
              <Link 
                href="/resources"
                className="btn-tertiary"
              >
                View Resources
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

