import { notFound } from 'next/navigation'
import Link from 'next/link'
import { getMaterialBySlug, getAllMaterials } from '@/lib/supabase'
import type { Metadata } from 'next'
import MaterialTabs from './MaterialTabs'
import AdminEditButton from './AdminEditButton'

interface MaterialPageProps {
  params: Promise<{
    slug: string
  }>
}

export async function generateStaticParams() {
  try {
    const materials = await getAllMaterials()
    return materials
      .filter((material) => material.slug) // Only include materials with slugs
      .map((material) => ({
        slug: material.slug!,
      }))
  } catch (error) {
    console.error('Error generating static params:', error)
    return []
  }
}

export async function generateMetadata({ params }: MaterialPageProps): Promise<Metadata> {
  const { slug } = await params
  const material = await getMaterialBySlug(slug)
  
  if (!material) {
    return {
      title: 'Material Not Found | Metallography.org',
    }
  }

  return {
    title: `${material.name} - Materials Database | Metallography.org`,
    description: `Material properties and preparation information for ${material.name}. ${material.category} with ${material.microstructure} microstructure.`,
  }
}

export default async function MaterialPage({ params }: MaterialPageProps) {
  const { slug } = await params
  const material = await getMaterialBySlug(slug)

  if (!material) {
    notFound()
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Breadcrumb */}
        <nav className="text-sm text-gray-600 mb-4">
          <Link href="/">Home</Link> / <Link href="/materials">Materials Database</Link> / {material.name}
        </nav>

        {/* Header */}
        <header className="mb-6">
          <div className="flex items-start justify-between gap-4">
            <div className="flex-1">
              <h1 className="text-3xl font-bold mb-1">{material.name}</h1>
              <p className="text-lg text-gray-600">{material.category}</p>
            </div>
            <AdminEditButton materialId={material.id} />
          </div>
        </header>

        {/* Tabbed Content */}
        <div className="bg-white border-2 border-gray-200 rounded-lg p-6">
          <MaterialTabs material={material} />
        </div>

        {/* Related Guides */}
        <div className="bg-gray-50 border border-gray-200 rounded-lg p-6 mt-8">
          <h3 className="text-lg font-semibold mb-4">Related Preparation Guides</h3>
          <div className="space-y-2">
            {material.category.includes('Titanium') && (
              <Link href="/guides/titanium-preparation" className="block text-primary-600 hover:text-primary-700 hover:underline">
                → Titanium Preparation Guide
              </Link>
            )}
            {material.category.includes('Stainless Steel') && (
              <Link href="/guides/stainless-steel-preparation" className="block text-primary-600 hover:text-primary-700 hover:underline">
                → Stainless Steel Preparation Guide
              </Link>
            )}
            {material.category.includes('Aluminum') && (
              <Link href="/guides/aluminum-sample-preparation" className="block text-primary-600 hover:text-primary-700 hover:underline">
                → Aluminum Sample Preparation Guide
              </Link>
            )}
            {material.category.includes('Copper') && (
              <Link href="/guides/copper-alloys-preparation" className="block text-primary-600 hover:text-primary-700 hover:underline">
                → Copper Alloys Preparation Guide
              </Link>
            )}
            {material.category.includes('Carbon Steel') && (
              <Link href="/guides/carbon-steel-preparation" className="block text-primary-600 hover:text-primary-700 hover:underline">
                → Carbon Steel Preparation Guide
              </Link>
            )}
            <Link href="/guides" className="block text-primary-600 hover:text-primary-700 hover:underline">
              → View All Guides
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

