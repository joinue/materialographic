'use client'

import Link from 'next/link'
import Image from 'next/image'
import { use, useState, useEffect, useMemo } from 'react'
import { createClient } from '@/lib/supabase-client'
import { getSubcategoryMetadata, getEquipmentBySubcategory } from '@/lib/supabase'
import type { SubcategoryMetadata, Equipment } from '@/lib/supabase'
import { ChevronRight, ArrowLeft, Package, Scissors, Gauge, Microscope, HardDrive, Home, ShoppingBag } from 'lucide-react'
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

// Subcategory-specific technical content
const subcategoryTechnicalContent: Record<string, Record<string, {
  overview: string
  variants?: Array<{
    name: string
    description: string
    keyFeatures: string[]
    bestFor: string[]
    anchor?: string
  }>
}>> = {
  'sectioning': {
    'precision-wafering': {
      overview: 'Precision wafering systems use diamond or CBN blades with controlled feed rates (0.001-0.1 mm/min) to minimize deformation (<10 μm) and heat-affected zones. Ideal for delicate materials, ceramics, and research applications requiring minimal sample damage.',
      variants: [
        {
          name: 'Gravity Feed',
          description: 'Gravity feed systems use controlled downward force from the sample holder. The holder moves downward under gravity, providing consistent cutting pressure with minimal operator intervention.',
          keyFeatures: [
            'Controlled downward force via gravity',
            'Lower operational complexity',
            'Cost-effective for small-batch production',
            'Consistent cutting pressure',
            'Standard sample geometries'
          ],
          bestFor: [
            'Research laboratories',
            'Small-batch production',
            'Standard sample shapes',
            'Consistent, repeatable cuts'
          ],
          anchor: 'gravity-feed'
        },
        {
          name: 'Table Feed',
          description: 'Table feed systems use a motorized table that moves the sample horizontally into the blade. Provides programmable feed rates and better control for irregular shapes and automated sequences.',
          keyFeatures: [
            'Motorized horizontal table movement',
            'Programmable feed rates',
            'Handles irregular sample shapes',
            'Automated cutting sequences',
            'Precise control over cutting parameters'
          ],
          bestFor: [
            'Industrial applications',
            'Irregularly shaped workpieces',
            'Automated cutting sequences',
            'High-throughput production'
          ],
          anchor: 'table-feed'
        }
      ]
    },
    'abrasive-sectioning': {
      overview: 'Abrasive sectioning uses reinforced abrasive wheels cutting at 1000-3000 RPM for faster material removal. Suitable for larger samples and production environments with typical cut times of 30 seconds to 5 minutes.',
      variants: [
        {
          name: 'Manual Abrasive Cutters',
          description: 'Manual abrasive cutters require operator control of the cutting process. The operator manually positions the sample and controls the feed rate during cutting.',
          keyFeatures: [
            'Operator-controlled feed rate',
            'Lower initial cost',
            'Flexible for various sample sizes',
            'Direct control over cutting process'
          ],
          bestFor: [
            'Low to medium volume cutting',
            'Variable sample sizes',
            'Training and educational use',
            'Labs with budget constraints'
          ]
        },
        {
          name: 'Automated Abrasive Cutters',
          description: 'Automated abrasive cutters feature programmable feed rates, force control, and multiple sample capacity. They reduce operator time and ensure consistent cutting parameters across batches.',
          keyFeatures: [
            'Programmable feed rates and force',
            'Multiple sample capacity',
            'Consistent cutting parameters',
            'Reduced operator intervention',
            'Higher throughput'
          ],
          bestFor: [
            'High-volume production',
            'Consistent batch processing',
            'Quality control environments',
            'Reduced operator fatigue requirements'
          ]
        }
      ]
    },
    'automated': {
      overview: 'Automated abrasive cutters provide programmable feed rates, force control, and multiple sample capacity. These systems reduce operator intervention and ensure consistent cutting parameters across batches, making them ideal for high-volume production environments.',
      variants: []
    },
    'manual': {
      overview: 'Manual abrasive cutters offer operator-controlled feed rates and direct control over the cutting process. These systems provide flexibility for various sample sizes and are cost-effective for low to medium volume cutting operations.',
      variants: []
    }
  },
  'mounting': {
    'compression-mounting': {
      overview: 'Compression mounting uses heat (150-200°C) and pressure (2000-4000 PSI) to embed samples in thermosetting resins. Curing time is 5-10 minutes, providing excellent edge retention and dimensional stability.',
      variants: [
        {
          name: 'Hydraulic Presses',
          description: 'Hydraulic compression mounting presses use hydraulic pressure to achieve high mounting forces. They provide consistent pressure distribution and are suitable for high-volume production.',
          keyFeatures: [
            'High pressure capability (up to 4000 PSI)',
            'Consistent pressure distribution',
            'Suitable for high-volume production',
            'Durable construction for heavy use'
          ],
          bestFor: [
            'Production environments',
            'High-volume mounting',
            'Materials requiring high pressure',
            'Consistent batch processing'
          ]
        },
        {
          name: 'Pneumatic Presses',
          description: 'Pneumatic compression mounting presses use compressed air to generate mounting pressure. They offer faster cycle times and are easier to operate than hydraulic systems.',
          keyFeatures: [
            'Faster cycle times',
            'Easier operation',
            'Lower maintenance requirements',
            'Clean operation (no hydraulic fluid)'
          ],
          bestFor: [
            'Medium-volume mounting',
            'Faster turnaround requirements',
            'Clean room environments',
            'Easier maintenance preferences'
          ]
        }
      ]
    },
    'castable-mounting': {
      overview: 'Castable mounting cures at room temperature over 4-24 hours using epoxy or acrylic resins. Required for heat-sensitive materials (polymers, electronic components, low-melting alloys).',
      variants: [
        {
          name: 'Vacuum Systems',
          description: 'Vacuum castable mounting systems remove air bubbles from the resin before curing, ensuring complete resin penetration and eliminating porosity in the final mount.',
          keyFeatures: [
            'Removes air bubbles (10-50 mbar vacuum)',
            'Complete resin penetration',
            'Eliminates porosity',
            'Ideal for porous materials'
          ],
          bestFor: [
            'Porous materials',
            'Complex sample geometries',
            'Materials requiring bubble-free mounting',
            'High-quality mount requirements'
          ]
        },
        {
          name: 'Pressure Systems',
          description: 'Pressure castable mounting applies pressure (up to 60 PSI) during curing to improve resin penetration and reduce porosity. Suitable for materials requiring enhanced infiltration.',
          keyFeatures: [
            'Applied pressure up to 60 PSI',
            'Improved resin penetration',
            'Reduced porosity',
            'Enhanced infiltration'
          ],
          bestFor: [
            'Materials requiring enhanced penetration',
            'Complex geometries',
            'Production environments',
            'Faster infiltration needs'
          ]
        },
        {
          name: 'UV Curing Systems',
          description: 'UV curing systems use UV-curable resins that cure in 5-15 minutes under UV light. Ideal for rapid turnaround and small sample batches.',
          keyFeatures: [
            'Fast curing (5-15 minutes)',
            'UV-curable resins',
            'Rapid turnaround',
            'No heat required'
          ],
          bestFor: [
            'Rapid turnaround requirements',
            'Small sample batches',
            'Heat-sensitive materials',
            'Quick processing needs'
          ]
        }
      ]
    }
  },
  'grinding-polishing': {
    'manual': {
      overview: 'Manual grinding and polishing systems require operator control of force, speed, and timing. Single-station systems with 8-12 inch platens provide flexibility for different materials and are suitable for low-volume labs, research, and training applications.',
      variants: []
    },
    'semi-automated': {
      overview: 'Semi-automated grinding and polishing systems feature programmable force, speed, and time per step. Multi-station capability (2-6 stations) reduces operator intervention while maintaining flexibility for different materials and sample types.',
      variants: []
    },
    'automated': {
      overview: 'Fully automated grinding and polishing systems provide complete automated cycles with controlled removal rates. Multi-sample processing (6-12 samples) enables high-throughput production environments and standardized procedures for consistent results.',
      variants: []
    },
    'hand-belt': {
      overview: 'Hand and belt grinders are used for coarse grinding operations. Belt grinders provide fast material removal for large samples, while hand grinders offer portability and flexibility for various sample geometries.',
      variants: []
    },
    'vibratory': {
      overview: 'Vibratory polishers use oscillating motion to gently polish delicate materials. The vibratory action provides uniform polishing without the aggressive material removal of rotary systems, making them ideal for soft materials and final polishing steps.',
      variants: []
    },
    'controlled-removal': {
      overview: 'Controlled removal polishers provide precision plano-parallel sample preparation. These systems maintain precise sample thickness and parallelism, essential for applications requiring exact dimensional control such as hardness testing and quantitative analysis.',
      variants: []
    }
  },
  'microscopy': {
    'metallurgical': {
      overview: 'Metallurgical microscopes use reflected light (epi-illumination) to examine polished and etched samples. Upright or inverted designs support magnification from 50x to 2000x, enabling detailed microstructure examination, phase identification, and grain size analysis.',
      variants: []
    },
    'stereo': {
      overview: 'Stereo microscopes provide low magnification (5x-100x) for sample inspection and macro-scale feature examination. Essential for quality control, defect identification, sample selection, and documentation of larger-scale features before detailed analysis.',
      variants: []
    },
    'image-analysis': {
      overview: 'Image analysis systems combine digital cameras with software for quantitative metallography. These systems enable grain size measurements (ASTM E112), phase area fraction analysis, inclusion rating, and automated feature detection for quality control and research applications.',
      variants: []
    }
  },
  'hardness-testing': {
    'rockwell': {
      overview: 'Rockwell hardness testers measure indentation depth under major and minor loads. Scales include HRC (hardened steel), HRB (soft metals), and HRA (thin materials). Fast testing (10-15 seconds per measurement) makes them ideal for production quality control.',
      variants: []
    },
    'microhardness': {
      overview: 'Microhardness testers use optical measurement of indentation diagonal for precise microhardness evaluation. Vickers and Knoop test methods support loads from 1 gf to 100 kgf. Vickers is used for general microhardness; Knoop is preferred for thin coatings and brittle materials.',
      variants: []
    },
    'brinell-microvickers': {
      overview: 'Brinell and macro Vickers testers use large indenters (10 mm ball for Brinell) for coarse-grained materials and castings. Loads range from 500-3000 kgf. These systems are suitable for materials with heterogeneous microstructures where large indentations provide more representative measurements.',
      variants: []
    }
  },
  'lab-furniture': {
    'workbenches': {
      overview: 'Laboratory workbenches provide chemical-resistant surfaces (epoxy resin or stainless steel) for metallographic sample preparation. Integrated sinks, electrical outlets, and storage optimize workflow. Standard heights of 30-36 inches promote ergonomic operation.',
      variants: []
    },
    'fume-hoods': {
      overview: 'Fume hoods provide ventilated enclosures for chemical etching and handling operations. Airflow of 100-150 fpm face velocity ensures safe removal of chemical vapors. Adjustable sash heights and widths accommodate various sample sizes and equipment.',
      variants: []
    },
    'safety-cabinets': {
      overview: 'Safety storage cabinets provide secure storage for chemicals and consumables. Fire-resistant construction and proper ventilation protect against chemical hazards. Organized layouts improve workflow efficiency and ensure compliance with safety regulations.',
      variants: []
    },
    'storage': {
      overview: 'Specimen storage solutions provide organized storage for prepared samples, consumables, and tools. Chemical-resistant materials ensure durability in laboratory environments. Proper organization reduces preparation time and maintains sample integrity.',
      variants: []
    }
  }
}

export default function EquipmentSubcategoryPage({ params }: { params: Promise<{ category: string; subcategory: string }> }) {
  const { category, subcategory } = use(params)
  const [subcategoryMeta, setSubcategoryMeta] = useState<SubcategoryMetadata | null>(null)
  const [equipment, setEquipment] = useState<Equipment[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const fetchData = async () => {
      try {
        // Fetch subcategory metadata
        const meta = await getSubcategoryMetadata(category, subcategory, 'equipment')
        setSubcategoryMeta(meta)

        // Fetch all equipment in this subcategory
        const items = await getEquipmentBySubcategory(category, subcategory)
        setEquipment(items)
      } catch (error) {
        console.error('Error fetching data:', error)
      } finally {
        setLoading(false)
      }
    }

    fetchData()
  }, [category, subcategory])

  const categoryLabel = categoryLabels[category] || category
  let subcategoryLabel = subcategoryMeta?.subcategory_label || subcategory
  
  // Add "Abrasive Cutters" suffix for automated/manual sectioning subcategories
  if (category === 'sectioning') {
    const subcategoryLower = subcategory.toLowerCase()
    const labelLower = subcategoryLabel.toLowerCase()
    if ((subcategoryLower.includes('automated') || subcategoryLower.includes('automatic') || 
         labelLower.includes('automated') || labelLower.includes('automatic')) && 
        !labelLower.includes('abrasive cutters')) {
      subcategoryLabel = 'Automated Abrasive Cutters'
    } else if ((subcategoryLower.includes('manual') || labelLower.includes('manual')) && 
               !labelLower.includes('abrasive cutters')) {
      subcategoryLabel = 'Manual Abrasive Cutters'
    }
  }
  
  const technicalContent = subcategoryTechnicalContent[category]?.[subcategory] || null

  // Group equipment by variant type if variants exist
  const groupedEquipment = useMemo(() => {
    const grouped: Record<string, Equipment[]> = {}
    if (technicalContent?.variants) {
      technicalContent.variants.forEach(variant => {
        grouped[variant.name] = []
      })
      grouped['Other'] = []
      
      equipment.forEach(item => {
        let assigned = false
        const itemNameLower = item.name.toLowerCase()
        const itemIdLower = item.item_id?.toLowerCase() || ''
        
        // Specific equipment matching for precision wafering
        if (category === 'sectioning' && subcategory === 'precision-wafering') {
          // PICO-155S and PICO-155P are gravity feed
          if (itemNameLower.includes('155') || itemIdLower.includes('155')) {
            const gravityVariant = technicalContent.variants!.find(v => v.name.toLowerCase().includes('gravity'))
            if (gravityVariant) {
              grouped[gravityVariant.name].push(item)
              assigned = true
            }
          }
          // PICO-200A and PICO-200S are table feed
          else if (itemNameLower.includes('200') || itemIdLower.includes('200')) {
            const tableVariant = technicalContent.variants!.find(v => v.name.toLowerCase().includes('table'))
            if (tableVariant) {
              grouped[tableVariant.name].push(item)
              assigned = true
            }
          }
        }
        
        // General matching logic for other categories or if not yet assigned
        if (!assigned) {
          for (const variant of technicalContent.variants!) {
            const variantNameLower = variant.name.toLowerCase()
            if (
              itemNameLower.includes(variantNameLower.split(' ')[0]) || 
              (itemNameLower.includes('gravity') && variantNameLower.includes('gravity')) ||
              (itemNameLower.includes('table') && variantNameLower.includes('table')) ||
              (itemNameLower.includes('manual') && variantNameLower.includes('manual')) ||
              (itemNameLower.includes('automat') && variantNameLower.includes('automat'))
            ) {
              grouped[variant.name].push(item)
              assigned = true
              break
            }
          }
        }
        
        if (!assigned) {
          grouped['Other'].push(item)
        }
      })
    }
    return grouped
  }, [equipment, technicalContent])

  // Check if we should show grouped view
  const shouldShowGrouped = technicalContent?.variants && 
    Object.keys(groupedEquipment).some(key => groupedEquipment[key].length > 0)

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

  const IconComponent = categoryIcons[category] || Package

  return (
    <>
      {/* Hero Section - Full Width with Dark Gradient */}
      <section className="w-full bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-12 sm:py-16 md:py-20 mb-12 sm:mb-16 md:mb-20 rounded-b-3xl">
        <div className="container-custom">
          {/* Breadcrumb */}
          <div className="mb-8 sm:mb-10">
            <div className="flex items-center gap-2 text-sm text-gray-300 mb-4">
              <Link 
                href="/equipment"
                className="hover:text-white transition-colors"
              >
                Equipment
              </Link>
              <ChevronRight className="w-4 h-4" />
              <Link 
                href={`/equipment/${category}`}
                className="hover:text-white transition-colors"
              >
                {categoryLabel}
              </Link>
              <ChevronRight className="w-4 h-4" />
              <span className="text-white">{subcategoryLabel}</span>
            </div>
          </div>
          
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12 items-start">
            <div>
              <div className="flex items-center gap-3 mb-4">
                <IconComponent className="w-8 h-8 sm:w-10 sm:h-10 text-gray-300" />
                <span className="text-sm font-semibold text-gray-300 uppercase tracking-wide">
                  {subcategoryLabel}
                </span>
              </div>
              <h1 className="text-3xl sm:text-4xl font-bold text-white mb-4 sm:mb-6 leading-tight">
                {subcategoryLabel}
              </h1>
              {subcategoryMeta?.description && (
                <p className="text-base sm:text-lg text-gray-300 mb-6 sm:mb-8 leading-relaxed">
                  {subcategoryMeta.description}
                </p>
              )}
              
              {/* Hero CTAs */}
              <div className="flex flex-col sm:flex-row gap-4">
                <a
                  href="#equipment-section"
                  className="bg-white/90 backdrop-blur-md text-gray-900 px-6 py-3 rounded-full font-semibold hover:bg-white transition-all inline-flex items-center justify-center gap-2 shadow-lg hover:shadow-xl border border-white/20"
                >
                  Browse Equipment
                </a>
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
                <Link
                  href={`/equipment/${category}`}
                  className="bg-white/10 backdrop-blur-md text-white px-6 py-3 rounded-full font-semibold hover:bg-white/20 transition-all inline-flex items-center justify-center gap-2 border-2 border-white/30 shadow-lg hover:shadow-xl"
                >
                  <ArrowLeft className="w-5 h-5" />
                  Back to {categoryLabel}
                </Link>
              </div>
            </div>
            
            {/* Hero Image - Use first equipment image if available */}
            {equipment.length > 0 && equipment[0].image_url && (
              <div className="relative w-full h-64 sm:h-80 lg:h-96 rounded-lg overflow-hidden bg-transparent">
                <Image
                  src={getEquipmentImageUrl(equipment[0].image_url) || equipment[0].image_url}
                  alt={equipment[0].name}
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

        {/* Technical Overview */}
        {technicalContent && (
          <section className="mb-8 sm:mb-12">
            <div className="bg-gray-50 rounded-xl p-6 sm:p-8 mb-8">
              <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-4">Overview</h2>
              <p className="text-base text-gray-700 leading-relaxed">
                {technicalContent.overview}
              </p>
            </div>

            {/* Variants Comparison */}
            {technicalContent.variants && technicalContent.variants.length > 0 && (
              <div className="mb-8 sm:mb-12">
                <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-6">Types & Differences</h2>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6 sm:gap-8">
                  {technicalContent.variants.map((variant, index) => (
                    <div key={index} className="bg-white border border-gray-200 rounded-lg p-6">
                      <h3 className="text-lg sm:text-xl font-bold text-gray-900 mb-3">{variant.name}</h3>
                      <p className="text-sm text-gray-700 mb-4 leading-relaxed">{variant.description}</p>
                      
                      <div className="mb-4">
                        <h4 className="text-sm font-semibold text-gray-900 mb-2">Key Features:</h4>
                        <ul className="space-y-1">
                          {variant.keyFeatures.map((feature, fIndex) => (
                            <li key={fIndex} className="text-xs sm:text-sm text-gray-600 flex items-start gap-2">
                              <span className="text-primary-600 mt-1">•</span>
                              <span>{feature}</span>
                            </li>
                          ))}
                        </ul>
                      </div>
                      
                      <div className="mb-4">
                        <h4 className="text-sm font-semibold text-gray-900 mb-2">Best For:</h4>
                        <ul className="space-y-1">
                          {variant.bestFor.map((use, uIndex) => (
                            <li key={uIndex} className="text-xs sm:text-sm text-gray-600 flex items-start gap-2">
                              <span className="text-primary-600 mt-1">•</span>
                              <span>{use}</span>
                            </li>
                          ))}
                        </ul>
                      </div>
                      
                      {variant.anchor && (
                        <a
                          href={`#${variant.anchor}`}
                          onClick={(e) => {
                            e.preventDefault()
                            const element = document.getElementById(variant.anchor!)
                            if (element) {
                              const offset = 100
                              const elementPosition = element.getBoundingClientRect().top
                              const offsetPosition = elementPosition + window.pageYOffset - offset
                              window.scrollTo({
                                top: offsetPosition,
                                behavior: 'smooth'
                              })
                            }
                          }}
                          className="inline-flex items-center gap-2 text-sm font-semibold text-primary-600 hover:text-primary-700 transition-colors mt-4"
                        >
                          View {variant.name} Equipment
                          <ChevronRight className="w-4 h-4" />
                        </a>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}
          </section>
        )}

        {/* Equipment Grid - Grouped by Variant if variants exist, otherwise flat */}
        <section id="equipment-section" className="scroll-mt-24">
          {equipment.length === 0 ? (
            <div className="text-center py-12">
              <p className="text-gray-600">No equipment found in this subcategory.</p>
            </div>
          ) : shouldShowGrouped ? (
          <div className="space-y-12">
            {technicalContent?.variants?.map((variant, vIndex) => {
              const variantEquipment = groupedEquipment[variant.name] || []
              if (variantEquipment.length === 0) return null
              
                const sectionId = variant.anchor || variant.name.toLowerCase().replace(/\s+/g, '-')
                return (
                  <section key={vIndex} id={sectionId} className="scroll-mt-24">
                  <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-6">{variant.name} Equipment</h2>
                  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
                    {variantEquipment.map((item, index) => (
                      <AnimatedCard key={item.id} index={index} animation="fadeInUp" duration={500}>
                        <Link 
                          href={`/equipment/${category}/${subcategory}/${item.slug || item.item_id?.toLowerCase()}`}
                          className="card hover:border-gray-300 group p-4 sm:p-6"
                        >
                          {item.image_url && (
                            <div className="relative w-full h-48 mb-4 rounded-lg bg-gray-100">
                              <Image
                                src={getEquipmentImageUrl(item.image_url) || item.image_url}
                                alt={item.name}
                                fill
                                className="object-contain !inset-2 sm:!inset-3"
                                sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
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
                    ))}
                  </div>
                </section>
              )
            })}
            {groupedEquipment['Other'] && groupedEquipment['Other'].length > 0 && (
              <section>
                <h2 className="text-xl sm:text-2xl font-bold text-gray-900 mb-6">{subcategoryLabel}</h2>
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
                  {groupedEquipment['Other'].map((item, index) => (
                    <AnimatedCard key={item.id} index={index} animation="fadeInUp" duration={500}>
                      <Link 
                        href={`/equipment/${category}/${subcategory}/${item.slug || item.item_id?.toLowerCase()}`}
                        className="card hover:border-gray-300 group p-4 sm:p-6"
                      >
                        {item.image_url && (
                          <div className="relative w-full h-48 mb-4 rounded-lg bg-gray-100">
                            <Image
                              src={getEquipmentImageUrl(item.image_url) || item.image_url}
                              alt={item.name}
                              fill
                              className="object-contain !inset-2 sm:!inset-3"
                              sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
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
                  ))}
                </div>
              </section>
            )}
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
            {equipment.map((item, index) => (
              <AnimatedCard key={item.id} index={index} animation="fadeInUp" duration={500}>
                <Link 
                  href={`/equipment/${category}/${subcategory}/${item.slug || item.item_id?.toLowerCase()}`}
                  className="card hover:border-gray-300 group p-4 sm:p-6"
                >
                  {item.image_url && (
                    <div className="relative w-full h-48 mb-4 rounded-lg bg-gray-100">
                      <Image
                        src={getEquipmentImageUrl(item.image_url) || item.image_url}
                        alt={item.name}
                        fill
                        className="object-contain !inset-2 sm:!inset-3"
                        sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
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
            ))}
          </div>
        )}
        </section>
      </div>
    </>
  )
}

