import type { Metadata } from 'next'
import Link from 'next/link'
import GuidesClient from '@/components/GuidesClient'
import { guides } from '@/data/guides'

export const metadata: Metadata = {
  title: 'Metallographic Sample Preparation Guides | Metallography.org',
  description: 'Comprehensive step-by-step guides for metallographic sample preparation. Learn grinding, polishing, etching, and material-specific preparation techniques. Free educational resources for metallographers.',
  keywords: [
    'metallography guides',
    'sample preparation',
    'metallographic techniques',
    'grinding techniques',
    'polishing methods',
    'etching procedures',
    'stainless steel preparation',
    'aluminum sample preparation',
    'metallographic analysis',
    'microstructure analysis',
  ],
  openGraph: {
    title: 'Metallographic Sample Preparation Guides | Metallography.org',
    description: 'Comprehensive step-by-step guides for metallographic sample preparation. Learn grinding, polishing, etching, and material-specific preparation techniques.',
    url: 'https://metallography.org/guides',
    siteName: 'Metallography.org',
    images: [
      {
        url: '/logo.png',
        width: 1200,
        height: 630,
        alt: 'Metallography.org - Sample Preparation Guides',
      },
    ],
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Metallographic Sample Preparation Guides',
    description: 'Comprehensive step-by-step guides for metallographic sample preparation. Learn grinding, polishing, etching, and material-specific techniques.',
    images: ['/logo.png'],
  },
  alternates: {
    canonical: 'https://metallography.org/guides',
  },
}

export default function GuidesPage({
  searchParams,
}: {
  searchParams: { category?: string }
}) {
  // Create structured data for CollectionPage
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Metallographic Sample Preparation Guides',
    description: 'Comprehensive step-by-step guides for metallographic sample preparation',
    url: 'https://metallography.org/guides',
    mainEntity: {
      '@type': 'ItemList',
      numberOfItems: guides.length,
      itemListElement: guides.map((guide, index) => ({
        '@type': 'ListItem',
        position: index + 1,
        item: {
          '@type': 'Course',
          name: guide.title,
          description: guide.description,
          url: `https://metallography.org/guides/${guide.slug}`,
          educationalLevel: guide.difficulty,
          timeRequired: guide.readTime,
        },
      })),
    },
  }

  // Breadcrumb structured data
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
      {
        '@type': 'ListItem',
        position: 2,
        name: 'Guides',
        item: 'https://metallography.org/guides',
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

          <GuidesClient initialCategory={searchParams.category} />

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
    </>
  )
}
