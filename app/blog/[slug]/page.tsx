import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import Link from 'next/link'
import Image from 'next/image'
import { Calendar, Clock, ArrowLeft } from 'lucide-react'

// Blog post data - in a real app, this would come from a CMS or database
const blogPosts: Record<string, {
  title: string
  content: string
  excerpt: string
  date: Date
  readTime: string
  category: string
  image: string
  author?: string
}> = {
  'coming-soon': {
    title: 'Welcome to the Metallography.org Blog',
    excerpt: 'We\'re building a comprehensive blog with tips, techniques, case studies, and industry news.',
    content: `
      <p>Welcome to the Metallography.org blog! We're excited to share expert insights, practical tips, and industry news with the metallography community.</p>
      
      <h2>What to Expect</h2>
      <p>Our blog will feature:</p>
      <ul>
        <li><strong>Tips & Techniques:</strong> Practical advice for improving your sample preparation workflow</li>
        <li><strong>Case Studies:</strong> Real-world examples of metallographic analysis and problem-solving</li>
        <li><strong>Industry News:</strong> Updates on standards, equipment, and metallography trends</li>
        <li><strong>Expert Interviews:</strong> Insights from experienced metallographers</li>
        <li><strong>Best Practices:</strong> Proven methods for consistent, high-quality results</li>
      </ul>
      
      <p>Check back soon for our first articles, or explore our comprehensive <Link href="/guides">sample preparation guides</Link> in the meantime.</p>
    `,
    date: new Date('2024-01-15'),
    readTime: '2 min read',
    category: 'Announcement',
    image: '/logo.png',
    author: 'Metallography.org Team',
  },
}

export async function generateStaticParams() {
  return Object.keys(blogPosts).map((slug) => ({
    slug,
  }))
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
  const { slug } = await params
  const post = blogPosts[slug]
  
  if (!post) {
    return {
      title: 'Post Not Found',
    }
  }

  return {
    title: `${post.title} | Metallography.org Blog`,
    description: post.excerpt,
    keywords: [
      'metallography',
      'sample preparation',
      'metallographic analysis',
      post.category.toLowerCase(),
    ],
    openGraph: {
      title: post.title,
      description: post.excerpt,
      url: `https://metallography.org/blog/${slug}`,
      siteName: 'Metallography.org',
      images: [
        {
          url: post.image,
          width: 1200,
          height: 630,
          alt: post.title,
        },
      ],
      locale: 'en_US',
      type: 'article',
      publishedTime: post.date.toISOString(),
      authors: post.author ? [post.author] : undefined,
      tags: [post.category],
    },
    twitter: {
      card: 'summary_large_image',
      title: post.title,
      description: post.excerpt,
      images: [post.image],
    },
    alternates: {
      canonical: `https://metallography.org/blog/${slug}`,
    },
  }
}

export default async function BlogPostPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params
  const post = blogPosts[slug]

  if (!post) {
    notFound()
  }

  // Article structured data
  const articleStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'BlogPosting',
    headline: post.title,
    description: post.excerpt,
    image: `https://metallography.org${post.image}`,
    datePublished: post.date.toISOString(),
    dateModified: post.date.toISOString(),
    author: {
      '@type': 'Organization',
      name: post.author || 'Metallography.org',
    },
    publisher: {
      '@type': 'Organization',
      name: 'Metallography.org',
      logo: {
        '@type': 'ImageObject',
        url: 'https://metallography.org/logo.png',
      },
    },
    mainEntityOfPage: {
      '@type': 'WebPage',
      '@id': `https://metallography.org/blog/${slug}`,
    },
    articleSection: post.category,
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
      {
        '@type': 'ListItem',
        position: 3,
        name: post.title,
        item: `https://metallography.org/blog/${slug}`,
      },
    ],
  }

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(articleStructuredData) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(breadcrumbStructuredData) }}
      />
      <article className="py-12">
        <div className="container-custom">
          <div className="max-w-4xl mx-auto">
            {/* Back Button */}
            <Link
              href="/blog"
              className="inline-flex items-center gap-2 text-gray-600 hover:text-primary-600 mb-6 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              Back to Blog
            </Link>

            {/* Header */}
            <header className="mb-8">
              <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
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
                {post.author && (
                  <span>by {post.author}</span>
                )}
              </div>
              <h1 className="text-4xl md:text-5xl font-bold mb-4 text-gray-900">{post.title}</h1>
            </header>

            {/* Featured Image */}
            <div className="relative h-64 md:h-96 w-full mb-8 rounded-lg overflow-hidden">
              <Image
                src={post.image}
                alt={post.title}
                fill
                className="object-cover"
                sizes="(max-width: 768px) 100vw, 896px"
                priority
              />
            </div>

            {/* Content */}
            <div
              className="prose prose-lg max-w-none"
              dangerouslySetInnerHTML={{ __html: post.content }}
            />

            {/* CTA */}
            <div className="mt-12 p-6 bg-gray-50 rounded-lg">
              <h3 className="text-xl font-bold mb-2 text-gray-900">Want to Learn More?</h3>
              <p className="text-gray-600 mb-4">
                Explore our comprehensive guides for detailed step-by-step instructions on sample preparation techniques.
              </p>
              <Link href="/guides" className="btn-primary">
                Browse Guides
              </Link>
            </div>
          </div>
        </div>
      </article>
    </>
  )
}

