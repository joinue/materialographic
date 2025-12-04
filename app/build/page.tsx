'use client'

import { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { ChevronRight, CheckCircle2, Package, Wrench, FlaskConical } from 'lucide-react'

interface EquipmentItem {
  name: string
  description: string
  image?: string
  link: string
  category: string
  isPACE: boolean
  reasoning?: string
  alternative?: {
    name: string
    description: string
    link: string
    reasoning: string
  }
}

interface ConsumableItem {
  name: string
  description: string
  link: string
  isPACE: boolean
  reasoning?: string
}

interface Recommendations {
  sectioning: {
    equipment: EquipmentItem[]
    consumables: ConsumableItem[]
  }
  mounting: {
    equipment: EquipmentItem[]
    consumables: ConsumableItem[]
  }
  grinding: {
    equipment: EquipmentItem[]
    consumables: ConsumableItem[]
  }
  polishing: {
    equipment: EquipmentItem[]
    consumables: ConsumableItem[]
  }
  microscopy?: {
    equipment: EquipmentItem[]
  }
  etching?: {
    consumables: ConsumableItem[]
  }
  cleaning?: {
    equipment: EquipmentItem[]
  }
  hardness?: {
    equipment: EquipmentItem[]
  }
}

export default function BuildYourLab() {
  const [step, setStep] = useState(1)
  const [formData, setFormData] = useState({
    materialType: '',
    materialHardness: '',
    sampleSize: '',
    sampleShape: '',
    throughput: '',
    automation: '',
    budget: '',
    applications: [] as string[],
  })
  const [recommendations, setRecommendations] = useState<Recommendations | null>(null)

  const materialTypes = [
    'Steel (Carbon/Low Alloy)',
    'Stainless Steel',
    'Aluminum',
    'Titanium',
    'Copper/Brass',
    'Nickel Alloys',
    'Hard Metals (Carbides)',
    'Ceramics',
    'Other',
  ]

  const hardnessLevels = [
    'Soft (< 30 HRC)',
    'Medium (30-50 HRC)',
    'Hard (50-65 HRC)',
    'Very Hard (> 65 HRC)',
  ]

  const sampleSizes = [
    'Small (< 25mm)',
    'Medium (25-50mm)',
    'Large (50-100mm)',
    'Very Large (> 100mm)',
  ]

  const throughputOptions = [
    'Low (1-10 samples/day)',
    'Medium (10-50 samples/day)',
    'High (50-200 samples/day)',
    'Very High (> 200 samples/day)',
  ]

  const automationOptions = [
    'Fully Manual',
    'Semi-Automated',
    'Fully Automated',
  ]

  const budgetOptions = [
    'Budget-Conscious (< $50k)',
    'Standard ($50k - $150k)',
    'Premium ($150k - $300k)',
    'Enterprise (> $300k)',
  ]

  const applicationOptions = [
    'Quality Control',
    'Research & Development',
    'Failure Analysis',
    'Material Characterization',
    'Production Testing',
  ]

  const generateRecommendations = () => {
    const recs: Recommendations = {
      sectioning: { equipment: [], consumables: [] },
      mounting: { equipment: [], consumables: [] },
      grinding: { equipment: [], consumables: [] },
      polishing: { equipment: [], consumables: [] },
      etching: { consumables: [] },
    }

    // Parse input parameters
    const materialType = formData.materialType
    const hardness = formData.materialHardness
    const sampleSize = formData.sampleSize
    const sampleShape = formData.sampleShape
    const throughput = formData.throughput
    const automation = formData.automation
    const budget = formData.budget
    const applications = formData.applications

    // Derived characteristics
    const isHard = hardness.includes('Hard') || hardness.includes('Very Hard')
    const isVeryHard = hardness.includes('Very Hard')
    const isSoft = hardness.includes('Soft')
    const isLarge = sampleSize.includes('Large') || sampleSize.includes('Very Large')
    const isVeryLarge = sampleSize.includes('Very Large')
    const isSmall = sampleSize.includes('Small')
    const isThinSection = sampleShape === 'Thin'
    const isDelicate = sampleShape === 'Small' || sampleShape === 'Thin'
    const isHighThroughput = throughput.includes('High') || throughput.includes('Very High')
    const isVeryHighThroughput = throughput.includes('Very High')
    const isAutomated = automation.includes('Automated')
    const isSemiAutomated = automation.includes('Semi-Automated')
    const isBudgetConstrained = budget.includes('Budget-Conscious')
    const isPremium = budget.includes('Premium') || budget.includes('Enterprise')
    const needsPrecision = applications.includes('Failure Analysis') || applications.includes('Research & Development')
    const isProduction = applications.includes('Production Testing') || applications.includes('Quality Control')

    // Material-specific characteristics
    const isHardMaterial = materialType.includes('Hard Metals') || materialType.includes('Ceramics')
    const isBrittle = materialType.includes('Ceramics') || materialType.includes('Hard Metals')
    const isSoftMetal = materialType.includes('Aluminum') || materialType.includes('Copper')
    const isStainless = materialType.includes('Stainless Steel')
    const isTitanium = materialType.includes('Titanium')
    const isNickel = materialType.includes('Nickel')
    
    // Track advanced automation needs (defined after all derived characteristics)
    const needsAdvancedAutomation = (isVeryHighThroughput && isAutomated) || 
                                    (isPremium && isAutomated && isProduction) ||
                                    (isVeryHighThroughput && isProduction)

    // ========== SECTIONING RECOMMENDATIONS ==========
    
    // For hard materials, ceramics, or very hard samples: Precision wafering is essential
    if (isHardMaterial || isVeryHard || (isBrittle && isDelicate)) {
      // PACE PICO series is ideal for precision cutting
      // Select specific PICO model based on requirements
      if (isDelicate || isSmall) {
        recs.sectioning.equipment.push({
          name: 'PICO-155S Precision Cutter',
          description: 'Gravity feed precision cutter with touch-screen controls and built-in recirculating pump. Fits 3-7 inch diameter blades. Ideal for delicate samples and small specimens requiring minimal deformation.',
          link: 'https://metallographic.com/metallographic-equipment/precision-wafering/gravity-feed-precision-cutters.html',
          category: 'Precision Wafering',
          isPACE: true,
          reasoning: 'PICO-155S gravity feed system provides gentle, consistent cutting pressure ideal for delicate samples. Built-in coolant system and variable speed (50-1500 rpm) allow precise control for hard materials and ceramics.',
        })
      } else if (isAutomated || isHighThroughput) {
        recs.sectioning.equipment.push({
          name: 'PICO-200A Automated Table Feed Precision Cutter',
          description: 'Automated high-speed table saw with motorized table feed for consistent, repeatable precision cutting. Ideal for larger samples or high-volume precision cutting operations.',
          link: 'https://metallographic.com/metallographic-equipment/precision-wafering/table-feed-precision-cutters.html',
          category: 'Precision Wafering',
          isPACE: true,
          reasoning: 'PICO-200A automated table feed provides consistent cutting parameters essential for high-volume precision work. Motorized feed ensures repeatable results for hard materials.',
        })
      } else {
        recs.sectioning.equipment.push({
          name: 'PICO-200S Table Feed Precision Cutter',
          description: 'High-speed (500-3000 rpm) manual variable speed table saw for precision cutting. Provides excellent control for hard materials and ceramics.',
          link: 'https://metallographic.com/metallographic-equipment/precision-wafering/table-feed-precision-cutters.html',
          category: 'Precision Wafering',
          isPACE: true,
          reasoning: 'PICO-200S offers manual control with table feed capability, providing flexibility for varied sample types while maintaining precision cutting capability.',
        })
      }
      
      // Recommend specific diamond blade based on material and sample size
      if (isVeryHard || isHardMaterial) {
        recs.sectioning.consumables.push({
          name: 'Diamond Wafering Blades (WB Series) - High Concentration',
          description: 'High concentration diamond blades (WB-xxxHC series) for cutting very hard materials and ceramics. Available in 3-8 inch diameters. Select grit size based on material: coarse for ceramics, medium for hard metals.',
          link: 'https://shop.metallographic.com/collections/diamond-blades',
          isPACE: true,
          reasoning: 'High concentration diamond blades (WB-xxxHC) provide aggressive cutting action needed for very hard materials. Coarse grit (WB-xxxCHC) for ceramics, medium grit (WB-xxxHC) for hard metals.',
        })
      } else {
        recs.sectioning.consumables.push({
          name: 'Diamond Wafering Blades (WB Series)',
          description: 'Diamond wafering blades for precision cutting. Available in various grit sizes and concentrations. Low concentration (WB-xxxLC) for general use, high concentration (WB-xxxHC) for harder materials.',
          link: 'https://shop.metallographic.com/collections/diamond-blades',
          isPACE: true,
          reasoning: 'Diamond blades essential for precision wafering. Select blade diameter based on sample size (3-8 inch available). Low concentration suitable for most materials, high concentration for harder materials.',
        })
      }
    }
    // For small/delicate samples that aren't hard: Consider precision cutting as option
    else if (isDelicate && needsPrecision) {
      recs.sectioning.equipment.push({
        name: 'PICO Series Precision Cutters',
        description: 'Diamond blade precision cutters for delicate samples requiring minimal sectioning damage.',
        link: 'https://metallographic.com/metallographic-equipment/precision-wafering.html',
        category: 'Precision Wafering',
        isPACE: true,
        reasoning: 'Precision cutting minimizes deformation for delicate samples, improving downstream preparation efficiency.',
      })
      
      recs.sectioning.consumables.push({
        name: 'Diamond Blades',
        description: 'Diamond blades for precision cutting of delicate samples.',
        link: 'https://shop.metallographic.com/collections/diamond-blades',
        isPACE: true,
      })
    }
    
    // For most metallic materials: Abrasive sectioning
    if (!isHardMaterial && !isBrittle) {
      // Select MEGA model based on sample size and throughput
      let bladeSize = '300' // Default 12-inch
      if (isVeryLarge) bladeSize = '400' // 16-inch
      else if (isLarge) bladeSize = '350' // 14-inch
      else if (isSmall) bladeSize = '250' // 10-inch
      
      if (isVeryHighThroughput && isAutomated) {
        recs.sectioning.equipment.push({
          name: `MEGA-T${bladeSize}A Automated Abrasive Cutter`,
          description: `Fully automated ${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch abrasive cutter with automated X/Y-axis table feed and programmable cutting cycles. Ideal for high-volume production with cutting capacity up to ${bladeSize === '400' ? '4.5' : bladeSize === '350' ? '4.5' : '4'}-inch solid stock.`,
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning/automated-abrasive-cutters.html',
          category: 'Automated Abrasive Sectioning',
          isPACE: true,
          reasoning: `MEGA-T${bladeSize}A provides full automation with programmable feed rates and cutting cycles. Automated X/Y table feed enables unattended operation, essential for very high throughput. ${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch blade size accommodates larger samples.`,
        })
      } else if (isHighThroughput || isAutomated) {
        recs.sectioning.equipment.push({
          name: `MEGA-T${bladeSize}A Automated Abrasive Cutter`,
          description: `Automated ${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch abrasive cutter with automated table feed and programmable controls for consistent sectioning operations.`,
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning/automated-abrasive-cutters.html',
          category: 'Automated Abrasive Sectioning',
          isPACE: true,
          reasoning: `Automated table feed ensures consistent cutting parameters. MEGA-T${bladeSize}A provides good balance of automation and flexibility for medium to high volume work.`,
        })
      } else if (isLarge || isVeryLarge) {
        recs.sectioning.equipment.push({
          name: `MEGA-T${bladeSize}S Manual Abrasive Cutter`,
          description: `Manual wheel and table feed ${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch abrasive cutter. Suitable for larger samples with cutting capacity up to ${bladeSize === '400' ? '4.5' : bladeSize === '350' ? '4.5' : '4'}-inch solid stock.`,
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
          category: 'Manual Abrasive Sectioning',
          isPACE: true,
          reasoning: `Larger blade size (${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch) accommodates larger samples. Manual control allows operator adjustment for varied materials.`,
        })
      } else {
        recs.sectioning.equipment.push({
          name: `MEGA-T${bladeSize}S Manual Abrasive Cutter`,
          description: `Manual wheel and table feed ${bladeSize === '400' ? '16' : bladeSize === '350' ? '14' : bladeSize === '300' ? '12' : '10'}-inch abrasive cutter. Cost-effective for low to medium volume operations.`,
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html',
          category: 'Manual Abrasive Sectioning',
          isPACE: true,
          reasoning: 'Manual control allows operator to adjust cutting speed based on material response. Table feed provides consistent cutting while maintaining operator control.',
        })
      }
      
      // Recommend specific MAXCUT blade based on material
      let bladeSizeNum = bladeSize === '400' ? '400' : bladeSize === '350' ? '350' : bladeSize === '300' ? '300' : '250'
      
      if (isStainless || isTitanium || isNickel) {
        recs.sectioning.consumables.push({
          name: `MAX-C${bladeSizeNum} Silicon Carbide Abrasive Blade`,
          description: `MAXCUT silicon carbide/resin-rubber bonded abrasive blade for hard non-ferrous metals (titanium, zirconium, nickel alloys). ${bladeSizeNum === '400' ? '16' : bladeSizeNum === '350' ? '14' : bladeSizeNum === '300' ? '12' : '10'}-inch diameter.`,
          link: 'https://shop.metallographic.com/collections/abrasive-blades',
          isPACE: true,
          reasoning: 'SiC blades (MAX-C series) are specifically designed for hard non-ferrous metals. SiC provides aggressive cutting action needed for titanium, nickel alloys, and similar materials.',
        })
      } else if (isSoftMetal) {
        recs.sectioning.consumables.push({
          name: `MAX-E${bladeSizeNum} Abrasive Blade`,
          description: `MAXCUT alumina/resin bonded abrasive blade for soft non-ferrous metals (aluminum, brass, zinc). ${bladeSizeNum === '400' ? '16' : bladeSizeNum === '350' ? '14' : bladeSizeNum === '300' ? '12' : '10'}-inch diameter.`,
          link: 'https://shop.metallographic.com/collections/abrasive-blades',
          isPACE: true,
          reasoning: 'MAX-E series blades are optimized for soft non-ferrous metals. Proper blade selection prevents excessive heat generation and material smearing in soft materials.',
        })
      } else if (isVeryHard) {
        recs.sectioning.consumables.push({
          name: `MAX-VHS${bladeSizeNum} Abrasive Blade`,
          description: `MAXCUT alumina/rubber bonded abrasive blade for hardened steels. ${bladeSizeNum === '400' ? '16' : bladeSizeNum === '350' ? '14' : bladeSizeNum === '300' ? '12' : '10'}-inch diameter.`,
          link: 'https://shop.metallographic.com/collections/abrasive-blades',
          isPACE: true,
          reasoning: 'MAX-VHS series blades are specifically designed for hardened steels. Rubber bond provides appropriate cutting action for very hard materials.',
        })
      } else {
        recs.sectioning.consumables.push({
          name: `MAX-D${bladeSizeNum} General Purpose Abrasive Blade`,
          description: `MAXCUT alumina/resin bonded abrasive blade for general purpose cutting of steels and ferrous metals. ${bladeSizeNum === '400' ? '16' : bladeSizeNum === '350' ? '14' : bladeSizeNum === '300' ? '12' : '10'}-inch diameter.`,
          link: 'https://shop.metallographic.com/collections/abrasive-blades',
          isPACE: true,
          reasoning: 'MAX-D series provides good general purpose cutting for most steels and ferrous metals. Cost-effective choice for typical metallographic sectioning.',
        })
      }
      
      // Add cutting fluid recommendation
      recs.sectioning.consumables.push({
        name: 'MAXCUT Abrasive Cutting Fluid',
        description: 'Water-based cutting fluid for abrasive sectioning. Provides cooling and lubrication during cutting. Available in 32 oz, 64 oz, 1 gallon, and 5 gallon sizes.',
        link: 'https://shop.metallographic.com/collections/cutting-fluids',
        isPACE: true,
        reasoning: 'Proper cutting fluid essential for cooling and lubrication. Prevents excessive heat generation and extends blade life. MAXCUT2 version includes anti-corrosion additive.',
      })
      
      // Advanced sectioning considerations for very high throughput
      if (needsAdvancedAutomation && isVeryHighThroughput) {
        recs.sectioning.equipment.push({
          name: 'Precision Automatic X/Y/Z Sectioning Machines',
          description: 'CNC-controlled sectioning systems with motorized feed, programmable cut cycles, and multi-axis positioning. Capable of complex cutting patterns and batch processing for high-volume precision cutting.',
          link: '#',
          category: 'Advanced Sectioning Automation',
          isPACE: false,
          reasoning: 'For high-volume precision cutting with complex geometries or batch processing, CNC-controlled sectioning systems provide programmable multi-axis cutting capabilities beyond standard automated cutters. Essential when processing hundreds of samples daily with complex cutting requirements.',
          alternative: {
            name: 'Specialized CNC Sectioning Manufacturers',
            description: 'Consult with manufacturers specializing in CNC-controlled metallographic sectioning systems for production-scale operations.',
            link: '#',
            reasoning: 'These systems are typically custom-configured for specific production requirements and available from specialized automation manufacturers.',
          },
        })
      }
      
      // Large sample cutters for very large samples
      if (isVeryLarge && (isVeryHighThroughput || isProduction)) {
        recs.sectioning.equipment.push({
          name: 'High-Speed / High-Torque Macro Cutters for Large Samples',
          description: 'Heavy-duty cutters designed for large components (engine blocks, forgings, large castings). Higher power and larger capacity than standard metallographic cutters, capable of handling samples exceeding 4-5 inches.',
          link: '#',
          category: 'Large Sample Sectioning',
          isPACE: false,
          reasoning: 'For samples exceeding 4-5 inches or very large components, specialized high-torque cutters with larger blade capacities are required. These systems handle heavy-duty cutting applications beyond standard metallographic equipment capabilities.',
          alternative: {
            name: 'Heavy-Duty Cutting Equipment Manufacturers',
            description: 'Consult with manufacturers of heavy-duty cutting equipment for large-scale metallographic sectioning.',
            link: '#',
            reasoning: 'Large sample cutting requires specialized equipment with higher power and capacity than standard metallographic cutters.',
          },
        })
      }
    }

    // ========== MOUNTING RECOMMENDATIONS ==========
    
    // Compression mounting for most applications
    if (isVeryHighThroughput || (isHighThroughput && isAutomated)) {
      recs.mounting.equipment.push({
        name: 'TP-7500S TERAPRESS Hydraulic Mounting Press',
        description: 'Programmable electro-hydraulic automated compression mounting press with interchangeable molds (1-2 inch). Features rapid ram movement, multiple cooling modes, and automatic programmable cycles. Ideal for high-volume mounting operations.',
        link: 'https://metallographic.com/metallographic-equipment/compression-mounting/hydraulic-mounting-press.html',
        category: 'Compression Mounting',
        isPACE: true,
        reasoning: 'TP-7500S hydraulic system provides higher pressure capability for larger samples and faster cycle times. Programmable controls ensure consistent mounting parameters essential for high-volume work. Available in 110V or 220V.',
      })
    } else if (isHighThroughput || isAutomated) {
      recs.mounting.equipment.push({
        name: 'TP-7500S TERAPRESS Hydraulic Mounting Press',
        description: 'Programmable electro-hydraulic mounting press with temperature and pressure control. Interchangeable molds, rapid ram movement, and multiple cooling modes for consistent, high-quality mounts.',
        link: 'https://metallographic.com/metallographic-equipment/compression-mounting/hydraulic-mounting-press.html',
        category: 'Compression Mounting',
        isPACE: true,
        reasoning: 'Hydraulic system offers better pressure control and higher capacity than pneumatic. Programmable cycles ensure consistency for medium to high volume work.',
      })
    } else {
      recs.mounting.equipment.push({
        name: 'TP-7100S TERAPRESS Pneumatic Mounting Press',
        description: 'Programmable pneumatic automated mounting press with easy force control. Features 1-2 inch interchangeable molds, rapid ram movement, multiple cooling modes, and automatic programmable cycles.',
        link: 'https://metallographic.com/metallographic-equipment/compression-mounting/pneumatic-mounting-press.html',
        category: 'Compression Mounting',
        isPACE: true,
        reasoning: 'TP-7100S pneumatic system offers good balance of speed, control, and cost for typical lab volumes. Programmable cycles provide consistency while remaining more economical than hydraulic systems. Available in 110V or 220V.',
      })
    }
    
    // Compression mounting consumables - Note: PACE primarily offers castable resins, compression resins typically from other suppliers
    recs.mounting.consumables.push({
      name: 'Thermosetting Mounting Resins',
      description: 'High-quality thermosetting resins (phenolic, diallyl phthalate) for compression mounting. Select based on material compatibility and edge retention needs. Note: PACE focuses on castable mounting resins; compression resins available from other suppliers.',
      link: 'https://shop.metallographic.com/collections/mounting-resins',
      isPACE: false,
      reasoning: 'Proper resin selection critical: phenolic for general use, DAP for better edge retention, conductive resins for SEM work. PACE specializes in castable mounting systems; compression mounting resins typically sourced from other manufacturers.',
    })

    // Cold mounting for temperature-sensitive materials
    if (isSoftMetal || isDelicate || needsPrecision || materialType.includes('Titanium')) {
      if (isHighThroughput) {
        recs.mounting.equipment.push({
          name: 'TeraUV UV Curing Mounting System',
          description: 'UV light mounting chamber for accelerated castable curing resins. Fastest mounting cycles for high-volume cold mounting applications.',
          link: 'https://metallographic.com/metallographic-equipment/castable-mounting/uv-curing-system.html',
          category: 'Cold Mounting',
          isPACE: true,
          reasoning: 'TeraUV provides fastest cold mounting cycles through UV curing. Essential for high-volume work with temperature-sensitive materials.',
        })
      } else if (needsPrecision || isDelicate) {
        recs.mounting.equipment.push({
          name: 'TeraVAC Pro Vacuum Impregnation System',
          description: 'Programmable castable vacuum impregnation chamber. Removes air bubbles for clear, bubble-free mounts essential for precision work and delicate samples.',
          link: 'https://metallographic.com/metallographic-equipment/castable-mounting/vacuum-mounting-system.html',
          category: 'Cold Mounting',
          isPACE: true,
          reasoning: 'TeraVAC Pro vacuum system removes air bubbles critical for clear mounts in precision applications. Programmable controls ensure consistent results.',
        })
      } else {
        recs.mounting.equipment.push({
          name: 'TeraVAC Vacuum Impregnation System',
          description: 'Vacuum impregnation system for room-temperature mounting. Removes air bubbles for clear mounts without heat application.',
          link: 'https://metallographic.com/metallographic-equipment/castable-mounting/vacuum-mounting-system.html',
          category: 'Cold Mounting',
          isPACE: true,
          reasoning: 'Vacuum mounting removes bubbles for clear mounts. Essential for soft metals and heat-sensitive materials where compression mounting would alter microstructure.',
        })
      }
      
      // Recommend specific PACE epoxy resins
      if (isHighThroughput) {
        recs.mounting.consumables.push({
          name: 'QUICKMOUNT 2 Fast Epoxy Resin (ERF-3000 series)',
          description: 'Fast-curing epoxy resin system for rapid cold mounting. Faster cycles than standard epoxy while maintaining good edge retention. Available in 32 oz, 1 gallon, and 5 gallon sizes.',
          link: 'https://shop.metallographic.com/collections/mounting-resins',
          isPACE: true,
          reasoning: 'QUICKMOUNT 2 provides faster curing than standard epoxy, ideal for high-volume cold mounting. Good balance of speed and edge retention.',
        })
      } else if (needsPrecision) {
        recs.mounting.consumables.push({
          name: 'ULTRATHIN 2 Low Viscosity Epoxy (ULTRA-3000 series)',
          description: 'Low viscosity epoxy resin for vacuum impregnation. Excellent penetration for porous materials and complex geometries. Superior edge retention for precision work.',
          link: 'https://shop.metallographic.com/collections/mounting-resins',
          isPACE: true,
          reasoning: 'ULTRATHIN 2 low viscosity essential for vacuum impregnation. Excellent penetration and edge retention make it ideal for precision applications and delicate samples.',
        })
      } else {
        recs.mounting.consumables.push({
          name: 'EPOCAST Plus Epoxy Resin (EP-3000 series)',
          description: 'High-quality epoxy resin for cold mounting. Excellent edge retention and chemical resistance. Available in various sizes including 5 gallon for high-volume use.',
          link: 'https://shop.metallographic.com/collections/mounting-resins',
          isPACE: true,
          reasoning: 'EPOCAST Plus provides excellent edge retention and chemical resistance. Standard choice for most cold mounting applications requiring good edge retention.',
        })
      }
    }

    // ========== GRINDING RECOMMENDATIONS ==========
    
    // Initial rough grinding - hand/belt grinder for large material removal
    if (isLarge || isVeryLarge || !isDelicate) {
      recs.grinding.equipment.push({
        name: 'PENTA Series Hand & Belt Grinders',
        description: 'Belt grinding systems for initial rough grinding and rapid material removal. Essential for large samples or removing significant sectioning damage.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/hand-belt-grinders.html',
        category: 'Hand Grinding',
        isPACE: true,
        reasoning: 'Belt grinding provides fastest material removal for initial preparation. Critical for large samples or when sectioning damage is significant.',
      })
    }

    // Main grinding equipment
    if (isVeryHighThroughput && isAutomated) {
      // Select NANO base and FEMTO head based on wheel size needs
      if (isLarge || isVeryLarge) {
        recs.grinding.equipment.push({
          name: 'NANO-1200T with FEMTO-2200S Automatic Polishing Head',
          description: '12-14 inch wheel grinder polisher with semi-automated polishing head. FEMTO-2200S provides variable speed (0-200 rpm), pneumatically adjustable individual pistons for 1-6 specimens. Programmable cycles for consistent grinding and polishing.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
          category: 'Semi-Automated Grinding',
          isPACE: true,
          reasoning: 'NANO-1200T accommodates larger wheels (12-14 inch) for larger samples. FEMTO-2200S automated head provides consistency while maintaining flexibility. Individual pistons allow independent pressure control per sample.',
        })
      } else {
        recs.grinding.equipment.push({
          name: 'NANO-1000S with FEMTO-1100S Automatic Polishing Head',
          description: '8-10 inch wheel grinder polisher with semi-automated polishing head. FEMTO-1100S provides variable speed (0-200 rpm), pneumatically adjustable individual pistons for 1-6 specimens. Programmable cycles for consistent grinding.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
          category: 'Semi-Automated Grinding',
          isPACE: true,
          reasoning: 'NANO-1000S with FEMTO-1100S provides semi-automation for consistent grinding. Individual pistons allow independent pressure control. Programmable cycles ensure repeatable grinding steps.',
        })
      }
    } else if (isHighThroughput || isSemiAutomated) {
      if (isLarge || isVeryLarge) {
        recs.grinding.equipment.push({
          name: 'NANO-1200T with FEMTO-2500S Automatic Polishing Head',
          description: '12-14 inch wheel system with dual individual and central automatic polishing head. Can polish 1-6 specimens independently or 3-6 using fixed central force for superior flatness.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
          category: 'Semi-Automated Grinding',
          isPACE: true,
          reasoning: 'FEMTO-2500S dual mode (individual or central force) provides flexibility. Central force mode offers superior flatness for larger samples. Good balance of automation and control.',
        })
      } else {
        recs.grinding.equipment.push({
          name: 'NANO-2000S with FEMTO-1500S Automatic Polishing Head',
          description: 'Dual 8-10 inch wheel system with dual individual and central automatic polishing head. Can polish 1-6 specimens independently or 3-6 using fixed central force for superior flatness.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
          category: 'Semi-Automated Grinding',
          isPACE: true,
          reasoning: 'NANO-2000S dual wheel allows grinding on one wheel while polishing on another, improving throughput. FEMTO-1500S dual mode provides flexibility for varied sample types.',
        })
      }
    } else {
      if (isLarge || isVeryLarge) {
        recs.grinding.equipment.push({
          name: 'NANO-1200T Manual Grinder Polisher',
          description: 'Single wheel manual grinder polisher for 12-14 inch wheels. Variable speed (100-1000 rpm), 1.5 hp motor. Operator controls pressure, speed, and technique.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/nano.html',
          category: 'Manual Grinding',
          isPACE: true,
          reasoning: 'NANO-1200T accommodates larger wheels for larger samples. Manual control provides maximum flexibility for varied materials. Can be upgraded with FEMTO head later.',
        })
      } else {
        recs.grinding.equipment.push({
          name: 'NANO-1000S Manual Grinder Polisher',
          description: 'Single wheel manual grinder polisher for 8-10 inch wheels. Variable speed (100-1000 rpm), 1 hp motor. Operator controls pressure, speed, and technique.',
          link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/nano.html',
          category: 'Manual Grinding',
          isPACE: true,
          reasoning: 'NANO-1000S provides maximum operator flexibility for varied materials and techniques. Cost-effective for low to medium volume. Can be upgraded with FEMTO-1100S head for automation later.',
        })
      }
    }

    // Grinding consumables - material specific
    if (isStainless || isTitanium || isNickel || isHard) {
      recs.grinding.consumables.push({
        name: 'Silicon Carbide (SiC) Abrasive Papers',
        description: 'Silicon carbide papers for grinding hard materials. SiC provides aggressive cutting action essential for hard alloys.',
        link: 'https://shop.metallographic.com/collections/abrasive-papers',
        isPACE: true,
        reasoning: 'SiC is harder and more aggressive than Al2O3, essential for hard materials. Progressive grit sequence (P120, P240, P320, P400, P600) removes damage efficiently.',
      })
    } else if (isSoftMetal) {
      recs.grinding.consumables.push({
        name: 'Aluminum Oxide (Al2O3) Abrasive Papers',
        description: 'Aluminum oxide papers suitable for softer materials. Less aggressive than SiC, reducing risk of embedding and pull-out.',
        link: 'https://shop.metallographic.com/collections/abrasive-papers',
        isPACE: true,
        reasoning: 'Al2O3 is less aggressive than SiC, reducing risk of embedding abrasive in soft materials. Appropriate for Al, Cu, and soft steels.',
      })
    } else {
      recs.grinding.consumables.push({
        name: 'Abrasive Papers (SiC/Al2O3)',
        description: 'High-quality abrasive papers. Use SiC for hard materials, Al2O3 for softer materials. Progressive grit sequence removes damage efficiently.',
        link: 'https://shop.metallographic.com/collections/abrasive-papers',
        isPACE: true,
        reasoning: 'Proper grit sequence (typically P120→P240→P320→P400→P600) critical for damage removal. SiC for hard materials, Al2O3 for soft.',
      })
    }

    // ========== POLISHING RECOMMENDATIONS ==========
    
    // Polishing equipment
    if (needsPrecision && (isPremium || applications.includes('Failure Analysis'))) {
      // Controlled removal polisher for precision applications
      recs.polishing.equipment.push({
        name: 'ATTO-1000S Controlled Removal Polisher',
        description: 'Advanced polishing system with precise material removal control. Essential for depth measurements, case depth analysis, and applications requiring exact material removal rates.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/atto.html',
        category: 'Controlled Removal Polishing',
        isPACE: true,
        reasoning: 'Controlled removal capability essential for case depth measurements, failure analysis, and applications requiring precise depth control.',
      })
    } else if (isVeryHighThroughput && isAutomated && needsAdvancedAutomation) {
      // For extremely high throughput, suggest fully automated systems
      recs.polishing.equipment.push({
        name: 'Fully-Automated Grinder-Polishers',
        description: 'Systems with automatic sample loading/unloading and multi-stage method sequencing. Capable of running complete preparation sequences (grinding through final polish) without operator intervention. Processes multiple samples simultaneously through sequential preparation steps.',
        link: '#',
        category: 'Advanced Polishing Automation',
        isPACE: false,
        reasoning: 'For very high throughput (>200 samples/day), fully automated systems with robotic sample handling and sequential method execution are essential. These systems can process multiple samples simultaneously through complete preparation sequences without operator intervention.',
        alternative: {
          name: 'Fully-Automated Preparation System Manufacturers',
          description: 'Consult with manufacturers specializing in fully automated metallographic preparation systems for production-scale operations.',
          link: '#',
          reasoning: 'Fully automated grinder-polishers with sample handling are available from specialized automation manufacturers and are essential for production-scale labs.',
        },
      })
    } else if (isVeryHighThroughput && isAutomated) {
      recs.polishing.equipment.push({
        name: 'FEMTO Series Semi-Auto Grinder Polishers',
        description: 'Semi-automated polishing systems with programmable cycles for high-volume, consistent polishing operations.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
        category: 'Semi-Automated Polishing',
        isPACE: true,
        reasoning: 'Semi-automation provides consistency for high-volume production. Programmable cycles ensure repeatable polishing steps.',
      })
    } else if (isHighThroughput || isSemiAutomated) {
      recs.polishing.equipment.push({
        name: 'FEMTO Series Semi-Auto Grinder Polishers',
        description: 'Semi-automated polishing systems balancing automation with operator flexibility.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/femto.html',
        category: 'Semi-Automated Polishing',
        isPACE: true,
        reasoning: 'Semi-automation improves consistency while maintaining flexibility for varied materials.',
      })
    } else {
      // Manual polishing - can use same NANO system as grinding
      recs.polishing.equipment.push({
        name: 'NANO Series Grinder Polishers',
        description: 'Versatile manual grinder polishers suitable for both grinding and polishing operations. Operator controls pressure, speed, and technique.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing/nano.html',
        category: 'Manual Polishing',
        isPACE: true,
        reasoning: 'Manual systems provide maximum operator control for varied materials and polishing techniques. Cost-effective for low to medium volume.',
      })
    }

    // Polishing consumables - intermediate polishing
    if (isHard || isStainless || isTitanium || isNickel) {
      recs.polishing.consumables.push({
        name: 'TEXPAN Intermediate Polishing Pad (TP-50xx series)',
        description: 'Non-woven intermediate polishing pad compatible with 3-15 μm diamond. Excellent for hard materials and alloys. Available in 8, 9, 10, 12, and 14 inch diameters with PSA backing.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'TEXPAN (TP-50xx) provides good material removal with diamond suspensions. Ideal for intermediate steps on hard materials. Non-woven structure offers consistent polishing action.',
      })
      
      recs.polishing.consumables.push({
        name: 'Diamond Suspensions (9 μm, 6 μm, 3 μm)',
        description: 'Diamond polishing suspensions for intermediate polishing steps. Progressive size reduction removes grinding damage.',
        link: 'https://shop.metallographic.com/collections/diamond-suspensions',
        isPACE: true,
        reasoning: 'Progressive diamond polishing (9→6→3 μm) essential for hard materials. Diamond provides aggressive cutting action needed for hard alloys.',
      })
    } else if (isSoftMetal) {
      recs.polishing.consumables.push({
        name: 'GOLD PAD Intermediate Polishing Pad',
        description: 'Low-nap pad ideal for 1-9 μm diamond polishing. Provides consistent material removal and flatness control. Available in various sizes with PSA backing.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'GOLD PAD low-nap pad reduces risk of pull-out and relief in soft materials. Excellent flatness control essential for soft metals where relief is a concern.',
      })
      
      recs.polishing.consumables.push({
        name: 'Diamond Suspensions (6 μm, 3 μm, 1 μm)',
        description: 'Diamond polishing suspensions for soft materials. Use finer grits to minimize pull-out and relief.',
        link: 'https://shop.metallographic.com/collections/diamond-suspensions',
        isPACE: true,
        reasoning: 'Finer diamond grits (6→3→1 μm) reduce pull-out in soft materials. Lower pressure and finer grits minimize relief.',
      })
    } else {
      recs.polishing.consumables.push({
        name: 'TEXPAN or GOLD PAD Intermediate Polishing Pads',
        description: 'Intermediate polishing pads for diamond polishing. TEXPAN for harder materials, GOLD PAD for softer materials.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'Select pad based on material: TEXPAN for hard materials, GOLD PAD for soft materials requiring flatness control.',
      })
      
      recs.polishing.consumables.push({
        name: 'Diamond Suspensions (6 μm, 3 μm, 1 μm)',
        description: 'Diamond polishing suspensions for intermediate polishing. Progressive size reduction removes damage.',
        link: 'https://shop.metallographic.com/collections/diamond-suspensions',
        isPACE: true,
        reasoning: 'Diamond polishing essential for damage removal. Progressive grit sequence (6→3→1 μm) removes scratches efficiently.',
      })
    }

    // Final polishing consumables
    if (isStainless || isTitanium || isNickel) {
      recs.polishing.consumables.push({
        name: 'MICROPAD Final Polishing Pad (MP-90xx series)',
        description: 'High-nap final polishing pad for mirror finishes. Ideal with <1 μm diamond or colloidal silica. Available in 8, 9, 10, 12, and 14 inch diameters with PSA backing.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'MICROPAD (MP-90xx) high-nap pad provides gentle final polishing action essential for achieving mirror finish on hard alloys. High nap minimizes scratching during final polish.',
      })
      
      recs.polishing.consumables.push({
        name: 'Colloidal Silica',
        description: 'Final polishing suspension for achieving mirror-like finishes on stainless steel, titanium, and nickel alloys.',
        link: 'https://shop.metallographic.com/collections/polishing-suspensions',
        isPACE: true,
        reasoning: 'Colloidal silica provides chemical-mechanical polishing action, essential for mirror finish on hard alloys. Removes fine scratches and produces deformation-free surface.',
      })
    } else if (isSoftMetal) {
      recs.polishing.consumables.push({
        name: 'NAPPAD Final Polishing Pad',
        description: 'Very high-nap pad tailored for soft metals. Provides gentle polishing action to minimize pull-out and relief.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'Very high-nap pad minimizes pull-out and relief in soft materials. Gentle action preserves microstructure.',
      })
      
      recs.polishing.consumables.push({
        name: 'Colloidal Silica or <1 μm Diamond',
        description: 'Final polishing suspension for soft materials. Colloidal silica or fine diamond for mirror finish.',
        link: 'https://shop.metallographic.com/collections/polishing-suspensions',
        isPACE: true,
        reasoning: 'Fine polishing essential for soft materials. Colloidal silica or <1 μm diamond provides gentle final polishing.',
      })
    } else {
      recs.polishing.consumables.push({
        name: 'MICROPAD or TRICOTE Final Polishing Pad',
        description: 'Final polishing pads for mirror finish. MICROPAD for general use, TRICOTE for better texture control.',
        link: 'https://shop.metallographic.com/collections/polishing-cloths',
        isPACE: true,
        reasoning: 'High-nap pads essential for final polishing. MICROPAD for general use, TRICOTE for better surface texture control.',
      })
      
      recs.polishing.consumables.push({
        name: 'Colloidal Silica or <1 μm Diamond',
        description: 'Final polishing suspension for achieving mirror finish.',
        link: 'https://shop.metallographic.com/collections/polishing-suspensions',
        isPACE: true,
        reasoning: 'Final polishing suspension removes fine scratches and produces deformation-free surface for microscopy.',
      })
    }

    // ========== ETCHING RECOMMENDATIONS ==========
    
    if (materialType.includes('Steel') && !isStainless) {
      if (!recs.etching) recs.etching = { consumables: [] }
      recs.etching.consumables.push({
        name: 'Nital (2-3% Nitric Acid in Ethanol)',
        description: 'Standard etchant for carbon and low-alloy steels. Reveals ferrite grain boundaries and pearlite structure.',
        link: 'https://shop.metallographic.com/collections/etchants',
        isPACE: true,
        reasoning: 'Nital is the most common etchant for carbon steels. 2% for softer steels, 3% for harder steels. Essential for grain size analysis.',
      })
    }
    
    if (isStainless) {
      if (!recs.etching) recs.etching = { consumables: [] }
      recs.etching.consumables.push({
        name: 'Kalling\'s No. 2 Etchant',
        description: 'Standard etchant for austenitic stainless steels. Reveals grain boundaries and twin boundaries.',
        link: 'https://shop.metallographic.com/collections/etchants',
        isPACE: true,
        reasoning: 'Kalling\'s No. 2 is standard for austenitic stainless. Electrolytic etching may be required for some stainless grades.',
      })
    }
    
    if (materialType.includes('Aluminum')) {
      if (!recs.etching) recs.etching = { consumables: [] }
      recs.etching.consumables.push({
        name: 'Keller\'s Reagent',
        description: 'Standard etchant for aluminum alloys. Reveals grain structure and second phases.',
        link: 'https://shop.metallographic.com/collections/etchants',
        isPACE: true,
        reasoning: 'Keller\'s reagent is standard for aluminum. Alternative: Weck\'s reagent for anodizing technique.',
      })
    }

    // ========== MICROSCOPY RECOMMENDATIONS ==========
    
    if (isPremium || applications.includes('Research & Development') || applications.includes('Material Characterization')) {
      recs.microscopy = {
        equipment: [
          {
            name: 'IM Series Metallurgical Microscopes',
            description: 'High-quality metallurgical microscopes with brightfield, darkfield, and DIC capabilities. Essential for microstructure analysis.',
            link: 'https://metallographic.com/metallographic-equipment/microscopy/metallurgical-microscopes.html',
            category: 'Metallurgical Microscopy',
            isPACE: true,
            reasoning: 'Metallurgical microscopes essential for microstructure examination. Digital imaging capabilities important for documentation and analysis.',
          },
        ],
      }
      
      // Note: PACE doesn't manufacture microscopes, but they may resell or recommend specific models
      // For now, we'll show PACE's offering but note that alternatives exist
      if (applications.includes('Research & Development')) {
        recs.microscopy.equipment[0].alternative = {
          name: 'Advanced Research Microscopes',
          description: 'For advanced research applications, consider microscopes with advanced imaging modes (EBSD, confocal) from specialized manufacturers.',
          link: 'https://metallographic.com/metallographic-equipment/microscopy.html',
          reasoning: 'Advanced research may require specialized microscopy capabilities (EBSD, confocal, SEM) not available in standard metallurgical microscopes.',
        }
      }
      
      // Advanced microscopy for high-throughput or research applications
      if (needsAdvancedAutomation && (isPremium || applications.includes('Research & Development'))) {
        recs.microscopy.equipment.push({
          name: 'Motorized Metallurgical Microscopes',
          description: 'Microscopes with auto-focus, motorized X/Y stage, auto-scan capabilities, and automated image stitching. Enables automated large-area scanning and panoramic imaging for systematic microstructure analysis.',
          link: '#',
          category: 'Microscopy Automation',
          isPACE: false,
          reasoning: 'For systematic microstructure analysis, large-area scanning, or automated documentation, motorized microscopes with auto-focus and stage control are essential. Enables unattended imaging operations and comprehensive sample documentation.',
          alternative: {
            name: 'Motorized Microscope Manufacturers',
            description: 'Consult with manufacturers specializing in motorized metallurgical microscopes with automated imaging capabilities.',
            link: '#',
            reasoning: 'Motorized microscopes with automated imaging are available from specialized manufacturers and essential for high-throughput documentation or systematic analysis.',
          },
        })
      }
      
      if (applications.includes('Research & Development') || applications.includes('Material Characterization')) {
        recs.microscopy.equipment.push({
          name: 'Advanced Image Stitching or Whole Slide Scanners',
          description: 'Systems for creating panoramic images of entire samples through automated image acquisition and stitching. Essential for large-area microstructure documentation and comprehensive sample analysis.',
          link: '#',
          category: 'Image Analysis',
          isPACE: false,
          reasoning: 'For comprehensive sample documentation or large-area analysis, whole slide scanning systems automatically acquire and stitch multiple images into panoramic views of entire samples. Essential for research applications requiring complete sample documentation.',
          alternative: {
            name: 'Whole Slide Imaging System Manufacturers',
            description: 'Consult with manufacturers specializing in automated image stitching and whole slide scanning systems for metallographic applications.',
            link: '#',
            reasoning: 'Whole slide scanning systems are available from specialized manufacturers and provide comprehensive sample documentation capabilities.',
          },
        })
      }
    }
    
    // ========== HARDNESS TESTING RECOMMENDATIONS ==========
    
    if (needsPrecision && (applications.includes('Failure Analysis') || applications.includes('Research & Development'))) {
      recs.hardness = {
        equipment: [
          {
            name: 'Fully-Automated Microhardness Mapping Systems',
            description: 'Systems with motorized X/Y stage, automatic indentation sequencing, and integrated software for hardness mapping and analysis. Capable of generating hardness profiles and maps automatically for case depth analysis and systematic hardness evaluation.',
            link: '#',
            category: 'Hardness Testing Automation',
            isPACE: false,
            reasoning: 'For case depth analysis, hardness profiling, or systematic hardness mapping, fully automated systems with motorized stages and analysis software are essential. Enables unattended hardness mapping operations and comprehensive hardness documentation.',
            alternative: {
              name: 'Automated Microhardness System Manufacturers',
              description: 'Consult with manufacturers specializing in fully automated microhardness mapping systems with motorized stages.',
              link: '#',
              reasoning: 'Fully automated microhardness mapping systems are available from specialized manufacturers and essential for systematic hardness analysis.',
            },
          },
        ],
      }
    }
    
    // ========== ADVANCED PREPARATION FOR SPECIALIZED APPLICATIONS ==========
    
    if (needsPrecision && (applications.includes('Failure Analysis') || applications.includes('Research & Development'))) {
      // Add FIB-SEM prep to polishing section if relevant
      if (needsPrecision && applications.includes('Failure Analysis')) {
        recs.polishing.equipment.push({
          name: 'FIB-SEM Prep Systems (Ion Polishing, Cryo-Prep)',
          description: 'Focused Ion Beam (FIB) systems and ion polishing equipment for nanostructure analysis and extreme precision preparation. Includes cryo-preparation capabilities for heat-sensitive materials. Essential for TEM preparation and nanometer-scale analysis.',
          link: '#',
          category: 'Advanced Preparation',
          isPACE: false,
          reasoning: 'For nanostructure analysis, TEM preparation, or extreme precision requirements, FIB systems and ion polishing provide damage-free preparation at nanometer scales. Cryo-prep essential for materials sensitive to heat or deformation. Required for high-resolution failure analysis.',
          alternative: {
            name: 'FIB-SEM and Ion Milling System Manufacturers',
            description: 'Consult with manufacturers specializing in FIB systems, ion polishing, and cryo-preparation equipment for advanced metallographic applications.',
            link: '#',
            reasoning: 'FIB-SEM prep systems are available from specialized manufacturers and essential for nanostructure analysis and TEM preparation.',
          },
        })
      }
      
      // Ion milling systems
      if (applications.includes('Failure Analysis')) {
        recs.polishing.equipment.push({
          name: 'Ion Milling Systems',
          description: 'Ion beam milling equipment for TEM sample preparation and high-end failure analysis. Provides damage-free preparation for electron microscopy with superior surface quality compared to mechanical methods.',
          link: '#',
          category: 'Advanced Preparation',
          isPACE: false,
          reasoning: 'For TEM preparation or high-resolution failure analysis requiring damage-free surfaces, ion milling systems provide superior preparation quality compared to mechanical methods. Essential for electron microscopy applications.',
          alternative: {
            name: 'Ion Milling System Manufacturers',
            description: 'Consult with manufacturers specializing in ion beam milling systems for TEM and advanced failure analysis applications.',
            link: '#',
            reasoning: 'Ion milling systems are available from specialized manufacturers and provide superior preparation quality for electron microscopy.',
          },
        })
      }
    }
    
    // Environmental control for sensitive materials
    if (needsPrecision || materialType.includes('Titanium') || isSoftMetal || isDelicate) {
      if (!recs.cleaning) recs.cleaning = { equipment: [] }
      recs.cleaning.equipment.push({
        name: 'Environmental Control Cabinets',
        description: 'Temperature and humidity-controlled preparation zones. Essential for materials sensitive to environmental conditions or when consistent preparation conditions are critical for reproducible results.',
        link: '#',
        category: 'Environmental Control',
        isPACE: false,
        reasoning: 'For materials sensitive to temperature/humidity variations or when maintaining consistent preparation conditions is critical, environmental control cabinets ensure stable preparation environments. Essential for precision work with sensitive materials.',
        alternative: {
          name: 'Environmental Control System Manufacturers',
          description: 'Consult with manufacturers specializing in environmental control cabinets for metallographic preparation.',
          link: '#',
          reasoning: 'Environmental control cabinets are available from specialized manufacturers and essential for maintaining consistent preparation conditions.',
        },
      })
    }
    
    // Integrated workcells for production-scale automation
    if (needsAdvancedAutomation && isVeryHighThroughput && isProduction) {
      recs.grinding.equipment.push({
        name: 'Integrated Sample Prep Workcells',
        description: 'Complete automated systems integrating cut → mount → grind → polish → clean operations in a single workcell. Fully automated end-to-end sample preparation with robotic sample handling between stations.',
        link: '#',
        category: 'Complete Automation',
        isPACE: false,
        reasoning: 'For production-scale operations requiring maximum throughput, integrated workcells combine all preparation steps in a single automated system. Eliminates manual intervention throughout the entire preparation process. Essential for 24/7 unattended operation.',
        alternative: {
          name: 'Integrated Workcell System Integrators',
          description: 'Consult with automation integrators specializing in complete metallographic preparation workcells.',
          link: '#',
          reasoning: 'Integrated workcells are typically custom-configured systems from automation integrators and provide complete end-to-end automation.',
        },
      })
      
      recs.sectioning.equipment.push({
        name: 'Integrated Robotic Sample Handlers',
        description: 'Robot arms or conveyor systems that transport samples between preparation stations (sectioning → mounting → grinding → polishing → cleaning). Enables fully automated workflow with 24/7 unattended operation.',
        link: '#',
        category: 'Workflow Automation',
        isPACE: false,
        reasoning: 'Robotic handlers eliminate manual sample transfer between stations, enabling true 24/7 unattended operation. Essential for production-scale labs processing hundreds of samples daily where manual transfer would be a bottleneck.',
        alternative: {
          name: 'Robotic Automation Integrators',
          description: 'Consult with automation integrators specializing in robotic sample handling for metallographic workflows.',
          link: '#',
          reasoning: 'Robotic sample handlers are typically integrated by automation specialists and essential for fully automated production workflows.',
        },
      })
    }
    
    // LIMS integration for production labs
    if (isProduction && isVeryHighThroughput) {
      if (!recs.microscopy) recs.microscopy = { equipment: [] }
      recs.microscopy.equipment.push({
        name: 'LIMS Integration / Barcode Sample Tracking Systems',
        description: 'Laboratory Information Management Systems with barcode tracking, workflow automation, and digital traceability. Tracks samples through entire preparation and analysis workflow with automated routing and documentation.',
        link: '#',
        category: 'Workflow Management',
        isPACE: false,
        reasoning: 'For production labs requiring traceability, quality control documentation, and workflow management, LIMS integration with barcode tracking is essential. Enables digital traceability, automated workflow routing, and comprehensive documentation for quality systems.',
        alternative: {
          name: 'LIMS and Sample Tracking System Providers',
          description: 'Consult with LIMS providers specializing in metallographic laboratory workflow management and sample tracking.',
          link: '#',
          reasoning: 'LIMS systems with barcode tracking are available from specialized software providers and integrate with metallographic equipment for complete workflow automation.',
        },
      })
    }

    setRecommendations(recs)
    setStep(3)
  }

  const handleInputChange = (field: string, value: string | string[]) => {
    setFormData((prev) => ({
      ...prev,
      [field]: value,
    }))
  }

  const toggleApplication = (app: string) => {
    setFormData((prev) => ({
      ...prev,
      applications: prev.applications.includes(app)
        ? prev.applications.filter((a) => a !== app)
        : [...prev.applications, app],
    }))
  }

  const canProceedToStep2 = () => {
    return formData.materialType && formData.materialHardness && formData.sampleSize
  }

  const canGenerateRecommendations = () => {
    return formData.throughput && formData.automation && formData.budget
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-4xl mx-auto">
          {/* Header */}
          <header className="mb-12 text-center">
            <span className="text-sm font-semibold text-primary-600 uppercase tracking-wide mb-2 block">
              Lab Configuration Tool
            </span>
            <h1 className="text-4xl font-bold mb-4">Build Your Lab</h1>
            <p className="text-xl text-gray-600 max-w-2xl mx-auto">
              Get personalized equipment and consumable recommendations based on your sample specifications, 
              materials, and workflow requirements.
            </p>
          </header>

          {/* Progress Steps */}
          <div className="mb-8">
            <div className="flex items-center justify-center space-x-4">
              <div className={`flex items-center ${step >= 1 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 1 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 1 ? <CheckCircle2 className="w-6 h-6" /> : <span className="font-semibold">1</span>}
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Sample Specs</span>
              </div>
              <div className={`w-16 h-0.5 ${step >= 2 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex items-center ${step >= 2 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 2 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 2 ? <CheckCircle2 className="w-6 h-6" /> : <span className="font-semibold">2</span>}
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Workflow</span>
              </div>
              <div className={`w-16 h-0.5 ${step >= 3 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex items-center ${step >= 3 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 3 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  <span className="font-semibold">3</span>
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Recommendations</span>
              </div>
            </div>
          </div>

          {/* Step 1: Sample Specifications */}
          {step === 1 && (
            <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
              <h2 className="text-2xl font-bold mb-6">Sample Specifications</h2>
              
              <div className="space-y-6">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Material Type <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.materialType}
                    onChange={(e) => handleInputChange('materialType', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select material type...</option>
                    {materialTypes.map((type) => (
                      <option key={type} value={type}>
                        {type}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Material Hardness <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.materialHardness}
                    onChange={(e) => handleInputChange('materialHardness', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select hardness level...</option>
                    {hardnessLevels.map((level) => (
                      <option key={level} value={level}>
                        {level}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Sample Size <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.sampleSize}
                    onChange={(e) => handleInputChange('sampleSize', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select sample size...</option>
                    {sampleSizes.map((size) => (
                      <option key={size} value={size}>
                        {size}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Sample Shape
                  </label>
                  <select
                    value={formData.sampleShape}
                    onChange={(e) => handleInputChange('sampleShape', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select sample shape...</option>
                    <option value="Regular">Regular (Rectangular/Cylindrical)</option>
                    <option value="Irregular">Irregular/Complex</option>
                    <option value="Thin">Thin Section</option>
                    <option value="Small">Small/Delicate</option>
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Primary Applications
                  </label>
                  <div className="space-y-2">
                    {applicationOptions.map((app) => (
                      <label key={app} className="flex items-center space-x-2 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={formData.applications.includes(app)}
                          onChange={() => toggleApplication(app)}
                          className="w-4 h-4 text-primary-600 border-gray-300 rounded focus:ring-primary-600"
                        />
                        <span className="text-gray-700">{app}</span>
                      </label>
                    ))}
                  </div>
                </div>
              </div>

              <div className="mt-8 flex justify-end">
                <button
                  onClick={() => setStep(2)}
                  disabled={!canProceedToStep2()}
                  className={`px-6 py-3 rounded-full font-semibold transition-all duration-200 ${
                    canProceedToStep2()
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  Next: Workflow Requirements <ChevronRight className="w-4 h-4 inline ml-1" />
                </button>
              </div>
            </div>
          )}

          {/* Step 2: Workflow Requirements */}
          {step === 2 && (
            <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
              <h2 className="text-2xl font-bold mb-6">Workflow Requirements</h2>
              
              <div className="space-y-6">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Daily Throughput <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.throughput}
                    onChange={(e) => handleInputChange('throughput', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select throughput level...</option>
                    {throughputOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Automation Level <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.automation}
                    onChange={(e) => handleInputChange('automation', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select automation level...</option>
                    {automationOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Budget Range <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.budget}
                    onChange={(e) => handleInputChange('budget', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select budget range...</option>
                    {budgetOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>
              </div>

              <div className="mt-8 flex justify-between">
                <button
                  onClick={() => setStep(1)}
                  className="px-6 py-3 rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200"
                >
                  ← Back
                </button>
                <button
                  onClick={generateRecommendations}
                  disabled={!canGenerateRecommendations()}
                  className={`px-6 py-3 rounded-full font-semibold transition-all duration-200 ${
                    canGenerateRecommendations()
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  Generate Recommendations <ChevronRight className="w-4 h-4 inline ml-1" />
                </button>
              </div>
            </div>
          )}

          {/* Step 3: Recommendations */}
          {step === 3 && recommendations && (
            <div className="space-y-8">
              <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                <div className="flex items-center justify-between mb-6">
                  <h2 className="text-2xl font-bold">Your Recommendations</h2>
                  <button
                    onClick={() => {
                      setStep(1)
                      setRecommendations(null)
                      setFormData({
                        materialType: '',
                        materialHardness: '',
                        sampleSize: '',
                        sampleShape: '',
                        throughput: '',
                        automation: '',
                        budget: '',
                        applications: [],
                      })
                    }}
                    className="px-4 py-2 text-sm rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200"
                  >
                    Start Over
                  </button>
                </div>
                <p className="text-gray-600 mb-6">
                  Based on your specifications, here are our recommended equipment and consumables for your lab setup.
                </p>
              </div>

              {/* Sectioning */}
              {(recommendations.sectioning.equipment.length > 0 || recommendations.sectioning.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Sectioning</h3>
                  </div>

                  {recommendations.sectioning.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.sectioning.equipment.map((item, idx) => (
                          <div key={idx} className={`border-l-4 p-4 rounded ${item.isPACE ? 'bg-gray-50 border-primary-600' : 'bg-amber-50 border-amber-500'}`}>
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE ? (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              ) : (
                                <span className="text-xs bg-amber-100 text-amber-700 px-2 py-1 rounded font-semibold ml-2">
                                  Alternative
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className={`border-l-2 p-2 rounded mb-2 mt-2 ${item.isPACE ? 'bg-blue-50 border-blue-400' : 'bg-amber-50 border-amber-400'}`}>
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                {item.alternative.link !== '#' && (
                                  <Link
                                    href={item.alternative.link}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                  >
                                    Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                  </Link>
                                )}
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                {item.alternative.link !== '#' && (
                                  <Link
                                    href={item.alternative.link}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                  >
                                    Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                  </Link>
                                )}
                              </div>
                            )}
                            {item.link !== '#' && (
                              <Link
                                href={item.link}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                              >
                                View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                              </Link>
                            )}
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.sectioning.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.sectioning.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Mounting */}
              {(recommendations.mounting.equipment.length > 0 || recommendations.mounting.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Mounting</h3>
                  </div>

                  {recommendations.mounting.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.mounting.equipment.map((item, idx) => (
                          <div key={idx} className={`border-l-4 p-4 rounded ${item.isPACE ? 'bg-gray-50 border-primary-600' : 'bg-amber-50 border-amber-500'}`}>
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE ? (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              ) : (
                                <span className="text-xs bg-amber-100 text-amber-700 px-2 py-1 rounded font-semibold ml-2">
                                  Alternative
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className={`border-l-2 p-2 rounded mb-2 mt-2 ${item.isPACE ? 'bg-blue-50 border-blue-400' : 'bg-amber-50 border-amber-400'}`}>
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                {item.alternative.link !== '#' && (
                                  <Link
                                    href={item.alternative.link}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                  >
                                    Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                  </Link>
                                )}
                              </div>
                            )}
                            {item.link !== '#' && (
                              <Link
                                href={item.link}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                              >
                                View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                              </Link>
                            )}
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.mounting.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.mounting.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Grinding */}
              {(recommendations.grinding.equipment.length > 0 || recommendations.grinding.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Grinding</h3>
                  </div>

                  {recommendations.grinding.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.grinding.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                <Link
                                  href={item.alternative.link}
                                  target="_blank"
                                  rel="noopener noreferrer"
                                  className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                >
                                  Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                </Link>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.grinding.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.grinding.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Polishing */}
              {(recommendations.polishing.equipment.length > 0 || recommendations.polishing.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Polishing</h3>
                  </div>

                  {recommendations.polishing.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.polishing.equipment.map((item, idx) => (
                          <div key={idx} className={`border-l-4 p-4 rounded ${item.isPACE ? 'bg-gray-50 border-primary-600' : 'bg-amber-50 border-amber-500'}`}>
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE ? (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              ) : (
                                <span className="text-xs bg-amber-100 text-amber-700 px-2 py-1 rounded font-semibold ml-2">
                                  Alternative
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                <Link
                                  href={item.alternative.link}
                                  target="_blank"
                                  rel="noopener noreferrer"
                                  className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                >
                                  Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                </Link>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.polishing.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.polishing.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Etching */}
              {recommendations.etching && recommendations.etching.consumables.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <FlaskConical className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Etching</h3>
                  </div>

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                      Consumables
                    </h4>
                    <div className="space-y-4">
                      {recommendations.etching.consumables.map((item, idx) => (
                        <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                          <div className="flex items-start justify-between mb-2">
                            <h5 className="font-semibold text-gray-900">{item.name}</h5>
                            {item.isPACE && (
                              <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                PACE
                              </span>
                            )}
                          </div>
                          <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                          {item.reasoning && (
                            <div className="bg-blue-50 border-l-2 border-blue-400 p-2 rounded mb-2 mt-2">
                              <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                            </div>
                          )}
                          <Link
                            href={item.link}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                          >
                            Shop Etchants <ChevronRight className="w-4 h-4 ml-1" />
                          </Link>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
              )}

              {/* Microscopy */}
              {recommendations.microscopy && recommendations.microscopy.equipment.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Microscopy</h3>
                  </div>

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <Package className="w-5 h-5 mr-2 text-primary-600" />
                      Equipment
                    </h4>
                    <div className="space-y-4">
                        {recommendations.microscopy.equipment.map((item, idx) => (
                          <div key={idx} className={`border-l-4 p-4 rounded ${item.isPACE ? 'bg-gray-50 border-primary-600' : 'bg-amber-50 border-amber-500'}`}>
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="font-semibold text-gray-900">{item.name}</h5>
                              {item.isPACE ? (
                                <span className="text-xs bg-primary-100 text-primary-700 px-2 py-1 rounded font-semibold ml-2">
                                  PACE
                                </span>
                              ) : (
                                <span className="text-xs bg-amber-100 text-amber-700 px-2 py-1 rounded font-semibold ml-2">
                                  Alternative
                                </span>
                              )}
                            </div>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            {item.reasoning && (
                              <div className={`border-l-2 p-2 rounded mb-2 mt-2 ${item.isPACE ? 'bg-blue-50 border-blue-400' : 'bg-amber-50 border-amber-400'}`}>
                                <p className="text-xs text-gray-700"><strong>Why this choice:</strong> {item.reasoning}</p>
                              </div>
                            )}
                            {item.alternative && (
                              <div className="bg-amber-50 border-l-2 border-amber-400 p-2 rounded mb-2 mt-2">
                                <p className="text-xs text-gray-700"><strong>Alternative consideration:</strong> {item.alternative.name} - {item.alternative.reasoning}</p>
                                {item.alternative.link !== '#' && (
                                  <Link
                                    href={item.alternative.link}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="text-xs text-amber-700 hover:text-amber-800 font-semibold inline-flex items-center mt-1"
                                  >
                                    Learn more <ChevronRight className="w-3 h-3 ml-1" />
                                  </Link>
                                )}
                              </div>
                            )}
                            {item.link !== '#' && (
                              <Link
                                href={item.link}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                              >
                                View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                              </Link>
                            )}
                          </div>
                        ))}
                    </div>
                  </div>
                </div>
              )}

              {/* CTA Section */}
              <div className="bg-primary-600 text-white rounded-lg p-8 text-center">
                <h3 className="text-2xl font-bold mb-4">Ready to Build Your Lab?</h3>
                <p className="text-primary-100 mb-6 max-w-2xl mx-auto">
                  Contact our experts for personalized consultation, quotes, and support in setting up your 
                  metallographic laboratory.
                </p>
                <div className="flex flex-col sm:flex-row gap-4 justify-center">
                  <Link
                    href="https://metallographic.com/contact"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white text-primary-600 px-6 py-3 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl"
                  >
                    Contact Sales
                  </Link>
                  <Link
                    href="https://shop.metallographic.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-primary-700 text-white px-6 py-3 rounded-full font-semibold hover:bg-primary-800 transition-all duration-200 inline-block text-sm border border-primary-500"
                  >
                    Shop Consumables
                  </Link>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  )
}

