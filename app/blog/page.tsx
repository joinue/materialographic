import type { Metadata } from 'next'
import Link from 'next/link'
import { getPublishedBlogPosts } from '@/lib/supabase'
import BlogClient from '@/components/BlogClient'
import NewsletterSubscription from '@/components/NewsletterSubscription'

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

export default async function BlogPage() {
  // Fetch blog posts from database
  let blogPosts: Awaited<ReturnType<typeof getPublishedBlogPosts>> = []
  try {
    blogPosts = await getPublishedBlogPosts()
  } catch (error: any) {
    console.error('Error fetching blog posts:', error)
    // If table doesn't exist, return empty array
    if (error?.code === '42P01' || error?.message?.includes('does not exist')) {
      console.warn('Blog posts table does not exist yet. Please run the migration.')
    }
    // Fallback to empty array if database is not available
    blogPosts = []
  }

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
          datePublished: post.published_at || post.created_at || new Date().toISOString(),
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
      <div className="min-h-screen bg-white">
        <div className="container-custom max-w-5xl mx-auto py-6 md:py-8">
          {/* Compact Header */}
          <header className="mb-4 md:mb-6">
            <h1 className="text-2xl md:text-3xl font-bold mb-1 text-gray-900">
              Metallography Blog
            </h1>
            <p className="text-sm md:text-base text-gray-600">
              Expert tips, techniques, case studies, and industry news.
            </p>
          </header>

          {/* Blog Client Component with Search, Filtering, and Pagination */}
          {blogPosts.length > 0 ? (
            <BlogClient initialPosts={blogPosts} />
          ) : (
            <div className="text-center py-12">
              <p className="text-gray-600 mb-4">No blog posts yet. Check back soon!</p>
              <Link href="/guides" className="btn-primary inline-flex">
                Browse Guides
              </Link>
            </div>
          )}

          {/* Newsletter Subscription */}
          {blogPosts.length > 0 && <NewsletterSubscription />}

          {/* CTA Section */}
          <div className="mt-12 bg-gradient-to-br from-gray-50 to-gray-100 rounded-xl p-6 md:p-8 text-center border border-gray-200">
            <h2 className="text-xl md:text-2xl font-bold mb-2 text-gray-900">Want to Contribute?</h2>
            <p className="text-sm md:text-base text-gray-600 mb-4 max-w-2xl mx-auto">
              Have a metallography tip, case study, or technique to share? We'd love to feature your expertise.
            </p>
            <Link href="/contact" className="btn-primary text-sm px-6 py-2.5">
              Contact Us
            </Link>
          </div>
        </div>
      </div>
    </>
  )
}

