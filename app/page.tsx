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

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
      />
      <div className="-mt-24">
      {/* Hero Section */}
      <section className="relative min-h-[85vh] flex items-center">
        <div className="container-custom relative z-10 pt-32 pb-20 mt-24">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
            <AnimateOnScroll animation="fadeInUp" duration={800} className="max-w-2xl">
              <h1 className="text-5xl md:text-6xl font-bold mb-6 leading-tight text-gray-900">
                Free Metallographic Sample Preparation Resources
              </h1>
              <p className="text-xl md:text-2xl text-gray-600 mb-12 leading-relaxed">
                Expert guides, best practices, and educational content to help you master 
                metallographic sample preparation techniques.
              </p>
              <div className="flex flex-col sm:flex-row gap-4 justify-start">
                <CTA href="/guides" variant="primary" className="no-underline">
                  Browse Guides
                </CTA>
                <CTA href="https://materialsprep.com" variant="secondary" className="no-underline">
                  Try Procedure Tool
                </CTA>
              </div>
            </AnimateOnScroll>
            <AnimateOnScroll animation="fadeInRight" duration={800} delay={200} className="hidden lg:block">
              <div className="relative w-full aspect-square rounded-lg overflow-hidden shadow-xl">
                <Image
                  src="/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG"
                  alt="Stainless steel microstructure showing grain structure at 400X magnification"
                  fill
                  className="object-cover"
                  priority
                />
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
              <div className="card">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/consumables/grinding & lapping-cover.webp"
                    alt="Grinding and lapping consumables for metallographic sample preparation"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Comprehensive Guides</h3>
                <p className="text-gray-600 mb-4 leading-relaxed">
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
              <div className="card">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/consumables/final polishing & analysis-cover.webp"
                    alt="Final polishing and analysis tools for metallographic samples"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Practical Tools</h3>
                <p className="text-gray-600 mb-4 leading-relaxed">
                  Save and manage your preparation procedures with our free tool. Get personalized recommendations, 
                  track your methods, and optimize your workflow for better results.
                </p>
                <Link href="https://materialsprep.com" target="_blank" rel="noopener noreferrer" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1">
                  Try Procedure Tool
                  <ChevronRight className="w-4 h-4" />
                </Link>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
              <div className="card">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/consumables/mounting-cover.webp"
                    alt="Sample mounting equipment and materials for metallography"
                    fill
                    className="object-cover"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Expert Resources</h3>
                <p className="text-gray-600 mb-4 leading-relaxed">
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
                    alt="6061 Aluminum microstructure"
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
              <Link href="/guides/troubleshooting-common-issues" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
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
                    alt="Polishing materials"
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
                    alt="Various Etchants"
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
          <AnimateOnScroll animation="fadeInUp" duration={700} className="max-w-3xl mx-auto text-center">
            <h2 className="text-4xl font-bold mb-4 text-gray-900">Ready to Get Started?</h2>
            <p className="text-xl mb-4 text-gray-600 leading-relaxed">
              Save your procedures, get personalized recommendations, and optimize your metallographic sample preparation workflow.
            </p>
            <p className="text-base mb-10 text-gray-500">
              Free tool with no registration required
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link 
                href="https://materialsprep.com" 
                target="_blank"
                rel="noopener noreferrer"
                className="btn-tertiary"
              >
                Try Procedure Tool Free
              </Link>
              <Link 
                href="https://shop.metallographic.com" 
                target="_blank"
                rel="noopener noreferrer"
                className="btn-primary"
              >
                Shop Consumables
              </Link>
              <Link 
                href="https://metallographic.com/equipment" 
                target="_blank"
                rel="noopener noreferrer"
                className="btn-secondary"
              >
                Browse Equipment
              </Link>
            </div>
          </AnimateOnScroll>
        </div>
      </section>
    </div>
    </>
  )
}

