import Link from 'next/link'
import { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Free Metallography Resources | Checklists, PDFs & Reference Materials',
  description: 'Download free metallography resources including checklists, reference guides, and educational materials for sample preparation.',
}

const resources = [
  {
    title: 'Sample Preparation Checklist',
    description: 'A comprehensive checklist to ensure you follow all steps in the preparation process.',
    type: 'PDF',
    download: true,
  },
  {
    title: 'Grit Size Conversion Chart',
    description: 'Reference chart for converting between different grit size standards (FEPA, ANSI, JIS).',
    type: 'PDF',
    download: true,
  },
  {
    title: 'Common Etchants Reference Guide',
    description: 'Quick reference guide to common etching reagents and their applications.',
    type: 'PDF',
    download: true,
  },
  {
    title: 'Troubleshooting Quick Reference',
    description: 'One-page guide to identifying and solving common preparation problems.',
    type: 'PDF',
    download: true,
  },
  {
    title: 'Material-Specific Preparation Guide',
    description: 'Comprehensive guide covering preparation techniques for various material types.',
    type: 'PDF',
    download: true,
  },
  {
    title: 'Polishing Cloth Selection Guide',
    description: 'Guide to selecting the right polishing cloth for your application.',
    type: 'PDF',
    download: true,
  },
]

export default function ResourcesPage() {
  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-3xl mx-auto mb-12 text-center">
          <h1 className="text-4xl font-bold mb-4">Free Resources</h1>
          <p className="text-xl text-gray-600">
            Downloadable checklists, reference guides, and educational materials to support your metallography work
          </p>
        </div>

        {/* Resources Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-5xl mx-auto">
          {resources.map((resource, index) => {
            const isChecklist = resource.title === 'Sample Preparation Checklist'
            const isGritChart = resource.title === 'Grit Size Conversion Chart'
            return (
              <div key={index} className="card">
                <div className="flex items-start justify-between mb-3">
                  <span className="text-xs font-semibold text-primary-600 uppercase tracking-wide bg-primary-50 px-2 py-1 rounded">
                    {resource.type}
                  </span>
                  {resource.download && (
                    <span className="text-xs text-gray-500">Free Download</span>
                  )}
                </div>
                <h3 className="text-xl font-semibold mb-2">{resource.title}</h3>
                <p className="text-gray-600 text-sm mb-4">{resource.description}</p>
                {isChecklist ? (
                  <Link 
                    href="/resources/checklist" 
                    className="text-primary-600 font-semibold hover:text-primary-700 inline-flex items-center gap-1"
                  >
                    View & Download →
                  </Link>
                ) : isGritChart ? (
                  <Link 
                    href="/resources/grit-size-chart" 
                    className="text-primary-600 font-semibold hover:text-primary-700 inline-flex items-center gap-1"
                  >
                    View & Download →
                  </Link>
                ) : (
                  <button className="text-primary-600 font-semibold hover:text-primary-700">
                    Download →
                  </button>
                )}
              </div>
            )
          })}
        </div>

        {/* Newsletter Signup */}
        <div className="mt-16 bg-gradient-to-br from-primary-50 to-primary-100 rounded-lg p-8 max-w-3xl mx-auto text-center">
          <h2 className="text-2xl font-bold mb-4">Get New Resources Delivered</h2>
          <p className="text-gray-700 mb-6">
            Subscribe to our newsletter and receive new guides, resources, and tips directly in your inbox.
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
          <p className="text-xs text-gray-600 mt-4">
            We respect your privacy. Unsubscribe at any time.
          </p>
        </div>

        {/* CTA Section */}
        <div className="mt-12 bg-gray-50 rounded-lg p-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Need More Help?</h2>
          <p className="text-gray-700 mb-6">
            Browse our comprehensive guides or use our procedure tool to save and manage your preparation methods.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/guides" className="btn-primary">
              Browse Guides
            </Link>
            <Link 
              href="https://materialsprep.com"
              target="_blank"
              rel="noopener noreferrer"
              className="btn-secondary"
            >
              Try Procedure Tool
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

