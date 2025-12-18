'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoriesForCategory, getFeaturedEquipmentBySubcategory } from '@/lib/supabase'
import type { SubcategoryMetadata, Equipment } from '@/lib/supabase'
import { Scissors, Package, Gauge, Microscope, HardDrive, Home, ChevronRight, ArrowLeft, CheckCircle2, BookOpen, ShoppingBag } from 'lucide-react'
import AnimatedCard from '@/components/AnimatedCard'
import LoadingSpinner from '@/components/LoadingSpinner'
import { getEquipmentImageUrl } from '@/lib/storage'

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

const categoryDescriptions: Record<string, string> = {
  'sectioning': 'Cutting equipment for sectioning samples, including precision wafering cutters and abrasive cutters.',
  'mounting': 'Mounting presses and systems for compression and castable mounting.',
  'grinding-polishing': 'Grinders, polishers, and automated systems for sample preparation.',
  'microscopy': 'Metallurgical and stereo microscopes for microstructure analysis.',
  'hardness-testing': 'Rockwell, microhardness, and Brinell testers for material hardness evaluation.',
  'lab-furniture': 'Workbenches, storage, and supporting equipment for the metallography lab.',
}

// Category-specific technical content
const categoryTechnicalContent: Record<string, {
  heroHeadline: string
  heroDescription: string
  useCases: Array<{ title: string, description: string, anchor?: string | null }>
  processDescription: string
  keySpecifications: string[]
  guideSlug?: string
  guideTitle?: string
  heroImage?: string
  processImage?: string
}> = {
  'mounting': {
    heroHeadline: 'Mounting Equipment',
    heroDescription: 'Compression and castable mounting presses for embedding metallographic samples in resin. Supports hot compression mounting (150-200°C, up to 4000 PSI) and cold castable mounting (room temperature, vacuum/pressure options).',
    useCases: [
      { title: 'Compression Mounting', description: 'Hot mounting at 150-200°C under 2000-4000 PSI pressure. Used for metals, ceramics, and high-volume production. Provides excellent edge retention and dimensional stability.', anchor: 'compression-mounting' },
      { title: 'Castable Mounting', description: 'Room temperature mounting using epoxy or acrylic resins. Required for heat-sensitive materials (polymers, electronic components, low-melting alloys). Vacuum systems remove air bubbles.', anchor: 'castable-mounting' },
      { title: 'Pressure Mounting', description: 'Castable mounting with applied pressure (up to 60 PSI) to improve resin penetration and reduce porosity. Suitable for porous materials and complex geometries.', anchor: 'castable-mounting' },
      { title: 'UV Curing Systems', description: 'Fast-curing mounting systems using UV-curable resins. Curing times of 5-15 minutes. Ideal for rapid turnaround and small sample batches.', anchor: 'castable-mounting' },
    ],
    processDescription: 'Mounting embeds specimens in thermosetting or castable resins to create standardized, handleable samples. Compression mounting uses heat (150-200°C) and pressure (2000-4000 PSI) for rapid curing (5-10 minutes). Castable mounting cures at room temperature over 4-24 hours. Selection depends on material thermal sensitivity, sample geometry, throughput requirements, and edge retention needs.',
    keySpecifications: [
      'Pressure range: 0-4000 PSI (compression) or 0-60 PSI (castable pressure)',
      'Temperature range: 20-200°C (compression heating)',
      'Chamber sizes: 25mm to 50mm diameter typical',
      'Curing time: 5-10 min (compression) or 4-24 hours (castable)',
      'Vacuum capability: 10-50 mbar for bubble removal',
    ],
    guideSlug: 'mounting',
    guideTitle: 'Mounting Guide',
    heroImage: '/images/equipment/compression mounting/hydraulic mounting press/tp-7500s/tp-7500s-cover.webp',
    processImage: '/images/consumables/mounting-cover.webp',
  },
  'sectioning': {
    heroHeadline: 'Sectioning Equipment',
    heroDescription: 'Two distinct sectioning methods: precision wafering systems using diamond/CBN blades for minimal deformation, and abrasive sectioning systems using reinforced wheels for high-throughput cutting.',
    useCases: [
      { title: 'Precision Wafering', description: 'Diamond or CBN blades with controlled feed rates (0.001-0.1 mm/min). Minimal deformation (<10 μm), low heat generation. Used for delicate materials, small samples, and research applications. Gravity feed and table feed systems available.', anchor: 'precision-wafering' },
      { title: 'Abrasive Sectioning', description: 'Reinforced abrasive wheels cutting at 1000-3000 RPM. Higher material removal rates, suitable for larger samples and production environments. Typical cut times: 30 seconds to 5 minutes. Manual and automated systems available.', anchor: 'abrasive-sectioning' },
      { title: 'Automated Sectioning', description: 'Programmable feed rates, force control, and multiple sample capacity. Reduces operator time and ensures consistent cutting parameters across batches. Available in both precision wafering and abrasive sectioning systems.', anchor: null },
    ],
    processDescription: 'Sectioning uses two distinct methods: (1) Precision wafering employs diamond or CBN blades with slow feed rates (0.001-0.1 mm/min) to minimize deformation (<10 μm) and heat-affected zones. Ideal for delicate materials, ceramics, and research. (2) Abrasive sectioning uses reinforced abrasive wheels at higher speeds (1000-3000 RPM) for faster cutting (30 sec - 5 min) with acceptable deformation for most metals. Selection depends on material hardness, sample size, deformation tolerance, and throughput requirements.',
    keySpecifications: [
      'Blade sizes: 4-12 inch diameter',
      'Cutting capacity: 1-150 mm typical',
      'Feed rates: 0.001-5 mm/min (precision) or 0.1-2 mm/s (abrasive)',
      'Coolant: Water-based or oil-based cutting fluids',
      'Automation: Programmable cycles, force control, multi-sample holders',
    ],
    guideSlug: 'sectioning',
    guideTitle: 'Sectioning Guide',
    heroImage: '/images/equipment/precision wafering/gravity feed precision cutters/pico-155s/pico-155s-cover.webp',
  },
  'grinding-polishing': {
    heroHeadline: 'Grinding & Polishing Equipment',
    heroDescription: 'Manual and automated grinding/polishing systems for metallographic sample preparation. Progressive material removal from rough grinding (120-320 grit) through final polishing (0.05 μm diamond).',
    useCases: [
      { title: 'Manual Systems', description: 'Single-station grinders/polishers with 8-12 inch platens. Operator-controlled force and timing. Suitable for low-volume labs, research, and training applications.', anchor: null },
      { title: 'Semi-Automated', description: 'Programmable force, speed, and time per step. Multi-station capability (2-6 stations). Reduces operator intervention while maintaining flexibility for different materials.', anchor: null },
      { title: 'Fully Automated', description: 'Complete automated cycles with controlled removal rates. Multi-sample processing (6-12 samples). High-throughput production environments and standardized procedures.', anchor: null },
    ],
    processDescription: 'Grinding removes sectioning damage using SiC papers (120-1200 grit) or diamond discs. Polishing progressively removes grinding scratches using diamond suspensions (9 μm to 0.05 μm) on polishing cloths. Manual systems require operator skill for consistent results. Automated systems control force (5-50 N), speed (50-600 RPM), and time per step to ensure repeatable surface quality. Selection depends on throughput, material types, and consistency requirements.',
    keySpecifications: [
      'Platen sizes: 8, 10, or 12 inch diameter',
      'Speed range: 50-600 RPM',
      'Force range: 5-200 N per sample',
      'Stations: 1-12 samples per system',
      'Automation: Programmable cycles, force control, timing per step',
    ],
    guideSlug: 'grinding-polishing',
    guideTitle: 'Grinding & Polishing Guide',
    heroImage: '/images/equipment/grinding & polishing/manual grinder polishers/nano-2000s/nano-2000s-cover.webp',
  },
  'microscopy': {
    heroHeadline: 'Metallurgical Microscopes',
    heroDescription: 'Upright and inverted metallurgical microscopes for microstructure analysis. Brightfield, darkfield, polarized light, and DIC imaging modes. Magnification ranges from 50x to 2000x.',
    useCases: [
      { title: 'Metallurgical Microscopes', description: 'Upright or inverted designs with reflected light illumination. Standard magnification: 50x-1000x. Used for microstructure examination, phase identification, and grain size analysis.' },
      { title: 'Stereo Microscopes', description: 'Low magnification (5x-100x) for sample inspection, defect identification, and macro-scale features. Essential for quality control and sample selection.' },
      { title: 'Digital Imaging', description: 'Integrated cameras and software for image capture, measurement, and documentation. Supports ASTM grain size measurements and phase area fraction analysis.' },
    ],
    processDescription: 'Metallurgical microscopes use reflected light to examine polished and etched samples. Upright microscopes (epi-illumination) are standard for most applications. Inverted designs allow examination of large or irregular samples. Magnification ranges from 50x (overview) to 2000x (high-resolution detail). Imaging modes include brightfield (standard), darkfield (enhanced contrast), polarized light (grain orientation), and DIC (topographic detail). Digital cameras enable image capture, measurement, and documentation for reports and databases.',
    keySpecifications: [
      'Magnification: 50x-2000x typical range',
      'Objectives: 5x, 10x, 20x, 50x, 100x',
      'Illumination: LED or halogen, brightfield/darkfield/DIC',
      'Camera: 5-24 MP resolution',
      'Software: Image capture, measurement, grain size analysis',
    ],
    heroImage: '/images/equipment/microscopy/metallurgical microscopes/im-5000/im-5000-cover.webp',
  },
  'hardness-testing': {
    heroHeadline: 'Hardness Testing Equipment',
    heroDescription: 'Rockwell, Vickers, Knoop, and Brinell hardness testers for material property evaluation. Manual and automated systems meeting ASTM and ISO standards.',
    useCases: [
      { title: 'Rockwell Testing', description: 'Indentation depth measurement under major and minor loads. Scales: HRC (hardened steel), HRB (soft metals), HRA (thin materials). Loads: 60, 100, or 150 kgf. Fast testing (10-15 seconds per measurement).' },
      { title: 'Microhardness (Vickers/Knoop)', description: 'Optical measurement of indentation diagonal. Loads: 1 gf to 100 kgf. Vickers for general microhardness; Knoop for thin coatings and brittle materials. Measurement time: 30-60 seconds.' },
      { title: 'Brinell Testing', description: 'Large indenter (10 mm ball) for coarse-grained materials and castings. Loads: 500-3000 kgf. Suitable for materials with heterogeneous microstructures.' },
    ],
    processDescription: 'Hardness testing measures resistance to permanent deformation. Rockwell uses depth measurement for rapid testing (10-15 sec). Vickers/Knoop use optical measurement of indentation size for precise microhardness (30-60 sec). Brinell uses large indenters for coarse-grained materials. Selection depends on material hardness range, sample size, required precision, and testing standards (ASTM E18, E384, E10). Automated systems provide consistent load application, measurement, and data recording.',
    keySpecifications: [
      'Rockwell: 60-150 kgf loads, HRC/HRB/HRA scales',
      'Vickers/Knoop: 1 gf - 100 kgf loads',
      'Brinell: 500-3000 kgf loads, 10 mm ball',
      'Automation: Programmable test cycles, auto-measurement, data export',
      'Standards: ASTM E18, E384, E10; ISO 6506, 6507, 6508',
    ],
    heroImage: '/images/equipment/hardness testing/rockwell tester/omega-auto-rt/omega-auto-rt-cover.webp',
  },
  'lab-furniture': {
    heroHeadline: 'Lab Furniture',
    heroDescription: 'Workbenches, storage cabinets, fume hoods, and safety equipment for metallography laboratories. Chemical-resistant surfaces and ergonomic designs.',
    useCases: [
      { title: 'Workbenches', description: 'Chemical-resistant surfaces (epoxy resin, stainless steel) for sample preparation. Integrated sinks, electrical outlets, and storage. Heights: 30-36 inches for ergonomic operation.' },
      { title: 'Fume Hoods', description: 'Ventilated enclosures for chemical etching and handling. Airflow: 100-150 fpm face velocity. Sash heights and widths accommodate various sample sizes.' },
      { title: 'Storage', description: 'Cabinets for consumables, tools, and prepared samples. Chemical-resistant materials for corrosive environments. Organized layouts for efficient workflow.' },
    ],
    processDescription: 'Lab furniture provides organized, safe workspaces for metallographic sample preparation. Workbenches require chemical-resistant surfaces (epoxy resin or stainless steel) to withstand acids, bases, and solvents used in etching. Fume hoods provide ventilation for chemical handling and etching operations. Storage solutions organize consumables, tools, and prepared samples. Ergonomic design (30-36 inch bench height) reduces operator fatigue during extended preparation sessions.',
    keySpecifications: [
      'Workbench heights: 30-36 inches',
      'Surface materials: Epoxy resin, stainless steel, or chemical-resistant laminates',
      'Fume hood airflow: 100-150 fpm face velocity',
      'Storage capacity: Varies by cabinet size and configuration',
      'Electrical: GFCI outlets, adequate amperage for equipment',
    ],
  },
}

export default function EquipmentCategoryPage({ params }: { params: Promise<{ category: string }> }) {
  const { category } = use(params)
  const [subcategories, setSubcategories] = useState<SubcategoryMetadata[]>([])
  const [featuredItems, setFeaturedItems] = useState<Record<string, Equipment[]>>({})
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const fetchData = async () => {
      try {
        // Fetch subcategories for this category
        const subcats = await getSubcategoriesForCategory(category, 'equipment')
        setSubcategories(subcats)

        // Fetch featured items for each subcategory
        const featured: Record<string, Equipment[]> = {}
        for (const subcat of subcats) {
          const items = await getFeaturedEquipmentBySubcategory(category, subcat.subcategory_key, 6)
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
  const description = categoryDescriptions[category] || 'Browse equipment in this category.'
  const technicalContent = categoryTechnicalContent[category] || {
    heroHeadline: `${categoryLabel} Equipment`,
    heroDescription: description,
    useCases: [],
    processDescription: description,
    keySpecifications: [],
  }

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

  // Generate structured data for SEO and AI bots
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: `${categoryLabel} Equipment`,
    description: technicalContent.heroDescription,
    url: `https://materialographic.com/equipment/${category}`,
    mainEntity: {
      '@type': 'ItemList',
      itemListElement: subcategories.flatMap((subcat, index) => {
        const items = featuredItems[subcat.subcategory_key] || []
        return items.map((item, itemIndex) => ({
          '@type': 'ListItem',
          position: index * 10 + itemIndex + 1,
          item: {
            '@type': 'Product',
            name: item.name,
            description: item.description,
            identifier: item.item_id,
            image: item.image_url ? getEquipmentImageUrl(item.image_url) : undefined,
            url: `https://materialographic.com/equipment/${category}/${subcat.subcategory_key}/${item.slug || item.item_id?.toLowerCase()}`,
          },
        }))
      }),
    },
  }

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
      />
      {/* Hero Section - Full Width with Dark Blue Gradient */}
      <section className="w-full bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-12 sm:py-16 md:py-20 mb-12 sm:mb-16 md:mb-20 rounded-b-3xl">
        <div className="container-custom">
          {/* Back Button in Nav Area */}
          <div className="mb-8 sm:mb-10">
            <Link 
              href="/equipment"
              className="inline-flex items-center gap-2 text-sm text-gray-300 hover:text-white transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              Back to All Equipment
            </Link>
          </div>
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12 items-start">
            <div>
              <div className="flex items-center gap-3 mb-4">
                <IconComponent className="w-8 h-8 sm:w-10 sm:h-10 text-gray-300" />
                <span className="text-sm font-semibold text-gray-300 uppercase tracking-wide">
                  {categoryLabel} Equipment
                </span>
              </div>
              <h1 className="text-3xl sm:text-4xl font-bold text-white mb-4 sm:mb-6 leading-tight">
                {technicalContent.heroHeadline}
              </h1>
              <p className="text-base sm:text-lg text-gray-300 mb-6 sm:mb-8 leading-relaxed">
                {technicalContent.heroDescription}
              </p>
              
              {/* Hero CTAs */}
              <div className="flex flex-col sm:flex-row gap-4">
                {technicalContent.guideSlug && (
                  <Link
                    href={`/guides/${technicalContent.guideSlug}`}
                    className="bg-white/90 backdrop-blur-md text-gray-900 px-6 py-3 rounded-full font-semibold hover:bg-white transition-all inline-flex items-center justify-center gap-2 shadow-lg hover:shadow-xl border border-white/20"
                  >
                    <BookOpen className="w-5 h-5" />
                    {technicalContent.guideTitle || 'Guide'}
                  </Link>
                )}
                {category === 'sectioning' ? (
                  <Link
                    href="https://shop.metallographic.com/collections/cutting"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-primary-600/90 backdrop-blur-md text-white px-6 py-3 rounded-full font-semibold hover:bg-primary-600 transition-all inline-flex items-center justify-center gap-2 shadow-lg hover:shadow-xl border border-primary-500/30"
                  >
                    <ShoppingBag className="w-5 h-5" />
                    Shop Consumables
                  </Link>
                ) : (
                  <Link
                    href={`https://shop.metallographic.com/collections/${category}`}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-primary-600/90 backdrop-blur-md text-white px-6 py-3 rounded-full font-semibold hover:bg-primary-600 transition-all inline-flex items-center justify-center gap-2 shadow-lg hover:shadow-xl border border-primary-500/30"
                  >
                    <ShoppingBag className="w-5 h-5" />
                    Browse Products
                  </Link>
                )}
                <a
                  href="#equipment-section"
                  className="bg-white/10 backdrop-blur-md text-white px-6 py-3 rounded-full font-semibold hover:bg-white/20 transition-all inline-flex items-center justify-center gap-2 border-2 border-white/30 shadow-lg hover:shadow-xl"
                >
                  Browse Equipment
                </a>
              </div>
            </div>
            
            {/* Hero Image */}
            {technicalContent.heroImage && (
              <div className="relative w-full h-64 sm:h-80 lg:h-96 rounded-lg overflow-hidden p-4 sm:p-6">
                <Image
                  src={technicalContent.heroImage}
                  alt={`${categoryLabel} equipment example`}
                  fill
                  className="object-contain"
                  priority
                />
              </div>
            )}
          </div>
        </div>
      </section>

      <div className="container-custom">

        {/* Use Cases Section - Compact */}
        {technicalContent.useCases.length > 0 && (
          <section className="mb-8 sm:mb-10">
            <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-4 sm:mb-6">Applications & Use Cases</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
              {technicalContent.useCases.map((useCase, index) => (
                <div key={index} className="bg-gray-50 rounded-lg p-4 sm:p-5">
                  <h3 className="text-base sm:text-lg font-semibold text-gray-900 mb-2">{useCase.title}</h3>
                  <p className="text-sm text-gray-700 leading-relaxed mb-3">{useCase.description}</p>
                  {useCase.anchor && (
                    <a
                      href={`#${useCase.anchor}`}
                      onClick={(e) => {
                        e.preventDefault()
                        // Try to find element by the anchor ID first
                        let element = document.getElementById(useCase.anchor!)
                        
                        // If not found, try to find by data-category-type attribute
                        if (!element) {
                          const matchingElements = document.querySelectorAll(`[data-category-type="${useCase.anchor}"]`)
                          if (matchingElements.length > 0) {
                            element = matchingElements[0] as HTMLElement
                          }
                        }
                        
                        if (element) {
                          const offset = 100 // Account for fixed header
                          const elementPosition = element.getBoundingClientRect().top
                          const offsetPosition = elementPosition + window.pageYOffset - offset
                          window.scrollTo({
                            top: offsetPosition,
                            behavior: 'smooth'
                          })
                        }
                      }}
                      className="inline-flex items-center gap-1 text-xs sm:text-sm font-semibold text-primary-600 hover:text-primary-700 transition-colors cursor-pointer"
                    >
                      View Equipment
                      <ChevronRight className="w-3 h-3 sm:w-4 sm:h-4" />
                    </a>
                  )}
                </div>
              ))}
            </div>
          </section>
        )}

        {/* Equipment by Subcategory */}
        {subcategories.length > 0 ? (
          <section id="equipment-section" className="mb-12 sm:mb-16 md:mb-20 scroll-mt-24" itemScope itemType="https://schema.org/ItemList">
            <div className="mb-6 sm:mb-8">
              <h2 className="text-2xl sm:text-3xl font-bold text-gray-900">{categoryLabel} Equipment</h2>
            </div>

            <div className="space-y-12 sm:space-y-16">
              {subcategories.map((subcat, subcatIndex) => {
                const items = featuredItems[subcat.subcategory_key] || []
                // Create anchor ID from subcategory key
                const anchorId = subcat.subcategory_key.toLowerCase().replace(/\s+/g, '-')
                
                // Check if this is a manual or automated abrasive subcategory for sectioning
                const originalKey = subcat.subcategory_key.toLowerCase()
                const isManualAbrasive = originalKey.includes('manual-abrasive') || (originalKey.includes('manual') && category === 'sectioning')
                const isAutomatedAbrasive = originalKey.includes('automated-abrasive') || originalKey.includes('automated') || (originalKey.includes('automatic') && category === 'sectioning')
                
                // Add "Abrasive Cutters" suffix for manual/automated sectioning subcategories
                let displayLabel = subcat.subcategory_label
                if (category === 'sectioning' && (isManualAbrasive || isAutomatedAbrasive)) {
                  if (isManualAbrasive) {
                    displayLabel = 'Manual Abrasive Cutters'
                  } else if (isAutomatedAbrasive) {
                    displayLabel = 'Automated Abrasive Cutters'
                  }
                }
                
                // Determine category type for anchor matching
                let categoryType = null
                if (category === 'sectioning') {
                  if (isManualAbrasive || isAutomatedAbrasive || anchorId.includes('abrasive')) {
                    categoryType = 'abrasive-sectioning'
                  } else if (anchorId.includes('precision') || anchorId.includes('wafering')) {
                    categoryType = 'precision-wafering'
                  }
                }
                
                return (
                  <div 
                    key={subcat.id} 
                    id={anchorId} 
                    data-category-type={categoryType || undefined}
                    className="scroll-mt-24"
                  >
                    <div className="flex flex-col sm:flex-row sm:items-end sm:justify-between mb-6 sm:mb-8 gap-4">
                      <div className="flex-1">
                        <h3 className="text-xl sm:text-2xl md:text-3xl font-bold text-gray-900 mb-2 sm:mb-3">
                          {displayLabel}
                        </h3>
                        {subcat.description && (
                          <p className="text-sm sm:text-base text-gray-600 max-w-3xl leading-relaxed">
                            {subcat.description}
                          </p>
                        )}
                      </div>
                      {items.length > 0 && (
                        <Link
                          href={`/equipment/${category}/${subcat.subcategory_key}`}
                          className="inline-flex items-center gap-2 text-sm font-semibold text-primary-600 hover:text-primary-700 transition-colors whitespace-nowrap"
                        >
                          View All {subcat.subcategory_label}
                          <ChevronRight className="w-4 h-4" />
                        </Link>
                      )}
                    </div>

                    {items.length > 0 ? (
                      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8" itemScope itemType="https://schema.org/ItemList">
                        {items.map((item, itemIndex) => (
                          <article key={item.id} itemScope itemType="https://schema.org/Product" className="item-list-element">
                            <AnimatedCard index={itemIndex} animation="fadeInUp" duration={500}>
                              <Link 
                                href={`/equipment/${category}/${subcat.subcategory_key}/${item.slug || item.item_id?.toLowerCase()}`}
                                className="card hover:border-primary-300 hover:shadow-lg group p-6 sm:p-8 h-full flex flex-col transition-all duration-300"
                                itemProp="url"
                              >
                                {item.image_url && (
                                  <div className="relative w-full h-56 sm:h-64 mb-5 sm:mb-6 rounded-lg bg-gray-100">
                                    <Image
                                      src={getEquipmentImageUrl(item.image_url) || item.image_url}
                                      alt={item.name}
                                      fill
                                      className="object-contain !inset-2 sm:!inset-4"
                                      itemProp="image"
                                      sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
                                    />
                                  </div>
                                )}
                                <div className="flex-1 flex flex-col">
                                  <h4 className="text-lg sm:text-xl font-bold mb-2 text-gray-900 group-hover:text-primary-600 transition-colors" itemProp="name">
                                    {item.name}
                                  </h4>
                                  {item.item_id && (
                                    <p className="text-xs text-gray-500 mb-3 font-mono" itemProp="identifier">
                                      Item ID: {item.item_id}
                                    </p>
                                  )}
                                  {item.description && (
                                    <p className="text-gray-600 text-sm sm:text-base leading-relaxed mb-4 sm:mb-6 line-clamp-3 flex-1" itemProp="description">
                                      {item.description}
                                    </p>
                                  )}
                                  <span className="text-primary-600 font-semibold text-sm inline-flex items-center gap-2 group-hover:gap-3 transition-all mt-auto">
                                    View Specifications
                                    <ChevronRight className="w-4 h-4 sm:w-5 sm:h-5" />
                                  </span>
                                </div>
                              </Link>
                            </AnimatedCard>
                          </article>
                        ))}
                      </div>
                    ) : (
                      <div className="text-center py-12 bg-gray-50 rounded-lg border border-gray-200">
                        <p className="text-gray-600">No equipment found in this subcategory.</p>
                      </div>
                    )}
                  </div>
                )
              })}
            </div>
          </section>
        ) : (
          <section className="mb-12 sm:mb-16">
            <div className="text-center py-12 bg-gray-50 rounded-lg border border-gray-200">
              <p className="text-gray-600">No subcategories found for this category.</p>
            </div>
          </section>
        )}


        {/* Process Information Section */}
        <section className="mb-12 sm:mb-16 md:mb-20">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12">
            <div className="bg-gray-50 rounded-xl p-6 sm:p-8">
              <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-4 sm:mb-6">Process Overview</h2>
              <p className="text-base sm:text-lg text-gray-700 leading-relaxed mb-6">
                {technicalContent.processDescription}
              </p>
              {technicalContent.guideSlug && (
                <Link
                  href={`/guides/${technicalContent.guideSlug}`}
                  className="inline-flex items-center gap-2 text-primary-600 hover:text-primary-700 font-semibold"
                >
                  Detailed {technicalContent.guideTitle || 'guide'}
                  <ChevronRight className="w-5 h-5" />
                </Link>
              )}
            </div>
            
            {/* Key Specifications */}
            {technicalContent.keySpecifications.length > 0 && (
              <div className="bg-gray-50 rounded-xl p-6 sm:p-8">
                <h2 className="text-2xl sm:text-3xl font-bold text-gray-900 mb-4 sm:mb-6">Key Specifications</h2>
                <ul className="space-y-3">
                  {technicalContent.keySpecifications.map((spec, index) => (
                    <li key={index} className="flex items-start gap-3">
                      <CheckCircle2 className="w-5 h-5 text-primary-600 flex-shrink-0 mt-0.5" />
                      <span className="text-gray-700">{spec}</span>
                    </li>
                  ))}
                </ul>
              </div>
            )}
          </div>
          
          {/* Process Image */}
          {technicalContent.processImage && (
            <div className="mt-8 relative w-full h-64 sm:h-80 rounded-lg overflow-hidden bg-gray-100">
              <Image
                src={technicalContent.processImage}
                alt={`${categoryLabel} process illustration`}
                fill
                className="object-cover"
              />
            </div>
          )}
        </section>

        {/* Bottom CTA Section */}
        <section className="bg-gray-900 rounded-xl p-8 sm:p-12 md:p-16 text-white">
          <div className="max-w-4xl mx-auto">
            <h2 className="text-2xl sm:text-3xl font-bold mb-4 sm:mb-6 text-white">
              {categoryLabel} Equipment Resources
            </h2>
            <p className="text-base sm:text-lg mb-6 sm:mb-8 text-gray-200">
              Browse equipment specifications, request quotes, or access detailed preparation guides.
            </p>
            <div className="flex flex-col sm:flex-row gap-4">
              <Link
                href={`https://shop.metallographic.com/collections/${category}`}
                target="_blank"
                rel="noopener noreferrer"
                className="bg-white text-gray-900 px-6 py-3 rounded-lg font-semibold hover:bg-gray-100 transition-colors inline-flex items-center justify-center gap-2"
              >
                <ShoppingBag className="w-5 h-5" />
                Browse Products
              </Link>
              <Link
                href="/quote"
                className="bg-primary-600 text-white px-6 py-3 rounded-lg font-semibold hover:bg-primary-700 transition-colors inline-flex items-center justify-center"
              >
                Request Quote
              </Link>
              {technicalContent.guideSlug && (
                <Link
                  href={`/guides/${technicalContent.guideSlug}`}
                  className="bg-gray-800 text-white px-6 py-3 rounded-lg font-semibold hover:bg-gray-700 transition-colors border border-gray-700 inline-flex items-center justify-center gap-2"
                >
                  <BookOpen className="w-5 h-5" />
                  {technicalContent.guideTitle || 'Guide'}
                </Link>
              )}
            </div>
          </div>
        </section>
      </div>
    </>
  )
}

