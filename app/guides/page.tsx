'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState, useEffect } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { ChevronRight, Scissors, Layers, Gem, FlaskConical, Box, Search, BookOpen, AlertCircle } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'

// Guide categories in order
const categoryOrder = ['Basics', 'Process', 'Material-Specific', 'Application-Specific', 'Troubleshooting']

const guides = [
  // Basics Section
  {
    title: 'Introduction to Metallography',
    slug: 'introduction-to-metallography',
    description: 'Learn the fundamentals of metallography, including what it is, why it matters, and how it\'s used in materials science and engineering.',
    category: 'Basics',
    readTime: '10 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 1,
  },
  {
    title: 'Purpose and Applications',
    slug: 'purpose-and-applications',
    description: 'Discover the various applications of metallography in quality control, failure analysis, research, and materials development.',
    category: 'Basics',
    readTime: '10 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 2,
  },
  {
    title: 'History of Metallography',
    slug: 'history-of-metallography',
    description: 'Explore the evolution of metallography from its origins to modern techniques. Understand how the field has developed over time.',
    category: 'Basics',
    readTime: '8 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 3,
  },
  {
    title: 'Equipment Overview',
    slug: 'equipment-overview',
    description: 'Learn about the essential equipment used in metallography, from sectioning equipment to microscopes. Understand what equipment you need for metallographic sample preparation.',
    category: 'Basics',
    readTime: '12 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 4,
  },
  {
    title: 'Safety Fundamentals',
    slug: 'safety-fundamentals',
    description: 'Essential safety practices for metallography laboratories. Learn about chemical safety, equipment safety, personal protective equipment, and safe work practices.',
    category: 'Basics',
    readTime: '15 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 5,
  },
  {
    title: 'Common Misconceptions',
    slug: 'common-misconceptions',
    description: 'Learn about common mistakes and misconceptions beginners make in metallography. Avoid these pitfalls and develop better metallographic practices.',
    category: 'Basics',
    readTime: '10 min read',
    difficulty: 'Beginner',
    icon: BookOpen,
    basicsOrder: 6,
  },
  // Process Guides (Overviews)
  {
    title: 'Sectioning',
    slug: 'sectioning',
    description: 'Overview of sample sectioning techniques including saw selection, cutting parameters, and minimizing damage during the cutting process.',
    category: 'Process',
    readTime: '8 min read',
    processOrder: 1,
    processIcon: Scissors,
    difficulty: 'Beginner',
  },
  {
    title: 'Mounting',
    slug: 'mounting',
    description: 'Overview of mounting procedures including compression mounting, castable mounting, and selecting appropriate mounting materials.',
    category: 'Process',
    readTime: '10 min read',
    processOrder: 2,
    processIcon: Box,
    difficulty: 'Beginner',
  },
  {
    title: 'Grinding Techniques',
    slug: 'grinding-techniques',
    description: 'Overview of grinding with proper grit selection, pressure control, and technique. Learn progressive grinding methods for optimal surface quality.',
    category: 'Process',
    readTime: '18 min read',
    processOrder: 3,
    processIcon: Layers,
    difficulty: 'Beginner',
  },
  {
    title: 'Polishing Methods',
    slug: 'polishing-methods',
    description: 'Overview of polishing techniques for different materials and applications. Covers diamond polishing, oxide polishing, and final polishing strategies.',
    category: 'Process',
    readTime: '20 min read',
    processOrder: 4,
    processIcon: Gem,
    difficulty: 'Intermediate',
  },
  {
    title: 'Etching Procedures',
    slug: 'etching-procedures',
    description: 'Overview of etching techniques, reagent selection, and application methods. Learn how to reveal microstructures effectively and safely.',
    category: 'Process',
    readTime: '16 min read',
    processOrder: 5,
    processIcon: FlaskConical,
    difficulty: 'Intermediate',
  },
  {
    title: 'Microstructural Analysis',
    slug: 'microstructural-analysis',
    description: 'Complete guide to preparing samples for microscopy, choosing the right microscope, and interpreting common microstructures in metals and alloys.',
    category: 'Process',
    readTime: '18 min read',
    processOrder: 6,
    processIcon: FlaskConical,
    difficulty: 'Intermediate',
  },
  // Material-Specific Guides (In-depth)
  {
    title: 'Stainless Steel Preparation',
    slug: 'stainless-steel-preparation',
    description: 'Complete in-depth guide to preparing stainless steel samples for metallographic analysis, including sectioning, mounting, grinding, polishing, and etching techniques.',
    category: 'Material-Specific',
    readTime: '15 min read',
    microstructureImage: '/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG',
    difficulty: 'Intermediate',
  },
  {
    title: 'Aluminum Sample Preparation',
    slug: 'aluminum-sample-preparation',
    description: 'In-depth guide for preparing aluminum samples without smearing or deformation. Learn proper techniques for soft materials and avoid common pitfalls.',
    category: 'Material-Specific',
    readTime: '12 min read',
    microstructureImage: '/images/microstructures/6061-Aluminum.jpg',
    difficulty: 'Intermediate',
  },
  {
    title: 'Copper and Copper Alloys',
    slug: 'copper-alloys-preparation',
    description: 'In-depth preparation methods for copper and its alloys, including brass and bronze. Learn techniques to avoid smearing and reveal true microstructures.',
    category: 'Material-Specific',
    readTime: '11 min read',
    microstructureImage: '/images/microstructures/Tough pitch copper, ASTM-30 200X.JPG',
    difficulty: 'Intermediate',
  },
  {
    title: 'Titanium Preparation',
    slug: 'titanium-preparation',
    description: 'In-depth specialized techniques for preparing titanium samples, including handling reactive surfaces and proper etching methods for alpha and beta phases.',
    category: 'Material-Specific',
    readTime: '13 min read',
    microstructureImage: '/images/microstructures/Titanium+ZrB2, 400X (DIC).JPG',
    difficulty: 'Advanced',
  },
  {
    title: 'Carbon Steel Preparation',
    slug: 'carbon-steel-preparation',
    description: 'In-depth procedures for preparing carbon steel samples, from low to high carbon content. Covers proper etching for pearlite and ferrite structures.',
    category: 'Material-Specific',
    readTime: '12 min read',
    microstructureImage: '/images/microstructures/Ferrite-Pearlite steel.JPG',
    difficulty: 'Intermediate',
  },
  // Application-Specific Guides (In-depth)
  {
    title: 'Failure Analysis',
    slug: 'failure-analysis',
    description: 'Learn about failure analysis techniques in metallography, including fracture analysis, root cause investigation, and material failure mechanisms.',
    category: 'Application-Specific',
    readTime: '20 min read',
    difficulty: 'Advanced',
  },
  {
    title: 'Hardness Testing Preparation',
    slug: 'hardness-testing-preparation',
    description: 'In-depth specialized preparation techniques for samples that will undergo hardness testing. Ensure accurate results with proper surface preparation.',
    category: 'Application-Specific',
    readTime: '8 min read',
    difficulty: 'Intermediate',
  },
  {
    title: 'Quality Control and Inspection',
    slug: 'quality-control-inspection',
    description: 'In-depth guide on how to evaluate sample quality, identify preparation artifacts, and ensure your samples meet industry standards for metallographic analysis.',
    category: 'Application-Specific',
    readTime: '15 min read',
    difficulty: 'Advanced',
  },
  // Troubleshooting
  {
    title: 'Troubleshooting Common Issues',
    slug: 'troubleshooting-common-issues',
    description: 'Comprehensive solutions to common problems in metallographic sample preparation including scratches, contamination, relief, and poor contrast issues.',
    category: 'Troubleshooting',
    readTime: '14 min read',
    difficulty: 'Intermediate',
    icon: AlertCircle,
  },
]

export default function GuidesPage() {
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
    <div className="py-12">
      <div className="container-custom">
        {/* Header Section */}
        <div className="mb-8">
          <h1 className="text-3xl md:text-4xl font-bold mb-2 text-gray-900">Sample Preparation Guides</h1>
          <p className="text-lg text-gray-600 mt-2">
            Comprehensive guides organized by topic: Start with <strong>Basics</strong> for fundamentals, 
            then explore <strong>Process</strong> overviews, and dive deep into <strong>Material-Specific</strong> 
            and <strong>Application-Specific</strong> guides for advanced techniques.
          </p>
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
                      <AnimatedCard key={guide.slug} index={index} animation="fadeInUp" duration={500}>
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
                                />
                              </div>
                            )}
                            {(guide.category === 'Process' && guide.processIcon) && (
                              <guide.processIcon className="w-5 h-5 text-primary-600 flex-shrink-0" />
                            )}
                            {(guide.category === 'Basics' || guide.category === 'Troubleshooting') && guide.icon && (
                              <guide.icon className="w-5 h-5 text-primary-600 flex-shrink-0" />
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
              <AnimatedCard key={guide.slug} index={index} animation="fadeInUp" duration={500}>
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
                        />
                      </div>
                    )}
                    {(guide.category === 'Process' && guide.processIcon) && (
                      <guide.processIcon className="w-5 h-5 text-primary-600 flex-shrink-0" />
                    )}
                    {(guide.category === 'Basics' || guide.category === 'Troubleshooting') && guide.icon && (
                      <guide.icon className="w-5 h-5 text-primary-600 flex-shrink-0" />
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
            ))}
          </div>
        )}

        {filteredGuides.length === 0 && (
          <div className="text-center py-12">
            <p className="text-gray-600">No guides found matching your search.</p>
          </div>
        )}

        {/* CTA Section */}
        <div className="mt-20">
          <div className="text-center">
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

