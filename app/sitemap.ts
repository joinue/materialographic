import { MetadataRoute } from 'next'
import { guides } from '@/data/guides'
import { getAllMaterials, getAllEtchants, getAllStandards, getPublishedBlogPosts } from '@/lib/supabase'

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = 'https://metallography.org'
  const now = new Date()
  
  // Generate guide URLs
  const guideUrls = guides.map(guide => ({
    url: guide.slug === 'troubleshooting-common-issues' 
      ? `${baseUrl}/resources/troubleshooting-guide`
      : `${baseUrl}/guides/${guide.slug}`,
    lastModified: now,
    changeFrequency: 'monthly' as const,
    priority: guide.category === 'Material-Specific' || guide.category === 'Application-Specific' ? 0.8 : 0.7,
  }))

  // Fetch dynamic content
  let blogPosts: Awaited<ReturnType<typeof getPublishedBlogPosts>> = []
  let materials: Awaited<ReturnType<typeof getAllMaterials>> = []
  let etchants: Awaited<ReturnType<typeof getAllEtchants>> = []
  let standards: Awaited<ReturnType<typeof getAllStandards>> = []

  try {
    blogPosts = await getPublishedBlogPosts()
  } catch (error) {
    console.error('Error fetching blog posts for sitemap:', error)
  }

  try {
    materials = await getAllMaterials()
  } catch (error) {
    console.error('Error fetching materials for sitemap:', error)
  }

  try {
    etchants = await getAllEtchants()
  } catch (error) {
    console.error('Error fetching etchants for sitemap:', error)
  }

  try {
    standards = await getAllStandards()
  } catch (error) {
    console.error('Error fetching standards for sitemap:', error)
  }

  // Generate blog post URLs
  const blogPostUrls = blogPosts.map(post => ({
    url: `${baseUrl}/blog/${post.slug}`,
    lastModified: post.updated_at ? new Date(post.updated_at) : post.published_at ? new Date(post.published_at) : now,
    changeFrequency: 'monthly' as const,
    priority: 0.7,
  }))

  // Generate material URLs
  const materialUrls = materials
    .filter(material => material.slug) // Only include materials with slugs
    .map(material => ({
      url: `${baseUrl}/materials/${material.slug}`,
      lastModified: material.updated_at ? new Date(material.updated_at) : material.created_at ? new Date(material.created_at) : now,
      changeFrequency: 'monthly' as const,
      priority: 0.7,
    }))

  // Generate etchant URLs
  const etchantUrls = etchants
    .filter(etchant => etchant.status === 'published' && etchant.slug)
    .map(etchant => ({
      url: `${baseUrl}/etchants/${etchant.slug}`,
      lastModified: etchant.updated_at ? new Date(etchant.updated_at) : etchant.created_at ? new Date(etchant.created_at) : now,
      changeFrequency: 'monthly' as const,
      priority: 0.7,
    }))

  // Generate standard URLs
  const standardUrls = standards
    .filter(standard => standard.status === 'published' && standard.slug)
    .map(standard => ({
      url: `${baseUrl}/standards/${standard.slug}`,
      lastModified: standard.updated_at ? new Date(standard.updated_at) : standard.created_at ? new Date(standard.created_at) : now,
      changeFrequency: 'monthly' as const,
      priority: 0.7,
    }))
  
  return [
    {
      url: baseUrl,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 1,
    },
    {
      url: `${baseUrl}/guides`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.9,
    },
    ...guideUrls,
    {
      url: `${baseUrl}/resources`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.8,
    },
    // Individual resource pages
    {
      url: `${baseUrl}/resources/checklist`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/grit-size-chart`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/common-etchants-guide`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/hardness-scale-conversion`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/astm-standards-reference`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/safety-data-sheet-reference`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/microscope-magnification-guide`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/material-preparation-guide`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/polishing-cloth-guide`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/pace-youtube-channel`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/resources/troubleshooting-guide`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: `${baseUrl}/glossary`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.8,
    },
    {
      url: `${baseUrl}/tools`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.7,
    },
    {
      url: `${baseUrl}/builder`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.9,
    },
    {
      url: `${baseUrl}/materials`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.8,
    },
    ...materialUrls,
    {
      url: `${baseUrl}/etchants`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.8,
    },
    ...etchantUrls,
    {
      url: `${baseUrl}/standards`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.8,
    },
    ...standardUrls,
    {
      url: `${baseUrl}/about`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.6,
    },
    {
      url: `${baseUrl}/contact`,
      lastModified: now,
      changeFrequency: 'monthly',
      priority: 0.6,
    },
    {
      url: `${baseUrl}/blog`,
      lastModified: now,
      changeFrequency: 'weekly',
      priority: 0.7,
    },
    ...blogPostUrls,
  ]
}

