import type { Metadata } from 'next'
import Link from 'next/link'
import Image from 'next/image'
import { Calendar, Clock, ArrowRight } from 'lucide-react'

export const metadata: Metadata = {
  title: 'Metallography Blog | Tips, Techniques & Industry News | Metallography.org',
  description: 'Stay updated with the latest metallography tips, techniques, case studies, and industry news. Learn from experts and discover best practices for sample preparation and analysis.',
  keywords: [
    'metallography blog',
    'metallography tips',
    'sample preparation techniques',
    'metallography news',
    'metallography case studies',
    'microstructure analysis',
    'metallography best practices',
  ],
  openGraph: {
    title: 'Metallography Blog | Tips, Techniques & Industry News',
    description: 'Stay updated with the latest metallography tips, techniques, case studies, and industry news.',
    url: 'https://metallography.org/blog',
    siteName: 'Metallography.org',
    images: [
      {
        url: '/logo.png',
        width: 1200,
        height: 630,
        alt: 'Metallography.org Blog',
      },
    ],
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Metallography Blog | Tips, Techniques & Industry News',
    description: 'Stay updated with the latest metallography tips, techniques, case studies, and industry news.',
    images: ['/logo.png'],
  },
  alternates: {
    canonical: 'https://metallography.org/blog',
  },
}

// Blog post data - in a real app, this would come from a CMS or database
const blogPosts = [
  {
    slug: 'coming-soon',
    title: 'Welcome to the Metallography.org Blog',
    excerpt: 'We\'re building a comprehensive blog with tips, techniques, case studies, and industry news. Check back soon for expert insights and practical advice.',
    date: new Date('2024-01-15'),
    readTime: '2 min read',
    category: 'Announcement',
    image: '/logo.png',
  },
]

export default function BlogPage() {
  // CollectionPage structured data
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Metallography Blog',
    description: 'Metallography tips, techniques, case studies, and industry news',
    url: 'https://metallography.org/blog',
    mainEntity: {
      '@type': 'ItemList',
      numberOfItems: blogPosts.length,
      itemListElement: blogPosts.map((post, index) => ({
        '@type': 'ListItem',
        position: index + 1,
        item: {
          '@type': 'BlogPosting',
          headline: post.title,
          description: post.excerpt,
          url: `https://metallography.org/blog/${post.slug}`,
          datePublished: post.date.toISOString(),
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
        name: 'Blog',
        item: 'https://metallography.org/blog',
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
          {/* Header */}
          <div className="mb-12 text-center">
            <h1 className="text-4xl md:text-5xl font-bold mb-4 text-gray-900">Metallography Blog</h1>
            <p className="text-xl text-gray-600 max-w-3xl mx-auto">
              Expert tips, techniques, case studies, and industry news to help you master metallographic sample preparation and analysis.
            </p>
          </div>

          {/* Blog Posts Grid */}
          {blogPosts.length > 0 ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-12">
              {blogPosts.map((post) => (
                <article
                  key={post.slug}
                  className="bg-white rounded-lg border border-gray-200 overflow-hidden hover:shadow-lg transition-shadow duration-200"
                >
                  <Link href={`/blog/${post.slug}`}>
                    <div className="relative h-48 w-full bg-gray-100">
                      <Image
                        src={post.image}
                        alt={post.title}
                        fill
                        className="object-cover"
                        sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                      />
                    </div>
                    <div className="p-6">
                      <div className="flex items-center gap-4 text-sm text-gray-500 mb-3">
                        <span className="px-3 py-1 bg-primary-100 text-primary-700 rounded-full text-xs font-semibold">
                          {post.category}
                        </span>
                        <div className="flex items-center gap-1">
                          <Calendar className="w-4 h-4" />
                          <time dateTime={post.date.toISOString()}>
                            {post.date.toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' })}
                          </time>
                        </div>
                        <div className="flex items-center gap-1">
                          <Clock className="w-4 h-4" />
                          <span>{post.readTime}</span>
                        </div>
                      </div>
                      <h2 className="text-xl font-bold mb-2 text-gray-900 hover:text-primary-600 transition-colors">
                        {post.title}
                      </h2>
                      <p className="text-gray-600 mb-4 line-clamp-3">
                        {post.excerpt}
                      </p>
                      <span className="text-primary-600 font-semibold text-sm inline-flex items-center gap-1 hover:gap-2 transition-all">
                        Read More
                        <ArrowRight className="w-4 h-4" />
                      </span>
                    </div>
                  </Link>
                </article>
              ))}
            </div>
          ) : (
            <div className="text-center py-16">
              <p className="text-gray-600 text-lg mb-4">No blog posts yet. Check back soon!</p>
              <Link href="/guides" className="btn-primary inline-flex">
                Browse Guides
              </Link>
            </div>
          )}

          {/* CTA Section */}
          <div className="mt-20 bg-gray-50 rounded-2xl p-8 md:p-12 text-center">
            <h2 className="text-3xl font-bold mb-4 text-gray-900">Want to Contribute?</h2>
            <p className="text-lg text-gray-600 mb-6 max-w-2xl mx-auto">
              Have a metallography tip, case study, or technique to share? We'd love to feature your expertise.
            </p>
            <Link href="/contact" className="btn-primary">
              Contact Us
            </Link>
          </div>
        </div>
      </div>
    </>
  )
}

