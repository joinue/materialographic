import { Metadata } from 'next'
import { guides, type Guide } from '@/data/guides'

export function getGuideMetadata(guide: Guide): Metadata {
  const url = `https://metallography.org/guides/${guide.slug}`
  const imageUrl = guide.microstructureImage 
    ? `https://metallography.org${guide.microstructureImage}`
    : 'https://metallography.org/logo.png'

  return {
    title: `${guide.title} | Metallography.org`,
    description: guide.description,
    keywords: [
      guide.title.toLowerCase(),
      guide.category.toLowerCase(),
      'metallography',
      'sample preparation',
      'metallographic analysis',
      'microstructure analysis',
      ...(guide.category === 'Material-Specific' ? [guide.title.split(' ')[0].toLowerCase() + ' preparation'] : []),
      ...(guide.category === 'Process' ? ['grinding', 'polishing', 'etching', 'mounting', 'sectioning'] : []),
    ],
    openGraph: {
      title: `${guide.title} | Metallography.org`,
      description: guide.description,
      url,
      siteName: 'Metallography.org',
      images: [
        {
          url: imageUrl,
          width: guide.microstructureImage ? 600 : 1200,
          height: guide.microstructureImage ? 450 : 630,
          alt: `${guide.title} - Metallographic sample preparation guide`,
        },
      ],
      locale: 'en_US',
      type: 'article',
    },
    twitter: {
      card: 'summary_large_image',
      title: guide.title,
      description: guide.description,
      images: [imageUrl],
    },
    alternates: {
      canonical: url,
    },
  }
}

export function getGuideStructuredData(guide: Guide) {
  const url = `https://metallography.org/guides/${guide.slug}`
  const imageUrl = guide.microstructureImage 
    ? `https://metallography.org${guide.microstructureImage}`
    : 'https://metallography.org/logo.png'

  // Use December 4, 2025 as publication date and December 5, 2025 as modified date
  const datePublished = '2025-12-04'
  const dateModified = '2025-12-05'

  // Article structured data
  const articleStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: guide.title,
    description: guide.description,
    image: imageUrl,
    author: {
      '@type': 'Organization',
      name: 'Metallography.org',
    },
    publisher: {
      '@type': 'Organization',
      name: 'Metallography.org',
      logo: {
        '@type': 'ImageObject',
        url: 'https://metallography.org/logo.png',
      },
    },
    datePublished,
    dateModified,
    mainEntityOfPage: {
      '@type': 'WebPage',
      '@id': url,
    },
    articleSection: guide.category,
    about: {
      '@type': 'Thing',
      name: guide.title,
    },
  }

  // Course structured data
  const courseStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'Course',
    name: guide.title,
    description: guide.description,
    provider: {
      '@type': 'Organization',
      name: 'Metallography.org',
    },
    educationalLevel: guide.difficulty,
    timeRequired: `PT${guide.readTime.match(/\d+/)?.[0] || '15'}M`,
    courseCode: `MET-${guide.slug.toUpperCase().replace(/-/g, '-')}`,
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
      {
        '@type': 'ListItem',
        position: 3,
        name: guide.title,
        item: url,
      },
    ],
  }

  // HowTo structured data for Process category guides
  const howToStructuredData = guide.category === 'Process' ? getHowToSchema(guide, url, imageUrl) : null

  return {
    articleStructuredData,
    courseStructuredData,
    breadcrumbStructuredData,
    howToStructuredData,
  }
}

function getHowToSchema(guide: Guide, url: string, imageUrl: string) {
  // Define process-specific steps based on guide slug
  const processSteps: Record<string, Array<{ name: string; text: string }>> = {
    'sectioning': [
      {
        name: 'Select appropriate sectioning method',
        text: 'Choose between abrasive sectioning for most materials or precision wafering for delicate samples.',
      },
      {
        name: 'Select blade type',
        text: 'Choose abrasive blade or diamond blade based on material hardness and cutting requirements.',
      },
      {
        name: 'Configure cutting parameters',
        text: 'Set appropriate cutting speed, pressure, and cooling to minimize damage and heat generation.',
      },
      {
        name: 'Perform the cut',
        text: 'Execute the cut using proper technique, maintaining consistent pressure and adequate cooling.',
      },
      {
        name: 'Inspect and clean sample',
        text: 'Examine the cut surface for damage and clean the sample before proceeding to mounting or grinding.',
      },
    ],
    'mounting': [
      {
        name: 'Prepare the sample',
        text: 'Clean and dry the sample, ensuring it is free of contaminants before mounting.',
      },
      {
        name: 'Select mounting method',
        text: 'Choose compression mounting for most applications or castable mounting for delicate or porous samples.',
      },
      {
        name: 'Select mounting material',
        text: 'Choose appropriate resin based on material properties, edge retention needs, and application requirements.',
      },
      {
        name: 'Perform mounting',
        text: 'Mount the sample following proper procedures for your chosen method, ensuring good edge retention.',
      },
      {
        name: 'Cure and finish',
        text: 'Allow proper curing time and finish the mount surface if needed before proceeding to grinding.',
      },
    ],
    'grinding-techniques': [
      {
        name: 'Select starting grit',
        text: 'Choose the appropriate starting grit size based on sectioning damage and material hardness.',
      },
      {
        name: 'Set up grinding equipment',
        text: 'Prepare grinding surface, ensure proper lubrication, and set appropriate pressure.',
      },
      {
        name: 'Begin progressive grinding',
        text: 'Start with coarsest grit needed, grinding until previous damage is removed and uniform scratch pattern is achieved.',
      },
      {
        name: 'Progress through grit sequence',
        text: 'Move to progressively finer grits, ensuring each step removes scratches from previous step.',
      },
      {
        name: 'Complete final grinding step',
        text: 'Finish with fine grit (typically 600-800) to prepare surface for polishing.',
      },
    ],
    'polishing-methods': [
      {
        name: 'Select polishing method',
        text: 'Choose diamond polishing, oxide polishing, or combination approach based on material and requirements.',
      },
      {
        name: 'Prepare polishing surface',
        text: 'Set up appropriate polishing cloth and apply polishing compound or suspension.',
      },
      {
        name: 'Perform rough polishing',
        text: 'Use coarse diamond paste or suspension to remove grinding scratches and create smooth surface.',
      },
      {
        name: 'Perform fine polishing',
        text: 'Progress to finer polishing steps using finer abrasives to achieve mirror-like finish.',
      },
      {
        name: 'Inspect and clean',
        text: 'Examine surface under microscope for remaining scratches or defects, clean thoroughly before etching.',
      },
    ],
    'etching-procedures': [
      {
        name: 'Select appropriate etchant',
        text: 'Choose etchant based on material type and microstructural features you want to reveal.',
      },
      {
        name: 'Prepare etchant solution',
        text: 'Mix etchant according to specifications, ensuring proper concentration and freshness.',
      },
      {
        name: 'Clean sample surface',
        text: 'Ensure sample is thoroughly cleaned and free of contaminants before etching.',
      },
      {
        name: 'Apply etchant',
        text: 'Apply etchant using appropriate method (swabbing, immersion, or electrolytic) for specified time.',
      },
      {
        name: 'Stop and clean',
        text: 'Stop etching process, immediately rinse and clean sample to prevent over-etching.',
      },
      {
        name: 'Examine results',
        text: 'Inspect microstructure under microscope to verify proper etching and adjust if needed.',
      },
    ],
    'microstructural-analysis': [
      {
        name: 'Prepare sample for microscopy',
        text: 'Ensure sample is properly prepared through sectioning, mounting, grinding, polishing, and etching steps.',
      },
      {
        name: 'Select appropriate microscope',
        text: 'Choose optical microscope for routine analysis or SEM/TEM for advanced characterization needs.',
      },
      {
        name: 'Set up microscope',
        text: 'Configure illumination, magnification, and imaging settings for optimal observation.',
      },
      {
        name: 'Examine microstructure',
        text: 'Systematically examine the sample, identifying grains, phases, and microstructural features.',
      },
      {
        name: 'Document observations',
        text: 'Capture photomicrographs and record observations for analysis and reporting.',
      },
      {
        name: 'Interpret results',
        text: 'Analyze microstructure to understand material properties, processing history, and quality.',
      },
    ],
  }

  const steps = processSteps[guide.slug] || [
    {
      name: 'Review guide content',
      text: `Follow the comprehensive guide on ${guide.title.toLowerCase()} for detailed procedures and best practices.`,
    },
  ]

  return {
    '@context': 'https://schema.org',
    '@type': 'HowTo',
    name: guide.title,
    description: guide.description,
    image: imageUrl,
    totalTime: `PT${guide.readTime.match(/\d+/)?.[0] || '15'}M`,
    step: steps.map((step, index) => ({
      '@type': 'HowToStep',
      position: index + 1,
      name: step.name,
      text: step.text,
      url: `${url}#step-${index + 1}`,
    })),
  }
}

export function getGuideBySlug(slug: string): Guide | undefined {
  return guides.find(g => g.slug === slug)
}

