import { getVideoUrlWithFallback } from './video-urls'

// FAQ items for homepage
export const homepageFAQItems = [
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

// Core structured data objects (moved outside component to avoid recreation)
export const homepageStructuredData = {
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

export const homepageBreadcrumbStructuredData = {
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

export const homepageWebsiteStructuredData = {
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

export const homepageFAQStructuredData = {
  '@context': 'https://schema.org',
  '@type': 'FAQPage',
  mainEntity: homepageFAQItems.map(item => ({
    '@type': 'Question',
    name: item.question,
    acceptedAnswer: {
      '@type': 'Answer',
      text: item.answer,
    },
  })),
}

export const homepageHowToStructuredData = {
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

export const homepageCollectionPageStructuredData = {
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

// Featured products structured data
export const getFeaturedProductsStructuredData = () => ({
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
})

// Process videos structured data
export const getProcessVideosStructuredData = () => ({
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
})

