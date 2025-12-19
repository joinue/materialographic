import Link from 'next/link'
import Image from 'next/image'
import CTA from '@/components/CTA'
import AnimateOnScroll from '@/components/AnimateOnScroll'
import FAQAccordion from '@/components/FAQAccordion'
import OptimizedVideo from '@/components/OptimizedVideo'
import { getVideoUrlWithFallback } from '@/lib/video-urls'
import { ChevronRight, FileText, Settings, Wrench, Mail, Package, ArrowRight } from 'lucide-react'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Materialographic.com - Metallographic Sample Preparation Resources',
  description: 'Comprehensive metallography resources for sample preparation. Technical guides covering sectioning, mounting, grinding, polishing, and etching procedures. Material-specific protocols for carbon steel, stainless steel, aluminum, titanium, nickel alloys, copper, ceramics, composites, and more. Expert metallographic analysis resources, ASTM standards, troubleshooting guides, and preparation tools from PACE Technologies.',
  keywords: [
    'metallography', 'metallographic sample preparation', 'metallurgical analysis', 'microstructural analysis',
    'sample preparation', 'metallographic techniques', 'grinding techniques', 'polishing methods', 'etching procedures',
    'stainless steel preparation', 'aluminum sample preparation', 'titanium preparation', 'carbon steel preparation',
    'nickel alloy preparation', 'ceramic preparation', 'composite preparation', 'metallographic mounting',
    'sectioning techniques', 'metallographic polishing', 'metallographic etching', 'ASTM metallography standards',
    'metallographic consumables', 'metallographic equipment', 'grain size analysis', 'microstructure examination',
    'metallographic troubleshooting', 'sample preparation guide', 'metallography procedures', 'metallographic best practices',
    'PACE Technologies', 'materialographic'
  ],
  openGraph: {
    title: 'Materialographic.com - Metallographic Sample Preparation Resources',
    description: 'Comprehensive metallography resources for sample preparation. Technical guides covering sectioning, mounting, grinding, polishing, and etching procedures. Material-specific protocols for steels, aluminum, titanium, ceramics, and composites.',
    url: 'https://materialographic.com',
    siteName: 'Materialographic.com',
    images: [
      {
        url: '/images/pace/materialographic-logo.png',
        width: 1200,
        height: 630,
        alt: 'Materialographic.com - PACE Technologies Metallographic Resources',
      },
      // White logo variant for dark backgrounds (platforms may choose based on context)
      {
        url: '/images/pace/materialographic-logo-white.png',
        width: 1200,
        height: 630,
        alt: 'Materialographic.com - PACE Technologies Metallographic Resources',
      },
    ],
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Materialographic.com - Metallographic Sample Preparation Resources',
    description: 'Comprehensive technical guides and procedures for metallographic sample preparation. Material-specific protocols, ASTM standards, and troubleshooting resources from PACE Technologies.',
    images: ['/images/pace/materialographic-logo.png'],
  },
  alternates: {
    canonical: 'https://materialographic.com',
  },
}

export default function Home() {
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: 'Materialographic.com',
    url: 'https://materialographic.com',
    description: 'Comprehensive metallographic sample preparation resources. Expert guides, databases, and knowledge from PACE Technologies.',
    logo: {
      '@type': 'ImageObject',
      url: 'https://materialographic.com/images/pace/materialographic-logo.png',
      contentUrl: 'https://materialographic.com/images/pace/materialographic-logo.png',
      width: 512,
      height: 512,
    },
    publisher: {
      '@type': 'Organization',
      name: 'PACE Technologies',
      url: 'https://metallographic.com',
    },
    sameAs: [
      'https://metallographic.com',
      'https://shop.metallographic.com',
      'https://metallographic.com/equipment',
    ],
    hasOfferCatalog: {
      '@type': 'OfferCatalog',
      name: 'Metallographic Sample Preparation Resources',
      itemListElement: [
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Stainless Steel Preparation Guide',
            url: 'https://materialographic.com/guides/stainless-steel-preparation',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Aluminum Sample Preparation Guide',
            url: 'https://materialographic.com/guides/aluminum-sample-preparation',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Grinding Techniques Guide',
            url: 'https://materialographic.com/guides/grinding-techniques',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Polishing Methods Guide',
            url: 'https://materialographic.com/guides/polishing-methods',
          },
        },
        {
          '@type': 'Offer',
          itemOffered: {
            '@type': 'Course',
            name: 'Etching Procedures Guide',
            url: 'https://materialographic.com/guides/etching-procedures',
          },
        },
      ],
    },
  }

  const breadcrumbStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      {
        '@type': 'ListItem',
        position: 1,
        name: 'Home',
        item: 'https://materialographic.com',
      },
    ],
  }

  const websiteStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: 'Materialographic.com',
    url: 'https://materialographic.com',
    description: 'Next-generation UI/UX for metallography resources, guides, and reference materials for sample preparation and microstructural analysis from PACE Technologies',
    potentialAction: {
      '@type': 'SearchAction',
      target: {
        '@type': 'EntryPoint',
        urlTemplate: 'https://materialographic.com/search?q={search_term_string}',
      },
      'query-input': 'required name=search_term_string',
    },
  }

  const faqItems = [
    // NEED ASSESSMENT - "What do I need?" (Highest priority - people start here)
    {
      question: 'What equipment do I need for metallographic sample preparation?',
      answer: 'Essential equipment includes: sectioning equipment (abrasive cut-off saw or precision saw), mounting press (hot or cold mounting), grinding/polishing machine with variable speed, microscope for examination, and safety equipment. Consumables include grinding papers (120-1200 grit), diamond abrasives (6μm to 0.25μm), polishing cloths, mounting resins, and etchants specific to the material being analyzed. The specific equipment depends on your throughput, materials, and application requirements. Use our Build Your Lab tool to get personalized recommendations based on your needs.',
    },
    {
      question: 'What equipment do I need for EBSD sample preparation?',
      answer: 'EBSD (Electron Backscatter Diffraction) requires extremely flat, damage-free surfaces. Essential equipment includes: vibratory polisher (GIGA-S) for final polishing to eliminate subsurface damage, precision cutters (PICO-155S or PICO-200S) for minimal deformation, and colloidal silica for final polishing steps. The GIGA-S vibratory polisher is specifically designed for EBSD preparation, achieving the minimal deformation and maximum flatness required for accurate orientation mapping. This setup requires premium equipment investment but is essential for EBSD applications. Request a quote for a complete EBSD preparation setup tailored to your specific requirements.',
    },
    {
      question: 'How do I determine what metallography equipment I need for my application?',
      answer: 'Start by assessing your throughput (samples per day/week), material types (metals, ceramics, composites), sample sizes, and required analysis quality. Low-volume labs (1-10 samples/day) typically need manual systems (NANO series), while high-throughput facilities (50+ samples/day) benefit from automation (FEMTO series). Material sensitivity determines mounting choice (hot vs cold), and sample size influences sectioning equipment selection. Use our Build Your Lab tool to answer guided questions about your specific needs and receive equipment recommendations. Contact our sales team for personalized consultation.',
    },
    {
      question: 'Do I need automated or manual metallography equipment?',
      answer: 'Manual equipment (NANO series) is ideal for low to medium volume labs (1-20 samples/day), offering cost-effective solutions with flexibility for varied sample types. Automated systems (FEMTO series) are essential for high-volume production (50+ samples/day), providing consistent results, reduced operator time, and programmable parameters. Consider automation if you process many similar samples, require consistency across operators, or need to reduce labor costs. Many labs start with manual systems and add automation as volume increases. Contact us to discuss your throughput requirements and determine the best fit.',
    },
    
    // SELECTION/COMPARISON - "How to choose?" "What's the difference?" (Second priority)
    {
      question: 'What\'s the best grinder-polisher for my laboratory?',
      answer: 'The best grinder-polisher depends on your throughput, resource requirements, and application needs. For low-volume labs (1-4 samples/hour), the NANO-1000S or NANO-2000S manual systems offer cost-effective solutions with minimal operator training. For medium throughput (5-10 samples/hour), the FEMTO-1100S semi-automated system balances automation benefits with moderate investment. For high-volume production (10+ samples/hour), the FEMTO-2200S or FEMTO-2500S automated systems provide maximum throughput and consistency, reducing operator time significantly. For EBSD preparation and final polishing, the GIGA-S vibratory polisher is essential for achieving the required surface quality. Use our Build Your Lab tool or contact us for personalized recommendations based on your specific requirements.',
    },
    {
      question: 'What is the difference between manual and automated grinder-polishers?',
      answer: 'Manual grinder-polishers (like the NANO-1000S and NANO-2000S) require operator control for sample handling and pressure application, typically processing 1-4 samples per hour. They offer flexibility, lower initial investment, and are ideal for low to medium volume laboratories. Automated systems (like the FEMTO-1100S and FEMTO-2200S) feature programmable parameters, automated sample handling, and higher throughput (8-20 samples/hour), providing better consistency and reduced operator time. Automated systems require higher initial investment but offer significant time savings and consistency benefits for high-volume laboratories. Contact us to determine which system best fits your throughput requirements and resource allocation.',
    },
    {
      question: 'How do I choose between hot mounting and cold mounting systems?',
      answer: 'Hot mounting (compression mounting presses like TP-7100S or TP-7500S) provides superior edge retention, faster processing (15-30 minutes), and better for high-volume work requiring consistent results. Cold mounting (castable systems like THETAMOUNT or UVMOUNT) is suitable for temperature-sensitive materials, delicate samples, and when vacuum impregnation is needed. Hot mounting requires higher initial investment but offers faster processing times and better edge retention for most metals. Cold mounting systems are more cost-effective initially and essential for materials that cannot withstand heat. Hot mounting is recommended for most metals, while cold mounting is preferred for ceramics, composites, and materials that cannot withstand heat. Contact us to discuss which system fits your materials and workflow requirements.',
    },
    {
      question: 'How do I choose between precision cutters and abrasive saws?',
      answer: 'Precision cutters (PICO series) use thin diamond blades with minimal kerf loss, ideal for delicate materials, small samples, and applications requiring minimal deformation. They offer slower cutting speeds but superior surface quality, making them essential for electronics, semiconductors, and delicate materials. Abrasive saws (MEGA series) use thicker abrasive wheels for faster cutting of larger samples and harder materials, offering better throughput for standard metallographic work. Precision cutters require higher investment but are necessary for applications where minimal damage is critical. Abrasive saws provide cost-effective solutions for larger samples and high-throughput applications. Browse our sectioning equipment to compare options and determine which fits your material requirements and throughput needs.',
    },
    
    // BUDGET/INVESTMENT - "How much?" (Third priority)
    {
      question: 'How much does a complete metallography lab setup cost?',
      answer: 'Lab setup costs vary significantly based on throughput requirements and automation level. A basic setup with manual grinder-polisher (NANO-1000S), basic mounting press (TP-7100S), and sectioning equipment (MEGA-T300S) provides cost-effective entry into metallography. Mid-range setups add automated systems (FEMTO-1100S), enhanced microscopes, and additional capabilities for higher throughput. Premium laboratories with full automation, multiple stations, and advanced microscopy represent the highest investment level but maximize efficiency and consistency. Use our Build Your Lab tool or request a quote to get a customized recommendation based on your specific needs, throughput requirements, and resource constraints.',
    },
    
    // PURCHASE LOGISTICS - "Where to buy?" "How long?" (Fourth priority)
    {
      question: 'Where can I buy metallography equipment?',
      answer: 'PACE Technologies manufactures and sells metallography equipment directly through our website and authorized distributors. You can browse our complete equipment catalog, request quotes for specific products, or use our Build Your Lab tool to get recommendations. We offer equipment for sectioning (PICO and MEGA series), mounting (TP compression and castable systems), grinding and polishing (NANO, FEMTO, and GIGA series), hardness testing, and microscopy. Contact our sales team at sales@metallographic.com or call (520) 882-6598 for personalized assistance.',
    },
    {
      question: 'How long does it take to receive metallography equipment after ordering?',
      answer: 'Standard equipment typically ships within 2-4 weeks of order confirmation. In-stock items may ship within 1-2 weeks. Custom configurations or specialized equipment may require 4-8 weeks. Express shipping options are available for urgent needs. Consumables and accessories typically ship within 1-2 weeks. Contact our sales team for current lead times and to discuss expedited options. We also offer rental equipment for immediate needs while waiting for delivery.',
    },
    {
      question: 'Do you offer equipment warranties and technical support?',
      answer: 'Yes, all PACE Technologies equipment comes with comprehensive warranties (typically 1-2 years depending on equipment type) covering parts and workmanship. We provide technical support via phone, email, and on-site service. KeepPACE service plans extend coverage and add preventive maintenance, priority support, and parts benefits. Our technical support team assists with equipment selection, troubleshooting, and optimization. Contact support@metallographic.com or call (520) 882-6598 for immediate assistance.',
    },
    {
      question: 'What\'s included in KeepPACE service plans?',
      answer: 'KeepPACE service plans offer flexible support options starting from basic annual check-ins to comprehensive coverage. Basic plans include annual equipment check-ins and technical support. Comprehensive plans add priority support, on-site service visits, preventive maintenance, parts benefits, and personalized service. Plans are tailored to your equipment and usage, ensuring optimal performance and minimizing downtime. Service plan investment varies based on equipment type and coverage level. Contact us to discuss which KeepPACE plan best fits your laboratory needs and operational requirements.',
    },
    {
      question: 'Can I get a custom equipment configuration for my specific needs?',
      answer: 'Yes, PACE Technologies offers custom equipment configurations to meet specific laboratory requirements. We can modify standard equipment, create custom workstations, integrate multiple systems, and develop specialized solutions for unique applications. Custom configurations may include specific platen sizes, automation levels, cooling systems, or integration with existing lab equipment. Contact our sales team to discuss your requirements and receive a custom quote. Typical custom configurations add 2-4 weeks to standard lead times.',
    },
    
    // TECHNICAL/OPERATIONAL - "How to use?" "Troubleshooting" (Fifth priority)
    {
      question: 'How do I select the right polishing cloth for my material?',
      answer: 'Polishing cloth selection depends on material hardness and application stage. For rough polishing (6μm-3μm diamond), use medium-nap cloths like synthetic suede or canvas. For final polishing (1μm-0.05μm), use low-nap or napless cloths like silk or chemotextile. Soft materials (aluminum, copper) require shorter nap to prevent relief, while hard materials (steels, ceramics) can use medium nap. Our polishing cloth guide provides detailed material-specific recommendations. Contact us for cloth selection assistance based on your specific materials.',
    },
    {
      question: 'What is the difference between diamond and oxide polishing?',
      answer: 'Diamond polishing uses diamond abrasives (typically 6μm to 0.25μm) suspended in paste or slurry, providing fast material removal and excellent for most materials. Oxide polishing uses colloidal silica or alumina suspensions (0.05μm-0.25μm) for final polishing steps, creating a chemical-mechanical polishing (CMP) effect that eliminates remaining scratches. Diamond is used for rough to fine polishing, while oxide is typically reserved for final polishing steps, especially for soft materials and EBSD preparation. Both are available in our consumables catalog.',
    },
    {
      question: 'How do I troubleshoot scratches in polished samples?',
      answer: 'Scratches typically result from incomplete removal of previous step damage or contamination. Solutions include: ensuring complete scratch removal at each grit size before proceeding, using proper grit progression (don\'t skip steps), cleaning samples and equipment between steps, using fresh abrasives, and checking for contamination on polishing cloths. For persistent scratches, extend polishing time, use appropriate cloth selection, or consider vibratory polishing (GIGA-S) for final steps. Our troubleshooting guide provides detailed solutions, or contact technical support for assistance.',
    },
    {
      question: 'What consumables do I need to purchase with my equipment?',
      answer: 'Essential consumables include: grinding papers (120-1200 grit SiC), diamond abrasives (6μm to 0.25μm), polishing cloths, mounting resins, and etchants specific to your materials. Annual consumable requirements vary significantly based on throughput, material types, and preparation frequency. Low-volume labs may require minimal consumable investment, while high-throughput facilities need regular replenishment. We offer consumable starter kits with new equipment purchases to get you started. Browse our consumables catalog or contact us for a consumables recommendation based on your materials, volume, and preparation frequency.',
    },
    {
      question: 'How long does metallographic sample preparation take?',
      answer: 'Preparation time varies by material and complexity. Simple samples may take 30-60 minutes, while complex materials or multiple samples can take 2-4 hours. Sectioning takes 5-15 minutes, mounting 15-30 minutes (if using hot mounting), grinding 10-20 minutes per grit size, polishing 15-30 minutes per step, and etching 5-30 seconds to several minutes depending on the material and etchant. Automated systems can significantly reduce preparation time for high-volume work.',
    },
    
    // BASIC/INFORMATIONAL - "What is?" (Lower priority but still valuable)
    {
      question: 'What is metallography?',
      answer: 'Metallography is the scientific study and analysis of the microstructure of metals and alloys. It involves preparing samples through sectioning, mounting, grinding, polishing, and etching, then examining them under a microscope to reveal grain structure, phases, inclusions, and other microstructural features that determine material properties.',
    },
    {
      question: 'What are the steps in metallographic sample preparation?',
      answer: 'Metallographic sample preparation typically involves five main steps: 1) Sectioning - cutting the sample to size, 2) Mounting - embedding in resin for handling, 3) Grinding - removing sectioning damage with progressively finer abrasives, 4) Polishing - achieving a scratch-free surface using diamond or oxide abrasives, and 5) Etching - applying chemical reagents to reveal microstructural features.',
    },
    {
      question: 'What materials can be prepared for metallographic analysis?',
      answer: 'Metallographic preparation techniques apply to metals and alloys (steels, aluminum, titanium, nickel alloys, copper, brass), ceramics, composites, and other engineering materials. Each material type requires specific preparation protocols, etchant selection, and handling procedures to reveal accurate microstructural information. We offer material-specific preparation guides and equipment recommendations for each material type.',
    },
    {
      question: 'What ASTM standards apply to metallographic sample preparation?',
      answer: 'Key ASTM standards for metallographic preparation include ASTM E3 (specimen preparation), ASTM E407 (etching procedures), ASTM E112 (grain size determination), ASTM E883 (reflected light microscopy), and material-specific standards. These provide standardized procedures for consistent, reproducible results. Our equipment and procedures are designed to meet these standards.',
    },
  ]

  const faqStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'FAQPage',
    mainEntity: faqItems.map(item => ({
      '@type': 'Question',
      name: item.question,
      acceptedAnswer: {
        '@type': 'Answer',
        text: item.answer,
      },
    })),
  }

  const howToStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'HowTo',
    name: 'How to Prepare Metallographic Samples',
    description: 'Step-by-step guide to preparing samples for metallographic analysis through sectioning, mounting, grinding, polishing, and etching',
    step: [
      {
        '@type': 'HowToStep',
        position: 1,
        name: 'Sectioning',
        text: 'Cut the sample to appropriate size using abrasive cut-off wheels or precision saws while minimizing thermal and mechanical damage. Use proper cooling and cutting speeds to prevent sample alteration.',
        image: 'https://materialographic.com/images/consumables/grinding & lapping-cover.webp',
      },
      {
        '@type': 'HowToStep',
        position: 2,
        name: 'Mounting',
        text: 'Embed samples in thermosetting or thermoplastic resins for handling, edge retention, and protection of delicate features. Hot mounting provides better edge retention, while cold mounting is suitable for temperature-sensitive materials.',
        image: 'https://materialographic.com/images/consumables/grinding & lapping-cover.webp',
      },
      {
        '@type': 'HowToStep',
        position: 3,
        name: 'Grinding',
        text: 'Remove sectioning damage and achieve flatness using progressively finer silicon carbide or aluminum oxide abrasives, typically starting at 120 grit and progressing through 240, 320, 400, 600, and 1200 grit. Ensure uniform scratch pattern in one direction before proceeding.',
        image: 'https://materialographic.com/images/consumables/grinding & lapping-cover.webp',
      },
      {
        '@type': 'HowToStep',
        position: 4,
        name: 'Polishing',
        text: 'Eliminate scratches and achieve a mirror-like surface using diamond abrasives (6μm to 0.25μm) or colloidal silica on appropriate polishing cloths. Use progressively finer abrasives and ensure complete removal of previous step scratches.',
        image: 'https://materialographic.com/images/consumables/rough polishing-cover.png',
      },
      {
        '@type': 'HowToStep',
        position: 5,
        name: 'Etching',
        text: 'Apply chemical reagents (such as nital, picral, or material-specific etchants) to reveal grain boundaries, phases, and microstructural features through selective attack. Etching time varies by material and etchant concentration.',
        image: 'https://materialographic.com/images/consumables/etching.webp',
      },
    ],
  }

  const collectionPageStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Metallography Resources',
    description: 'Comprehensive collection of metallographic sample preparation guides, procedures, tools, and reference materials',
    url: 'https://materialographic.com',
    mainEntity: {
      '@type': 'ItemList',
      itemListElement: [
        {
          '@type': 'ListItem',
          position: 1,
          item: {
            '@type': 'Course',
            name: 'Metallographic Sample Preparation Guides',
            url: 'https://materialographic.com/guides',
          },
        },
        {
          '@type': 'ListItem',
          position: 2,
          item: {
            '@type': 'SoftwareApplication',
            name: 'Metallography Tools and Calculators',
            url: 'https://materialographic.com/tools',
          },
        },
        {
          '@type': 'ListItem',
          position: 3,
          item: {
            '@type': 'Article',
            name: 'Metallography Reference Materials',
            url: 'https://materialographic.com/resources',
          },
        },
      ],
    },
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
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(websiteStructuredData) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(faqStructuredData) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(collectionPageStructuredData) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(howToStructuredData) }}
      />
      {/* Featured Products Schema */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            '@context': 'https://schema.org',
            '@type': 'ItemList',
            name: 'Featured Metallographic Equipment',
            itemListElement: [
              {
                '@type': 'ListItem',
                position: 1,
                item: {
                  '@type': 'Product',
                  name: 'PICO-155S',
                  description: 'Precision wafering system for delicate materials and small samples. Ideal for semiconductor, electronics, and precision cutting applications.',
                  brand: {
                    '@type': 'Brand',
                    name: 'PACE Technologies',
                  },
                  manufacturer: {
                    '@type': 'Organization',
                    name: 'PACE Technologies',
                    url: 'https://metallographic.com',
                  },
                  model: 'PICO-155S',
                  sku: 'PICO-155S',
                  category: 'Sectioning Equipment',
                  url: 'https://materialographic.com/equipment/sectioning/precision-wafering/pico-155s',
                  offers: {
                    '@type': 'Offer',
                    availability: 'https://schema.org/InStock',
                    priceCurrency: 'USD',
                    url: 'https://materialographic.com/equipment/sectioning/precision-wafering/pico-155s',
                    seller: {
                      '@type': 'Organization',
                      name: 'PACE Technologies',
                    },
                  },
                },
              },
              {
                '@type': 'ListItem',
                position: 2,
                item: {
                  '@type': 'Product',
                  name: 'NANO-1000S',
                  description: 'Manual grinder-polisher with 8-inch platen for reliable sample surface preparation. Suitable for low to medium throughput laboratories.',
                  brand: {
                    '@type': 'Brand',
                    name: 'PACE Technologies',
                  },
                  manufacturer: {
                    '@type': 'Organization',
                    name: 'PACE Technologies',
                    url: 'https://metallographic.com',
                  },
                  model: 'NANO-1000S',
                  sku: 'NANO-1000S',
                  category: 'Grinding & Polishing Equipment',
                  url: 'https://materialographic.com/equipment/grinding-polishing/manual-grinder-polishers/nano-1000s',
                  offers: {
                    '@type': 'Offer',
                    availability: 'https://schema.org/InStock',
                    priceCurrency: 'USD',
                    url: 'https://materialographic.com/equipment/grinding-polishing/manual-grinder-polishers/nano-1000s',
                    seller: {
                      '@type': 'Organization',
                      name: 'PACE Technologies',
                    },
                  },
                },
              },
              {
                '@type': 'ListItem',
                position: 3,
                item: {
                  '@type': 'Product',
                  name: 'FEMTO-1100S',
                  description: 'Semi-automated grinder-polisher for increased throughput and consistency. Features automated sample handling and programmable parameters.',
                  brand: {
                    '@type': 'Brand',
                    name: 'PACE Technologies',
                  },
                  manufacturer: {
                    '@type': 'Organization',
                    name: 'PACE Technologies',
                    url: 'https://metallographic.com',
                  },
                  model: 'FEMTO-1100S',
                  sku: 'FEMTO-1100S',
                  category: 'Grinding & Polishing Equipment',
                  url: 'https://materialographic.com/equipment/grinding-polishing/semi-auto-grinder-polishers/femto-1100s',
                  offers: {
                    '@type': 'Offer',
                    availability: 'https://schema.org/InStock',
                    priceCurrency: 'USD',
                    url: 'https://materialographic.com/equipment/grinding-polishing/semi-auto-grinder-polishers/femto-1100s',
                    seller: {
                      '@type': 'Organization',
                      name: 'PACE Technologies',
                    },
                  },
                },
              },
              {
                '@type': 'ListItem',
                position: 4,
                item: {
                  '@type': 'Product',
                  name: 'GIGA-S',
                  description: 'Vibratory polisher for final polishing and EBSD preparation. Eliminates subsurface damage and achieves superior surface finishes with minimal deformation.',
                  brand: {
                    '@type': 'Brand',
                    name: 'PACE Technologies',
                  },
                  manufacturer: {
                    '@type': 'Organization',
                    name: 'PACE Technologies',
                    url: 'https://metallographic.com',
                  },
                  model: 'GIGA-S',
                  sku: 'GIGA-S',
                  category: 'Grinding & Polishing Equipment',
                  url: 'https://materialographic.com/equipment/grinding-polishing/vibratory-polisher/giga-s',
                  offers: {
                    '@type': 'Offer',
                    availability: 'https://schema.org/InStock',
                    priceCurrency: 'USD',
                    url: 'https://materialographic.com/equipment/grinding-polishing/vibratory-polisher/giga-s',
                    seller: {
                      '@type': 'Organization',
                      name: 'PACE Technologies',
                    },
                  },
                },
              },
            ],
          }),
        }}
      />
      {/* Process Videos Structured Data */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            '@context': 'https://schema.org',
            '@type': 'ItemList',
            name: 'Metallographic Sample Preparation Process Videos',
            itemListElement: [
              {
                '@type': 'ListItem',
                position: 1,
                item: {
                  '@type': 'VideoObject',
                  name: 'Sectioning Process',
                  description: 'Demonstration of precision sectioning techniques for metallographic sample preparation using precision cutters and abrasive saws.',
                  thumbnailUrl: getVideoUrlWithFallback('process/sectioning.MP4'),
                  contentUrl: getVideoUrlWithFallback('process/sectioning.MP4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 2,
                item: {
                  '@type': 'VideoObject',
                  name: 'Compression Mounting Process',
                  description: 'Demonstration of compression mounting techniques for embedding samples in thermosetting resins.',
                  thumbnailUrl: getVideoUrlWithFallback('process/compression-mounting.MP4'),
                  contentUrl: getVideoUrlWithFallback('process/compression-mounting.MP4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 3,
                item: {
                  '@type': 'VideoObject',
                  name: 'Grinding Process',
                  description: 'Demonstration of grinding techniques for removing sectioning damage and achieving flat surfaces with progressive grit sizes.',
                  thumbnailUrl: getVideoUrlWithFallback('process/grinding.mp4'),
                  contentUrl: getVideoUrlWithFallback('process/grinding.mp4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 4,
                item: {
                  '@type': 'VideoObject',
                  name: 'Polishing Process',
                  description: 'Demonstration of polishing techniques using diamond compounds and polishing pads to achieve smooth, scratch-free surfaces.',
                  thumbnailUrl: getVideoUrlWithFallback('process/polishing.MP4'),
                  contentUrl: getVideoUrlWithFallback('process/polishing.MP4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 5,
                item: {
                  '@type': 'VideoObject',
                  name: 'Final Polishing Process',
                  description: 'Demonstration of vibratory polishing techniques for eliminating subsurface damage and achieving superior surface finishes for EBSD preparation.',
                  thumbnailUrl: getVideoUrlWithFallback('process/final-polishing.mp4'),
                  contentUrl: getVideoUrlWithFallback('process/final-polishing.mp4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 6,
                item: {
                  '@type': 'VideoObject',
                  name: 'Etching Process',
                  description: 'Demonstration of etching techniques for revealing microstructural features using chemical reagents.',
                  thumbnailUrl: getVideoUrlWithFallback('process/etching.mp4'),
                  contentUrl: getVideoUrlWithFallback('process/etching.mp4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 7,
                item: {
                  '@type': 'VideoObject',
                  name: 'Hardness Testing Process',
                  description: 'Demonstration of hardness testing techniques for material characterization using Rockwell, microhardness, and Brinell testers.',
                  thumbnailUrl: getVideoUrlWithFallback('process/hardness-testing.mp4'),
                  contentUrl: getVideoUrlWithFallback('process/hardness-testing.mp4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
              {
                '@type': 'ListItem',
                position: 8,
                item: {
                  '@type': 'VideoObject',
                  name: 'Microscopy and Analysis Process',
                  description: 'Demonstration of microscopy techniques for examining microstructures and analyzing material properties.',
                  thumbnailUrl: getVideoUrlWithFallback('process/analysis.mp4'),
                  contentUrl: getVideoUrlWithFallback('process/analysis.mp4'),
                  uploadDate: '2024-01-01',
                  duration: 'PT2M',
                },
              },
            ],
          }),
        }}
      />
      <div className="-mt-24">
      {/* Hero Section */}
      <section className="relative min-h-[100vh] sm:min-h-[100vh] flex items-center pt-24 pb-12 sm:pb-20 overflow-hidden">
        {/* Background Image */}
        <div className="absolute -top-24 left-0 right-0 bottom-0 z-0 bg-white">
          <div className="relative w-full h-full">
            <Image
              src="/images/pace/equipment.webp"
              alt="PACE Technologies metallography equipment including precision cutter, hydraulic press, and polishing system"
              title="PACE Technologies metallography equipment for sample preparation"
              fill
              className="object-cover object-center opacity-30"
              priority
              quality={50}
              sizes="100vw"
              style={{ 
                filter: 'grayscale(60%)'
              }}
              fetchPriority="high"
            />
            {/* Fade background image to white at bottom */}
            <div className="absolute bottom-0 left-0 right-0 h-64 pointer-events-none" style={{ 
              background: 'linear-gradient(to bottom, transparent 0%, rgba(255,255,255,0.3) 40%, rgba(255,255,255,0.7) 70%, white 100%)'
            }}></div>
          </div>
        </div>
        
        <div className="container-custom relative z-10 w-full flex items-center min-h-[calc(100vh-6rem)] pt-6 pb-12 sm:pt-8 sm:pb-16 md:pt-12 md:pb-24 px-4 sm:px-6" style={{ marginTop: '-4rem' }}>
          <div className="max-w-3xl w-full">
            <AnimateOnScroll animation="fadeInUp" duration={800} threshold={0}>
              <div className="w-full">
                <h1 className="text-4xl sm:text-5xl md:text-6xl font-bold mb-3 sm:mb-4 md:mb-6 leading-tight">
                  <span style={{
                    backgroundImage: 'linear-gradient(135deg, #4b5563, #1f2937)',
                    WebkitBackgroundClip: 'text',
                    WebkitTextFillColor: 'transparent',
                    backgroundClip: 'text',
                  } as React.CSSProperties}>
                    Build Your Sample Preparation Lab
                  </span>
                </h1>
                <p className="text-lg sm:text-xl md:text-2xl text-gray-700 mb-6 sm:mb-8 md:mb-12 leading-relaxed">
                  Quality control, failure analysis, research and development, and material characterization. 
                  Complete equipment and consumables solutions for every metallography application, backed by expert preparation guides.
                </p>
                <div className="flex flex-col sm:flex-row gap-3 sm:gap-4 justify-start">
                  <Link href="/equipment" className="btn-primary no-underline focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 shadow-lg hover:shadow-xl">
                    Browse Equipment
                  </Link>
                  <Link href="/guides" className="btn-tertiary no-underline focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 shadow-lg hover:shadow-xl">
                    Sample Prep Guides
                  </Link>
                </div>
              </div>
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* How PACE can help Section */}
      <article className="py-12 sm:py-20">
        <div className="container-custom">
          <div className="max-w-6xl mx-auto">
            <AnimateOnScroll animation="fadeInUp" duration={700} className="mb-8">
              <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 sm:gap-12 items-center">
                <div>
                  <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-4">How PACE can help</h2>
                  <p className="text-lg leading-relaxed text-gray-700 mb-4">
                    PACE Technologies provides everything your lab needs for metallographic sample preparation. 
                    Our complete product line includes precision equipment and high-quality consumables for sectioning, mounting, grinding, polishing, and etching—all backed by expert preparation guides and technical support.
                  </p>
                  <p className="text-base text-gray-600">
                    Whether you're building a new lab or improving existing workflows, our products and proven preparation methods deliver consistent, 
                    reliable results for quality control, failure analysis, and materials research.
                  </p>
                </div>
                <div className="flex justify-center lg:justify-end">
                  <Image
                  src="/images/pace/homepage-hexagon.png"
                  alt="PACE Technologies team and equipment showcasing metallographic sample preparation solutions"
                  title="PACE Technologies - Complete metallographic solutions"
                  width={500}
                  height={500}
                  className="w-full max-w-md h-auto"
                  loading="lazy"
                  sizes="(max-width: 1024px) 100vw, 500px"
                />
                </div>
              </div>
            </AnimateOnScroll>

            {/* Sample Preparation Steps - PACE Solutions */}
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600} className="mb-8">
              <h3 className="text-2xl font-semibold text-gray-900 mb-6">Complete Solutions for Every Step</h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 lg:grid-cols-4 gap-4">
                <AnimateOnScroll animation="scaleIn" delay={50} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">1</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Sectioning</h4>
                    <p className="text-sm text-gray-600">Precision cutters, abrasive saws, and cutting fluids for clean, damage-free cuts</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={100} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">2</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Mounting</h4>
                    <p className="text-sm text-gray-600">Compression and castable mounting presses with a full range of mounting materials</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={150} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">3</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Grinding</h4>
                    <p className="text-sm text-gray-600">Hand and belt grinders with papers and SiC powders for progressive material removal</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={200} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">4</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Polishing</h4>
                    <p className="text-sm text-gray-600">Grinder-polishers with diamond compounds and polishing pads</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={250} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">5</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Final Polishing</h4>
                    <p className="text-sm text-gray-600">Vibratory polishers for eliminating subsurface damage and achieving superior finishes</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={300} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">6</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Etching</h4>
                    <p className="text-sm text-gray-600">Etchants, cleaning solutions, and application tools for microstructure revelation</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={350} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">7</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Hardness Testing</h4>
                    <p className="text-sm text-gray-600">Rockwell, microhardness, and Brinell testers with accessories for material characterization</p>
                  </div>
                </AnimateOnScroll>
                <AnimateOnScroll animation="scaleIn" delay={400} duration={500}>
                  <div className="bg-gray-50 p-4 rounded-lg border border-gray-200 h-full flex flex-col">
                    <div className="text-2xl font-bold text-primary-600 mb-2">8</div>
                    <h4 className="font-semibold text-gray-900 mb-2">Microscopy & Analysis</h4>
                    <p className="text-sm text-gray-600">Metallurgical and stereo microscopes for microstructural examination and analysis</p>
                  </div>
                </AnimateOnScroll>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeIn" delay={500} duration={500} className="text-center">
              <p className="text-base text-gray-700 mb-4">
                Explore our complete product line: <Link href="/equipment" className="text-primary-600 hover:text-primary-700 font-semibold focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">equipment</Link> and 
                <Link href="/consumables" className="text-primary-600 hover:text-primary-700 font-semibold focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded"> consumables</Link>. 
                Pair your products with our <Link href="/guides" className="text-primary-600 hover:text-primary-700 font-semibold focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">expert preparation guides</Link>, or 
                <Link href="/quote" className="text-primary-600 hover:text-primary-700 font-semibold focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded"> request a custom quote</Link> for your lab.
              </p>
            </AnimateOnScroll>
          </div>
        </div>
      </article>

      {/* Equipment & Consumables by Step Section - Timeline */}
      <section className="py-12 sm:py-20 bg-white">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-12 sm:mb-16">
            <h2 className="text-2xl sm:text-3xl md:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">Equipment & Consumables by Step</h2>
            <p className="text-base sm:text-lg text-gray-600 max-w-2xl mx-auto px-4">
              Follow the complete sample preparation workflow with equipment and consumables for each step
            </p>
          </AnimateOnScroll>
          
          {/* Timeline Container */}
          <div className="max-w-5xl mx-auto">
            {/* Timeline Steps */}
            <div className="relative md:pl-16 md:pr-16">
              {/* Vertical Timeline Line - Centered */}
              <div className="hidden md:block absolute left-1/2 top-0 bottom-0 w-0.5 bg-gradient-to-b from-primary-200 via-primary-300 to-primary-200 transform -translate-x-1/2 z-0"></div>
              
              {/* Step 1: Sectioning */}
              <AnimateOnScroll animation="fadeInUp" delay={50} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/sectioning.MP4')}
                          ariaLabel="Sectioning process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            1
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Sectioning</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Precision cutting equipment and consumables for clean, damage-free sample sectioning. Choose from precision wafering systems for delicate materials or abrasive cutters for faster throughput.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/sectioning" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Cutters, saws, systems</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/sectioning" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Blades, fluids, accessories</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 2: Mounting */}
              <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row-reverse items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/compression-mounting.MP4')}
                          ariaLabel="Compression mounting process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            2
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Mounting</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Compression and castable mounting systems with a complete range of mounting materials. Protect delicate features and ensure proper edge retention for analysis.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/mounting" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Mounting presses</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/mounting" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Resins, molds, accessories</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 3: Grinding */}
              <AnimateOnScroll animation="fadeInUp" delay={150} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/grinding.mp4')}
                          ariaLabel="Grinding process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            3
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Grinding</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Progressive material removal with PENTA hand and belt grinders. Remove sectioning damage and achieve flat surfaces with controlled scratch patterns using grinding papers and SiC powders.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/grinding-polishing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Hand grinders, belt grinders</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/grinding-lapping" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Papers, powders, films</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 4: Polishing */}
              <AnimateOnScroll animation="fadeInUp" delay={200} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row-reverse items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/polishing.MP4')}
                          ariaLabel="Polishing process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            4
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Polishing</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Achieve smooth surfaces with grinder-polishers using diamond compounds and polishing pads. Remove grinding scratches and prepare for final polishing.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/grinding-polishing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Grinder-polishers, polishing systems</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/polishing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Compounds, pads, cloths</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 5: Final Polishing */}
              <AnimateOnScroll animation="fadeInUp" delay={250} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/final-polishing.mp4')}
                          ariaLabel="Final polishing process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            5
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Final Polishing</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Eliminate subsurface damage and achieve superior surface finishes with vibratory polishers. Ideal for EBSD preparation and applications requiring minimal deformation and maximum flatness.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/grinding-polishing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Vibratory polishers</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/polishing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Final polishing materials</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 6: Etching */}
              <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row-reverse items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/etching.mp4')}
                          ariaLabel="Etching process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            6
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Etching</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Chemical reagents and application tools for revealing microstructural features. Select the right etchant for your material to highlight grain boundaries and phases.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/etchants" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Etchants</div>
                              <div className="text-sm text-gray-600">Chemical reagents</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/etching" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Cleaning, tools</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 7: Hardness Testing */}
              <AnimateOnScroll animation="fadeInUp" delay={350} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/hardness-testing.mp4')}
                          ariaLabel="Hardness testing process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            7
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Hardness Testing</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Material characterization with Rockwell, microhardness, and Brinell testers. Measure material properties and verify heat treatment results.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/hardness-testing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Testers, systems</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/hardness-testing" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Test blocks, indenters</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

              {/* Step 8: Microscopy & Analysis */}
              <AnimateOnScroll animation="fadeInUp" delay={400} duration={600}>
                <div className="relative mb-8 sm:mb-12 md:mb-16">
                  {/* Timeline Dot - positioned relative to step container */}
                  <div className="hidden md:block absolute left-1/2 -translate-x-1/2 top-6 w-4 h-4 bg-primary-600 rounded-full border-4 border-white shadow-lg z-10"></div>
                  
                  <div className="flex flex-col md:flex-row-reverse items-start gap-6 md:gap-8">
                    {/* Video Side */}
                    <div className="w-full md:w-2/5 order-2 md:order-1">
                      <div className="relative aspect-video rounded-lg overflow-hidden shadow-lg group bg-gray-100">
                        <OptimizedVideo
                          src={getVideoUrlWithFallback('process/analysis.mp4')}
                          ariaLabel="Microscopy and analysis process video"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
                      </div>
                    </div>
                    
                    {/* Content Side */}
                    <div className="w-full md:w-3/5 order-1 md:order-2 relative">
                      
                      <div className="bg-white rounded-lg border-2 border-gray-200 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow">
                        <div className="flex items-center gap-3 mb-4">
                          <div className="flex-shrink-0 w-12 h-12 bg-primary-600 text-white rounded-full flex items-center justify-center text-xl font-bold shadow-md">
                            8
                          </div>
                          <h3 className="text-2xl sm:text-3xl font-bold text-gray-900">Microscopy & Analysis</h3>
                        </div>
                        <p className="text-gray-600 mb-6 leading-relaxed">
                          Examine microstructures with metallurgical and stereo microscopes. Capture images, measure features, and analyze material properties.
                        </p>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                          <Link href="/equipment/microscopy" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Equipment</div>
                              <div className="text-sm text-gray-600">Microscopes, systems</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                          <Link href="/consumables/cleaning" className="group flex items-center justify-between p-4 bg-gray-50 rounded-lg hover:bg-primary-50 border border-gray-200 hover:border-primary-300 transition-all">
                            <div>
                              <div className="font-semibold text-gray-900 group-hover:text-primary-600">Consumables</div>
                              <div className="text-sm text-gray-600">Cleaning, maintenance</div>
                            </div>
                            <ChevronRight className="w-5 h-5 text-gray-400 group-hover:text-primary-600 group-hover:translate-x-1 transition-all" />
                          </Link>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </AnimateOnScroll>

            </div>
          </div>
        </div>
      </section>

      {/* Services Section */}
      <section className="py-12 sm:py-20 relative overflow-hidden">
        {/* Background with gradient and subtle pattern */}
        <div className="absolute inset-0 bg-gradient-to-br from-primary-50 via-white to-gray-50"></div>
        <div className="absolute inset-0 opacity-[0.03]">
          <div className="absolute inset-0" style={{
            backgroundImage: 'radial-gradient(circle at 2px 2px, currentColor 1px, transparent 0)',
            backgroundSize: '32px 32px'
          }}></div>
        </div>
        
        {/* Smooth transition gradients at top and bottom */}
        <div className="absolute top-0 left-0 right-0 h-24 bg-gradient-to-b from-white to-transparent pointer-events-none z-0"></div>
        <div className="absolute bottom-0 left-0 right-0 h-24 bg-gradient-to-t from-white to-transparent pointer-events-none z-0"></div>
        
        <div className="container-custom relative z-10">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-10 sm:mb-16">
            <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">Our Service Offerings</h2>
            <p className="text-lg sm:text-xl text-gray-600 max-w-2xl mx-auto px-4">
              Professional services for your metallographic laboratory. Purchase service plans, schedule installation, arrange training, or book maintenance services to keep your lab running at peak performance.
            </p>
          </AnimateOnScroll>
          
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 sm:gap-8 mb-10">

            {/* KeepPACE Service Plans */}
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <Link href="/keeppace" className="card h-full group hover:shadow-xl transition-all duration-300 relative overflow-hidden flex flex-col bg-gradient-to-br from-primary-50/50 to-white border-2 border-primary-200 hover:border-primary-400">
                <div className="absolute top-0 right-0 bg-gradient-to-br from-primary-600 to-primary-700 text-white px-3 py-1.5 text-xs font-semibold rounded-bl-lg z-10 shadow-md">
                  Popular
                </div>
                <div className="absolute top-0 right-0 w-32 h-32 bg-primary-100/30 rounded-full -mr-16 -mt-16 group-hover:bg-primary-200/40 transition-colors"></div>
                <div className="relative z-10 flex flex-col h-full">
                  <div className="flex items-center gap-4 mb-4">
                    <div className="relative w-12 h-12 flex-shrink-0 bg-white rounded-lg p-1.5 shadow-sm">
                      <Image
                        src="/images/pace/keeppacelogo.png"
                        alt="KeepPACE"
                        fill
                        className="object-contain"
                        quality={60}
                        sizes="48px"
                      />
                    </div>
                    <h3 className="text-xl font-bold text-gray-900 group-hover:text-primary-600 transition-colors">
                      KeepPACE Service Plans
                    </h3>
                  </div>
                  <p className="text-gray-600 mb-4 flex-grow leading-relaxed">
                    Flexible service plans from basic annual check-ins to comprehensive coverage with priority support and personalized service.
                  </p>
                  <div className="flex items-center text-primary-600 font-semibold group-hover:gap-2 transition-all mt-auto">
                    View Plans
                    <ArrowRight className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" />
                  </div>
                </div>
              </Link>
            </AnimateOnScroll>

            {/* Build Your Lab */}
            <AnimateOnScroll animation="fadeInUp" delay={150} duration={600}>
              <Link href="/builder" className="card h-full group hover:shadow-xl transition-all duration-300 flex flex-col relative overflow-hidden border-2 border-gray-200 hover:border-primary-300">
                <div className="absolute inset-0 opacity-[0.02] group-hover:opacity-[0.05] transition-opacity">
                  <div className="absolute inset-0" style={{
                    backgroundImage: 'radial-gradient(circle at 2px 2px, currentColor 1px, transparent 0)',
                    backgroundSize: '24px 24px'
                  }}></div>
                </div>
                <div className="relative z-10 flex flex-col h-full">
                  <div className="flex items-center gap-4 mb-4">
                    <div className="p-3 bg-gradient-to-br from-primary-100 to-primary-50 rounded-lg group-hover:from-primary-200 group-hover:to-primary-100 transition-all flex-shrink-0 shadow-sm">
                      <Wrench className="w-6 h-6 text-primary-600" />
                    </div>
                    <h3 className="text-xl font-bold text-gray-900 group-hover:text-primary-600 transition-colors">
                      Build Your Lab
                    </h3>
                  </div>
                  <p className="text-gray-600 mb-4 flex-grow leading-relaxed">
                    Step-by-step tool to help you select the right equipment for your laboratory based on your specific needs and requirements.
                  </p>
                  <div className="flex items-center text-primary-600 font-semibold group-hover:gap-2 transition-all mt-auto">
                    Get Started
                    <ArrowRight className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" />
                  </div>
                </div>
              </Link>
            </AnimateOnScroll>

            {/* Lab Consultation */}
            <AnimateOnScroll animation="fadeInUp" delay={200} duration={600}>
              <Link href="/contact" className="card h-full group hover:shadow-xl transition-all duration-300 flex flex-col relative overflow-hidden border-2 border-gray-200 hover:border-primary-300">
                <div className="absolute inset-0 opacity-[0.02] group-hover:opacity-[0.05] transition-opacity">
                  <div className="absolute inset-0" style={{
                    backgroundImage: 'radial-gradient(circle at 2px 2px, currentColor 1px, transparent 0)',
                    backgroundSize: '24px 24px'
                  }}></div>
                </div>
                <div className="relative z-10 flex flex-col h-full">
                  <div className="flex items-center gap-4 mb-4">
                    <div className="p-3 bg-gradient-to-br from-primary-100 to-primary-50 rounded-lg group-hover:from-primary-200 group-hover:to-primary-100 transition-all flex-shrink-0 shadow-sm">
                      <Settings className="w-6 h-6 text-primary-600" />
                    </div>
                    <h3 className="text-xl font-bold text-gray-900 group-hover:text-primary-600 transition-colors">
                      Lab Consultation
                    </h3>
                  </div>
                  <p className="text-gray-600 mb-4 flex-grow leading-relaxed">
                    Get expert advice on setting up your lab, selecting equipment, optimizing processes, or planning equipment upgrades.
                  </p>
                  <div className="flex items-center text-primary-600 font-semibold group-hover:gap-2 transition-all mt-auto">
                    Request Consultation
                    <ArrowRight className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" />
                  </div>
                </div>
              </Link>
            </AnimateOnScroll>

            {/* Professional Services */}
            <AnimateOnScroll animation="fadeInUp" delay={250} duration={600}>
              <Link href="/services" className="card h-full group hover:shadow-xl transition-all duration-300 flex flex-col relative overflow-hidden border-2 border-gray-200 hover:border-primary-300">
                <div className="absolute inset-0 opacity-[0.02] group-hover:opacity-[0.05] transition-opacity">
                  <div className="absolute inset-0" style={{
                    backgroundImage: 'radial-gradient(circle at 2px 2px, currentColor 1px, transparent 0)',
                    backgroundSize: '24px 24px'
                  }}></div>
                </div>
                <div className="relative z-10 flex flex-col h-full">
                  <div className="flex items-center gap-4 mb-4">
                    <div className="p-3 bg-gradient-to-br from-primary-100 to-primary-50 rounded-lg group-hover:from-primary-200 group-hover:to-primary-100 transition-all flex-shrink-0 shadow-sm">
                      <Wrench className="w-6 h-6 text-primary-600" />
                    </div>
                    <h3 className="text-xl font-bold text-gray-900 group-hover:text-primary-600 transition-colors">
                      Professional Services
                    </h3>
                  </div>
                  <p className="text-gray-600 mb-4 flex-grow leading-relaxed">
                    On-site installation, training programs, maintenance visits, and additional support services tailored to your schedule and requirements.
                  </p>
                  <div className="flex items-center text-primary-600 font-semibold group-hover:gap-2 transition-all mt-auto">
                    View Services
                    <ArrowRight className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" />
                  </div>
                </div>
              </Link>
            </AnimateOnScroll>

            {/* View All Services */}
            <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
              <Link href="/services" className="card h-full group hover:shadow-xl transition-all duration-300 flex flex-col relative overflow-hidden border-2 border-primary-300 hover:border-primary-500 bg-gradient-to-br from-primary-50 to-white">
                <div className="absolute inset-0 opacity-[0.03] group-hover:opacity-[0.05] transition-opacity">
                  <div className="absolute inset-0" style={{
                    backgroundImage: 'radial-gradient(circle at 2px 2px, currentColor 1px, transparent 0)',
                    backgroundSize: '24px 24px'
                  }}></div>
                </div>
                <div className="relative z-10 flex flex-col h-full items-center justify-center text-center">
                  <div className="p-4 bg-gradient-to-br from-primary-200 to-primary-100 rounded-lg group-hover:from-primary-300 group-hover:to-primary-200 transition-all mb-4 shadow-sm">
                    <Package className="w-8 h-8 text-primary-700" />
                  </div>
                  <h3 className="text-xl font-bold text-gray-900 group-hover:text-primary-600 transition-colors mb-3">
                    View All Services
                  </h3>
                  <p className="text-gray-600 mb-4 leading-relaxed">
                    Explore our complete range of services and support options for your laboratory.
                  </p>
                  <div className="flex items-center text-primary-600 font-semibold group-hover:gap-2 transition-all">
                    Explore Services
                    <ArrowRight className="w-5 h-5 ml-1 group-hover:translate-x-1 transition-transform" />
                  </div>
                </div>
              </Link>
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* Preparation Guides and Resources Section */}
      <section className="py-12 sm:py-20">
        <div className="container-custom">
            <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-10 sm:mb-16">
            <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">Preparation Guides and Resources</h2>
            <p className="text-lg sm:text-xl text-gray-600 max-w-2xl mx-auto px-4">
              Comprehensive guides, tools, and resources to support your metallographic sample preparation workflow.
            </p>
          </AnimateOnScroll>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 sm:gap-8">
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/webpage-snaps/intro-guide.png"
                    alt="Metallographic sample preparation guide showing step-by-step procedures for sectioning, mounting, grinding, polishing, and etching"
                    title="Sample preparation guide for metallographic analysis"
                    fill
                    className="object-cover"
                    loading="lazy"
                    quality={75}
                    fetchPriority="high"
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Guides</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Detailed step-by-step procedures for sectioning, mounting, grinding, polishing, and etching. 
                  Material-specific protocols for steels, aluminum, titanium, ceramics, and composites.
                </p>
                <Link href="/guides" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">
                  Explore Guides
                  <ChevronRight className="w-4 h-4" aria-hidden="true" />
                </Link>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={200} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/webpage-snaps/grit-size-tool.png"
                    alt="Metallographic grit size converter tool showing FEPA, ANSI, JIS grit size conversion for grinding and polishing procedures in sample preparation"
                    title="Grit size converter tool for metallographic sample preparation"
                    fill
                    className="object-cover"
                    loading="lazy"
                    quality={75}
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Tools</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Interactive calculators and selectors including grit size converters, polishing time calculators, etchant selectors, and mold compatibility checkers to optimize your preparation workflow.
                </p>
                <Link href="/tools" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">
                  Browse Tools
                  <ChevronRight className="w-4 h-4" aria-hidden="true" />
                </Link>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
              <div className="card h-full flex flex-col">
                <div className="relative w-full h-48 mb-4 rounded-lg overflow-hidden">
                  <Image
                    src="/images/webpage-snaps/sample-prep-checklist.png"
                    alt="Metallographic sample preparation checklist showing pre-preparation planning and sectioning procedures"
                    title="Sample preparation checklist for metallographic analysis"
                    fill
                    className="object-cover"
                    loading="lazy"
                    quality={75}
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <h3 className="text-xl font-semibold mb-3 text-gray-900">Resources</h3>
                <p className="text-gray-600 mb-4 leading-relaxed flex-grow">
                  Troubleshooting guides, ASTM standard references, hardness scale conversions, polishing cloth guides, and other essential reference materials for metallographic analysis.
                </p>
                <Link href="/resources" className="text-primary-600 font-semibold text-sm hover:text-primary-700 transition-colors inline-flex items-center gap-1 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">
                  Browse Resources
                  <ChevronRight className="w-4 h-4" aria-hidden="true" />
                </Link>
              </div>
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* Popular Guides Section */}
      <section className="py-12 sm:py-20">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-8 sm:mb-12">
            <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">Popular Guides</h2>
            <p className="text-base sm:text-lg text-gray-600 max-w-2xl mx-auto px-4">
              Essential guides covering material-specific preparation and fundamental techniques
            </p>
          </AnimateOnScroll>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
            <AnimateOnScroll animation="scaleIn" delay={50} duration={500}>
              <Link href="/guides/stainless-steel-preparation" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG"
                    alt="431 stainless steel microstructure at 400X magnification showing grain structure after metallographic sample preparation with Kallings no. 2 etchant"
                    title="431 stainless steel microstructure - metallographic preparation example"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="eager"
                    quality={75}
                    fetchPriority="high"
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Stainless Steel Preparation</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Complete guide to preparing stainless steel samples for metallographic analysis, including sectioning, mounting, and etching techniques.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={100} duration={500}>
              <Link href="/guides/aluminum-sample-preparation" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/microstructures/6061-Aluminum.jpg"
                    alt="6061 aluminum alloy microstructure showing grain boundaries and precipitates from metallographic sample preparation and etching procedures"
                    title="6061 aluminum alloy microstructure - metallographic analysis example"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="eager"
                    quality={75}
                    fetchPriority="high"
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Aluminum Sample Preparation</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Best practices for preparing aluminum samples without smearing or deformation, ensuring accurate microstructural analysis.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={150} duration={500}>
              <Link href="/resources/troubleshooting-guide" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/microstructures/Inclusion-oxide-2.jpg"
                    alt="Oxide inclusions in steel microstructure showing common metallographic sample preparation issues and defects in microstructural analysis"
                    title="Oxide inclusions in steel - metallographic defect analysis"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="eager"
                    quality={75}
                    fetchPriority="high"
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Troubleshooting Common Issues</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Solutions to common problems in metallographic sample preparation, from scratches to poor contrast.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={200} duration={500}>
              <Link href="/guides/grinding-techniques" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/consumables/grinding & lapping-cover.webp"
                    alt="Silicon carbide grinding papers and abrasive consumables for metallographic sample preparation grinding procedures"
                    title="Grinding consumables for metallographic sample preparation"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="lazy"
                    quality={75}
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Grinding Techniques</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Grit progression, pressure application, and grinding procedures for removing sectioning damage and achieving flat surfaces.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={250} duration={500}>
              <Link href="/guides/polishing-methods" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/consumables/rough polishing-cover.png"
                    alt="Diamond polishing paste, polishing cloths, and consumables for metallographic sample preparation polishing procedures"
                    title="Polishing consumables for metallographic sample preparation"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="lazy"
                    quality={75}
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Polishing Methods</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Diamond and oxide polishing procedures, cloth selection, and time parameters for achieving scratch-free surfaces.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
            
            <AnimateOnScroll animation="scaleIn" delay={300} duration={500}>
              <Link href="/guides/etching-procedures" className="bg-white border-2 border-gray-300 rounded-lg overflow-hidden transition-all duration-200 hover:border-primary-400 hover:shadow-md group block">
                <div className="relative w-full h-48 bg-gray-100">
                  <Image
                    src="/images/consumables/etching.webp"
                    alt="Metallographic etchants and chemical reagents including nital picral for microstructural analysis and grain boundary revelation"
                    title="Metallographic etchants and chemical reagents"
                    fill
                    className="object-cover transition-opacity duration-300"
                    loading="lazy"
                    quality={75}
                    sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold mb-3 text-gray-900 group-hover:text-primary-600 transition-colors">Etching Procedures</h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    Comprehensive guide to etching techniques, reagent selection, and application methods for various material systems.
                  </p>
                </div>
              </Link>
            </AnimateOnScroll>
          </div>
          <AnimateOnScroll animation="fadeIn" delay={350} duration={500} className="text-center mt-12">
            <Link href="/guides" className="text-primary-600 font-semibold hover:text-primary-700 transition-colors inline-flex items-center gap-2 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded">
              View All Guides
              <ChevronRight className="w-5 h-5" aria-hidden="true" />
            </Link>
          </AnimateOnScroll>
        </div>
      </section>

      {/* Quick Links Section - SEO Enhancement */}
      <nav className="py-8 sm:py-12 border-t border-gray-200" aria-label="Quick navigation">
        <div className="container-custom">
          <div className="max-w-4xl mx-auto">
            <AnimateOnScroll animation="fadeIn" delay={100} duration={500}>
              <div className="flex flex-wrap justify-center gap-4 sm:gap-6 text-sm">
                <Link href="/guides/stainless-steel-preparation" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Stainless Steel Preparation</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/guides/aluminum-sample-preparation" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Aluminum Preparation</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/guides/titanium-preparation" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Titanium Preparation</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/tools/grit-size-converter" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Grit Size Converter</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/tools/etchant-selector" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Etchant Selector</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/standards" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">ASTM Standards</Link>
                <span className="text-gray-300" aria-hidden="true">•</span>
                <Link href="/microstructures" className="text-gray-600 hover:text-primary-600 transition-colors focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 rounded px-1">Microstructure Gallery</Link>
              </div>
            </AnimateOnScroll>
          </div>
        </div>
      </nav>

      {/* FAQ Section */}
      <section className="py-12 sm:py-20">
        <div className="container-custom">
          <div className="max-w-3xl mx-auto">
            <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-10 sm:mb-12">
              <h2 className="text-3xl sm:text-4xl font-bold text-gray-900 mb-3 sm:mb-4">Frequently Asked Questions</h2>
              <p className="text-lg text-gray-600">
                Common questions about metallography and sample preparation
              </p>
            </AnimateOnScroll>
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <FAQAccordion items={faqItems} />
            </AnimateOnScroll>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-12 sm:py-20">
        <div className="container-custom">
          <AnimateOnScroll animation="fadeInUp" duration={700} className="max-w-4xl mx-auto">
            <div className="card relative overflow-hidden">
              {/* Background Image */}
              <div className="absolute inset-0 z-0">
                <Image
                  src="/images/microstructures/Ferrite-Pearlite steel.JPG"
                  alt="Metallographic sample background"
                  title="Ferrite-pearlite steel microstructure background"
                  fill
                  className="object-cover opacity-10"
                  loading="lazy"
                  quality={60}
                  sizes="(max-width: 768px) 100vw, 1280px"
                />
                {/* Gradient overlay for better text readability */}
                <div className="absolute inset-0 bg-gradient-to-br from-primary-50/50 to-white"></div>
              </div>
              
              {/* Content */}
              <div className="relative z-10 text-center px-4 sm:px-6">
                <h2 className="text-3xl sm:text-4xl font-bold mb-3 sm:mb-4 text-gray-900">Complete Solutions for Your Lab</h2>
                <p className="text-lg sm:text-xl mb-3 sm:mb-4 text-gray-600 leading-relaxed">
                  Premium equipment and consumables paired with expert preparation guides for consistent, reliable metallographic results.
                </p>
                <p className="text-sm sm:text-base mb-8 sm:mb-10 text-gray-500">
                  Explore our product catalog and preparation guides to build your complete sample preparation workflow
                </p>
                <div className="flex flex-col sm:flex-row gap-3 sm:gap-4 justify-center">
                  <Link 
                    href="/equipment" 
                    className="btn-primary"
                  >
                    Browse Products
                  </Link>
                  <Link 
                    href="/guides" 
                    className="btn-secondary"
                  >
                    View Guides
                  </Link>
                  <Link 
                    href="/quote" 
                    className="btn-tertiary"
                  >
                    Request Quote
                  </Link>
                </div>
              </div>
            </div>
          </AnimateOnScroll>
        </div>
      </section>
    </div>
    </>
  )
}

