import Link from 'next/link'
import { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Metallography Tools & Calculators | Metallography.org',
  description: 'Free tools and calculators for metallographic sample preparation including grit conversion, time calculators, and more.',
}

const tools = [
  {
    title: 'Grit Size Converter',
    description: 'Convert between different grit size standards (FEPA, ANSI, JIS, micron).',
    icon: '🔢',
    comingSoon: false,
  },
  {
    title: 'Polishing Time Calculator',
    description: 'Calculate optimal polishing times based on material and grit size.',
    icon: '⏱️',
    comingSoon: true,
  },
  {
    title: 'Etchant Selector',
    description: 'Find the right etchant for your material and application.',
    icon: '🧪',
    comingSoon: true,
  },
  {
    title: 'Procedure Tool',
    description: 'Save, organize, and get recommendations for your preparation procedures.',
    icon: '📋',
    external: true,
    href: 'https://materialsprep.com',
  },
]

export default function ToolsPage() {
  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-3xl mx-auto mb-12 text-center">
          <h1 className="text-4xl font-bold mb-4">Tools & Calculators</h1>
          <p className="text-xl text-gray-600">
            Free practical tools to help with your metallographic sample preparation work
          </p>
        </div>

        {/* Tools Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-4xl mx-auto">
          {tools.map((tool, index) => (
            <div key={index} className="card text-center">
              <div className="text-5xl mb-4">{tool.icon}</div>
              <h3 className="text-xl font-semibold mb-2">{tool.title}</h3>
              <p className="text-gray-600 text-sm mb-4">{tool.description}</p>
              {tool.comingSoon ? (
                <span className="text-gray-400 font-semibold">Coming Soon</span>
              ) : tool.external ? (
                <Link 
                  href={tool.href || '#'}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-primary"
                >
                  Use Tool →
                </Link>
              ) : (
                <Link href={`/tools/${tool.title.toLowerCase().replace(/\s+/g, '-')}`} className="btn-primary">
                  Use Tool →
                </Link>
              )}
            </div>
          ))}
        </div>

        {/* Featured Tool */}
        <div className="mt-16 bg-primary-600 text-white rounded-lg p-8 max-w-4xl mx-auto">
          <div className="flex flex-col md:flex-row items-center gap-6">
            <div className="text-6xl">📋</div>
            <div className="flex-1">
              <h2 className="text-2xl font-bold mb-3">Procedure Tool</h2>
              <p className="text-primary-100 mb-4">
                Our comprehensive procedure management tool lets you save, organize, and get 
                personalized recommendations for your preparation methods. Track your procedures, 
                get product suggestions, and optimize your workflow.
              </p>
              <Link 
                href="https://materialsprep.com"
                target="_blank"
                rel="noopener noreferrer"
                className="bg-white text-primary-600 px-6 py-2.5 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl hover:scale-105"
              >
                Try Procedure Tool Free →
              </Link>
            </div>
          </div>
        </div>

        {/* CTA Section */}
        <div className="mt-12 bg-gray-50 rounded-lg p-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Looking for More Resources?</h2>
          <p className="text-gray-700 mb-6">
            Check out our comprehensive guides and downloadable resources.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/guides" className="btn-primary">
              Browse Guides
            </Link>
            <Link href="/resources" className="btn-secondary">
              View Resources
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

