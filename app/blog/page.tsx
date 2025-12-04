import Link from 'next/link'
import { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Metallography Blog | Tips, Techniques & Industry News',
  description: 'Read the latest articles, tips, and techniques for metallographic sample preparation. Stay updated with industry best practices.',
}

const blogPosts = [
  {
    title: '5 Common Mistakes in Sample Preparation and How to Avoid Them',
    slug: 'common-mistakes-sample-preparation',
    excerpt: 'Learn about the most frequent errors in metallographic sample preparation and practical solutions to prevent them.',
    date: '2024-01-15',
    category: 'Tips & Techniques',
  },
  {
    title: 'Understanding Grit Sizes: A Complete Guide',
    slug: 'understanding-grit-sizes',
    excerpt: 'Everything you need to know about grit sizes, standards, and how to choose the right abrasive for your application.',
    date: '2024-01-08',
    category: 'Education',
  },
  {
    title: 'The Science Behind Effective Polishing',
    slug: 'science-behind-polishing',
    excerpt: 'Explore the material science principles that make polishing effective and how to optimize your polishing process.',
    date: '2024-01-01',
    category: 'Education',
  },
  {
    title: 'New Techniques for Preparing Soft Materials',
    slug: 'soft-materials-preparation',
    excerpt: 'Latest methods and best practices for preparing soft materials like aluminum and copper without deformation.',
    date: '2023-12-20',
    category: 'Techniques',
  },
  {
    title: 'Etching: When, Why, and How',
    slug: 'etching-guide',
    excerpt: 'A comprehensive guide to etching techniques, reagent selection, and troubleshooting common etching problems.',
    date: '2023-12-10',
    category: 'Education',
  },
  {
    title: 'Maintaining Your Equipment for Optimal Results',
    slug: 'equipment-maintenance',
    excerpt: 'Essential maintenance tips to keep your metallography equipment performing at its best.',
    date: '2023-12-01',
    category: 'Tips & Techniques',
  },
]

export default function BlogPage() {
  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-3xl mx-auto mb-12 text-center">
          <h1 className="text-4xl font-bold mb-4">Metallography Blog</h1>
          <p className="text-xl text-gray-600">
            Tips, techniques, and insights for metallographic sample preparation
          </p>
        </div>

        {/* Blog Posts */}
        <div className="max-w-4xl mx-auto space-y-8">
          {blogPosts.map((post) => (
            <article key={post.slug} className="card">
              <div className="flex items-center gap-4 mb-3">
                <span className="text-xs font-semibold text-primary-600 uppercase tracking-wide bg-primary-50 px-2 py-1 rounded">
                  {post.category}
                </span>
                <time className="text-sm text-gray-500" dateTime={post.date}>
                  {new Date(post.date).toLocaleDateString('en-US', { 
                    year: 'numeric', 
                    month: 'long', 
                    day: 'numeric' 
                  })}
                </time>
              </div>
              <h2 className="text-2xl font-semibold mb-3">
                <Link href={`/blog/${post.slug}`} className="hover:text-primary-600">
                  {post.title}
                </Link>
              </h2>
              <p className="text-gray-600 mb-4">{post.excerpt}</p>
              <Link 
                href={`/blog/${post.slug}`}
                className="text-primary-600 font-semibold hover:text-primary-700"
              >
                Read More →
              </Link>
            </article>
          ))}
        </div>

        {/* Newsletter Signup */}
        <div className="mt-16 bg-gradient-to-br from-primary-50 to-primary-100 rounded-lg p-8 max-w-3xl mx-auto text-center">
          <h2 className="text-2xl font-bold mb-4">Stay Updated</h2>
          <p className="text-gray-700 mb-6">
            Get the latest articles, tips, and resources delivered to your inbox.
          </p>
          <form className="flex flex-col sm:flex-row gap-4 max-w-md mx-auto">
            <input
              type="email"
              placeholder="Enter your email"
              className="flex-1 px-4 py-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-primary-500"
            />
            <button type="submit" className="btn-primary whitespace-nowrap">
              Subscribe
            </button>
          </form>
        </div>
      </div>
    </div>
  )
}

