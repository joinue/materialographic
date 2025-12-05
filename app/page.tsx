import Link from 'next/link'
import Image from 'next/image'
import CTA from '@/components/CTA'
import AnimateOnScroll from '@/components/AnimateOnScroll'
import { ChevronRight } from 'lucide-react'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Free Metallographic Sample Preparation Guides & Resources',
  description: 'Expert guides, best practices, and educational content to help you master metallographic sample preparation techniques. Free resources covering grinding, polishing, etching, and material-specific preparation methods.',
  keywords: ['metallography', 'sample preparation', 'metallographic guides', 'grinding techniques', 'polishing methods', 'etching procedures', 'stainless steel preparation', 'aluminum sample preparation', 'metallurgical analysis'],
  openGraph: {
    title: 'Free Metallographic Sample Preparation Guides & Resources | Metallography.org',
    description: 'Expert guides, best practices, and educational content to help you master metallographic sample preparation techniques.',
    url: 'https://metallography.org',
    siteName: 'Metallography.org',
    images: [
      {
        url: '/logo.png',
        width: 1200,
        height: 630,
        alt: 'Metallography.org - Free Metallographic Sample Preparation Resources',
      },
    ],
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Free Metallographic Sample Preparation Guides & Resources',
    description: 'Expert guides, best practices, and educational content to help you master metallographic sample preparation techniques.',
    images: ['/logo.png'],
  },
  alternates: {
    canonical: 'https://metallography.org',
  },
}

export default function Home() {
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'EducationalOrganization',
    name: 'Metallography.org',
    url: 'https://metallography.org',
    description: 'Free educational resources, guides, and best practices for metallographic sample preparation',
    logo: 'https://metallography.org/logo.png',
    founder: {
      '@type': 'Organization',
      name: 'Metallography.org',
    },
    sameAs: [
      'https://materialsprep.com',
      'https://shop.metallographic.com',
      'https://metallographic.com/equipment',
    ],
    offers: {
      '@type': 'Offer',
      price: '0',
      priceCurrency: 'USD',
    },
    hasOfferCatalog: {
      '@type': 'OfferCatalog',
      name: 'Metallographic Sample Preparation Resources',
      itemListElement: [
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Stainless Steel Preparation Guide',
            url: 'https://metallography.org/guides/stainless-steel-preparation',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Aluminum Sample Preparation Guide',
            url: 'https://metallography.org/guides/aluminum-sample-preparation',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Grinding Techniques Guide',
            url: 'https://metallography.org/guides/grinding-techniques',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Polishing Methods Guide',
            url: 'https://metallography.org/guides/polishing-methods',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Etching Procedures Guide',
            url: 'https://metallography.org/guides/etching-procedures',
          },
        },
      ],
    },
  }

  const breadcrumbStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      {
        '@type': 'ListItem',
        position: 1,
        name: 'Home',
        item: 'https://metallography.org',
      },
    ],
  }

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(breadcrumbStructuredData) }}
      />
      <div className="-mt-24">
      {/* Hero Section with Background */}
      <section className="relative min-h-[100vh] flex items-center pt-24 pb-32">
        {/* Background Image with Overlay - extends to cover header area */}
        <div className="absolute -top-24 left-0 right-0 h-[calc(100vh+6rem)] z-0">
          <div className="relative w-full h-full">
            <Image
              src="/images/microstructures/Ferrite-Pearlite steel.JPG"
              alt="Ferrite-Pearlite steel microstructure background showing metallographic sample preparation results"
              fill
              className="object-cover object-center"
              priority
              quality={95}
              sizes="100vw"
              style={{ objectPosition: 'center 30%' }}
            />
            {/* Shadow Overlay for Text Visibility */}
            <div className="absolute inset-0 bg-black/40"></div>
            {/* Gradient fade at bottom for smooth transition */}
            <div className="absolute bottom-0 left-0 right-0 h-40 bg-gradient-to-b from-transparent via-white/20 to-white"></div>
          </div>
        </div>
        
        <div className="container-custom relative z-10 w-full flex items-center min-h-[calc(100vh-6rem)] py-20">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center w-full">
            <AnimateOnScroll animation="fadeInUp" duration={800}>
              <h1 className="text-5xl md:text-6xl font-bold mb-6 leading-tight text-white drop-shadow-lg">
                Free Metallography Resources
              </h1>
              <p className="text-xl md:text-2xl text-gray-100 mb-12 leading-relaxed drop-shadow-md">
                Expert guides, best practices, and educational content to help you master 
                metallographic sample preparation and analysis techniques.
              </p>
              <div className="flex flex-col sm:flex-row gap-4 justify-start">
                <CTA href="/guides" variant="primary" className="no-underline">
                  Browse Guides
                </CTA>
                <CTA href="/guides" variant="secondary" className="no-underline">
                  Browse Guides
                </CTA>
              </div>
            </AnimateOnScroll>
            <AnimateOnScroll animation="fadeInUp" duration={800} className="hidden lg:block">
              <div className="relative w-full">
                {/* Browser Window Frame */}
                <div className="bg-gray-100 rounded-t-lg border border-gray-300 shadow-2xl overflow-hidden">
                  {/* Browser Title Bar */}
                  <div className="bg-white border-b border-gray-200 px-4 py-2.5 flex items-center gap-2">
                    {/* Traffic Light Dots (macOS style) */}
                    <div className="flex gap-1.5">
                      <div className="w-3 h-3 rounded-full bg-red-500"></div>
                      <div className="w-3 h-3 rounded-full bg-yellow-500"></div>
                      <div className="w-3 h-3 rounded-full bg-green-500"></div>
                    </div>
                    {/* Address Bar */}
                    <div className="flex-1 mx-4 bg-gray-50 rounded-md px-4 py-1.5 border border-gray-200 flex items-center gap-2">
                      <svg className="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                      </svg>
                      <span className="text-xs text-gray-600 font-medium flex-1">metallography.org/guides</span>
                      <svg className="w-3.5 h-3.5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                      </svg>
                    </div>
                  </div>
                  {/* Browser Content */}
                  <div className="relative bg-white">
                    <Image
                      src="/images/webpage-snaps/guides-page.png"
                      alt="Preview of metallography guides page showing comprehensive sample preparation resources and tutorials"
                      width={800}
                      height={600}
                      className="w-full h-auto"
                      priority
                    />
                  </div>
                </div>
              </div>
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* Features Section */}
      <section className="py-20">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-16">
            <h2 className="text-4xl font-bold text-gray-900 mb-4">Everything You Need to Succeed</h2>
            <p className="text-xl text-gray-600 max-w-2xl mx-auto">
              Comprehensive resources designed by metallography experts to help you achieve consistent, high-quality results.
            </p>
          </AnimateOnScroll>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/consumables/grinding & lapping-cover.webp"
                    alt="Grinding and lapping consumables for metallographic sample preparation"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Comprehensive Guides</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Step-by-step tutorials covering grinding, polishing, etching, and material-specific preparation techniques. 
                  Learn proven methods from industry experts with years of experience.
                </p>
                <Link href="/guides" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1">
                  Explore Guides
                  <ChevronRight className="w-4 h-4" />
                </Link>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={200} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/webpage-snaps/grit-size-tool.png"
                    alt="Grit size converter tool for metallographic sample preparation showing grit size conversion interface"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Practical Tools</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Free calculators and reference tools to help with your metallographic work. Convert grit sizes, 
                  calculate polishing times, select etchants, and more.
                </p>
                <Link href="/tools" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1">
                  Browse Tools
                  <ChevronRight className="w-4 h-4" />
                </Link>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/expert-metallography.jpg"
                    alt="Metallography expert working with sample preparation equipment"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Expert Resources</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Downloadable checklists, reference materials, troubleshooting guides, and best practice documents 
                  to support your metallography work and ensure quality outcomes.
                </p>
                <Link href="/resources" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1">
                  View Resources
                  <ChevronRight className="w-4 h-4" />
                </Link>
              </div>
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* Popular Guides Section */}
      <section className="py-20">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-12">
            <h2 className="text-4xl font-bold text-gray-900 mb-4">Popular Guides</h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              Essential guides covering material-specific preparation and fundamental techniques
            </p>
          </AnimateOnScroll>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <AnimateOnScroll animation="scaleIn" delay={50} duration={500}>
              <Link href="/guides/stainless-steel-preparation" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG"
                    alt="Stainless steel microstructure at 400X magnification"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Stainless Steel Preparation</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Complete guide to preparing stainless steel samples for metallographic analysis, including sectioning, mounting, and etching techniques.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={100} duration={500}>
              <Link href="/guides/aluminum-sample-preparation" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/microstructures/6061-Aluminum.jpg"
                    alt="6061 Aluminum alloy microstructure showing grain structure from metallographic sample preparation"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Aluminum Sample Preparation</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Best practices for preparing aluminum samples without smearing or deformation, ensuring accurate microstructural analysis.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={150} duration={500}>
              <Link href="/resources/troubleshooting-guide" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/microstructures/Inclusion-oxide-2.jpg"
                    alt="Common issues in metallographic sample preparation showing inclusions"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Troubleshooting Common Issues</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Solutions to common problems in metallographic sample preparation, from scratches to poor contrast.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={200} duration={500}>
              <Link href="/guides/grinding-techniques" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/consumables/grinding & lapping-cover.webp"
                    alt="Silicon carbide grinding papers for metallographic sample preparation"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Grinding Techniques</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Master the art of grinding with proper grit selection, pressure control, and technique for optimal surface quality.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={250} duration={500}>
              <Link href="/guides/polishing-methods" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/consumables/rough polishing-cover.png"
                    alt="Metallographic polishing materials including diamond paste and polishing cloths for sample preparation"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Polishing Methods</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Learn effective polishing techniques for different materials and applications, including diamond and oxide polishing.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={300} duration={500}>
              <Link href="/guides/etching-procedures" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48">
                  <Image
                    src="/images/consumables/etching.webp"
                    alt="Various metallographic etchants and chemical reagents for microstructural analysis"
                    fill
                    className="object-cover"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Etching Procedures</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Comprehensive guide to etching techniques, reagent selection, and application methods for various material systems.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
          </div>
          <AnimateOnScroll animation="fadeIn" delay={350} duration={500} className="text-center mt-12">
            <Link href="/guides" className="text-primary-600 font-semibold hover:text-primary-700 transition-colors inline-flex items-center gap-2">
              View All Guides
              <ChevronRight className="w-5 h-5" />
            </Link>
          </AnimateOnScroll>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-20">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="max-w-4xl mx-auto">
            <div className="card relative overflow-hidden">
              {/* Background Image */}
              <div className="absolute inset-0 z-0">
                <Image
                  src="/images/microstructures/Ferrite-Pearlite steel.JPG"
                  alt="Metallographic sample background"
                  fill
                  className="object-cover opacity-10"
                />
                {/* Gradient overlay for better text readability */}
                <div className="absolute inset-0 bg-gradient-to-br from-primary-50/50 to-white"></div>
              </div>
              
              {/* Content */}
              <div className="relative z-10 text-center">
                <h2 className="text-4xl font-bold mb-4 text-gray-900">Ready to Get Started?</h2>
                <p className="text-xl mb-4 text-gray-600 leading-relaxed">
                  Explore comprehensive guides, step-by-step tutorials, and expert resources to master metallographic sample preparation.
                </p>
                <p className="text-base mb-10 text-gray-500">
                  Free resources with no registration required
                </p>
                <div className="flex flex-col sm:flex-row gap-4 justify-center">
                  <Link 
                    href="/guides" 
                    className="btn-primary"
                  >
                    Browse Guides
                  </Link>
                  <Link 
                    href="/resources" 
                    className="btn-secondary"
                  >
                    View Resources
                  </Link>
                  <Link 
                    href="/guides/equipment-overview" 
                    className="btn-tertiary"
                  >
                    Equipment Guide
                  </Link>
                </div>
              </div>
            </div>
          </AnimateOnScroll>
        </div>
      </section>
    </div>
    </>
  )
}

