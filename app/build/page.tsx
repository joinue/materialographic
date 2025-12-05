'use client'

import { useState, useEffect } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { useRouter } from 'next/navigation'
import { ChevronRight, ChevronDown, CheckCircle2, Package, Wrench, FlaskConical, ArrowLeft, X, Sparkles, Eye, Gauge, Loader2, AlertCircle, CheckCircle, ArrowUp, Info } from 'lucide-react'
import { 
  getRecommendedEquipment, 
  getRecommendedConsumables, 
  getEquipmentByCategory, 
  getConsumablesByCategory,
  getEquipmentByCategoryAndSubcategory,
  getConsumablesByCategoryAndSubcategory,
  getAllMaterials
} from '@/lib/supabase'
import type { Equipment, Consumable, Material } from '@/lib/supabase'

interface EquipmentItem {
  name: string
  description: string
  image?: string
  link: string
  category: string
  isPACE: boolean
  reasoning?: string
  generalType?: string // General equipment type (e.g., "Manual abrasive cut-off saw, 10 in blade")
  itemId?: string // Store item_id for deduplication
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
  generalType?: string // General consumable type (e.g., "Diamond polishing suspensions")
}

interface ProcedureStep {
  step: number
  name: string
  description: string
  grit?: string
  time?: string
  pressure?: string
  notes?: string
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
    steps?: ProcedureStep[]
  }
  polishing: {
    equipment: EquipmentItem[]
    consumables: ConsumableItem[]
    steps?: ProcedureStep[]
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
  const router = useRouter()
  const [step, setStep] = useState(1)
  const [formData, setFormData] = useState({
    materialType: '',
    materialHardness: '',
    sampleSize: '',
    sampleShape: '',
    throughput: '',
    automation: '',
    budget: '',
    surfaceFinish: '', // New: Required surface finish quality
    applications: [] as string[],
    processStages: ['sectioning', 'mounting', 'grinding', 'polishing'] as string[], // Default to core stages
  })
  const [recommendations, setRecommendations] = useState<Recommendations | null>(null)
  const [isGenerating, setIsGenerating] = useState(false)
  const [openSections, setOpenSections] = useState<Set<string>>(new Set(['sectioning'])) // Default first section open
  const [previousPath, setPreviousPath] = useState<string | null>(null)
  const [error, setError] = useState<string | null>(null)
  const [showScrollTop, setShowScrollTop] = useState(false)
  
  // Material search state
  const [materials, setMaterials] = useState<Material[]>([])
  const [materialSearchQuery, setMaterialSearchQuery] = useState('')
  const [filteredMaterials, setFilteredMaterials] = useState<Material[]>([])
  const [showMaterialDropdown, setShowMaterialDropdown] = useState(false)
  const [materialInputFocused, setMaterialInputFocused] = useState(false)
  const [materialSelectionMode, setMaterialSelectionMode] = useState<'general' | 'specific'>('general')
  const [selectedMaterial, setSelectedMaterial] = useState<Material | null>(null)

  // Expert review form state
  const [showExpertReview, setShowExpertReview] = useState(false)
  const [reviewFormData, setReviewFormData] = useState({
    name: '',
    email: '',
    phone: '',
    company: '',
    message: '',
  })

  // Legacy material types for fallback
  const legacyMaterialTypes = [
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

  // Handle scroll to top button visibility
  useEffect(() => {
    const handleScroll = () => {
      setShowScrollTop(window.scrollY > 400)
    }
    window.addEventListener('scroll', handleScroll)
    return () => window.removeEventListener('scroll', handleScroll)
  }, [])

  // Track previous page on mount
  useEffect(() => {
    // Store current referrer or default to home
    if (typeof window !== 'undefined') {
      const referrer = document.referrer
      const currentOrigin = window.location.origin
      
      // If referrer is from same origin, use it; otherwise default to home
      if (referrer && referrer.startsWith(currentOrigin)) {
        const referrerPath = new URL(referrer).pathname
        // Don't use referrer if it's the same page (refresh)
        if (referrerPath !== '/build') {
          setPreviousPath(referrerPath)
        } else {
          setPreviousPath('/')
        }
      } else {
        setPreviousPath('/')
      }
    }
  }, [])

  // Load materials on mount
  useEffect(() => {
    async function loadMaterials() {
      try {
        const allMaterials = await getAllMaterials()
        setMaterials(allMaterials)
        setFilteredMaterials(allMaterials.slice(0, 20)) // Show first 20 initially
      } catch (error) {
        console.error('Error loading materials:', error)
      }
    }
    loadMaterials()
  }, [])

  // Filter materials based on search query
  useEffect(() => {
    if (!materialSearchQuery.trim()) {
      setFilteredMaterials(materials.slice(0, 20))
      return
    }

    const query = materialSearchQuery.toLowerCase().trim()
    const filtered = materials.filter(material => {
      const nameMatch = material.name.toLowerCase().includes(query)
      const categoryMatch = material.category?.toLowerCase().includes(query)
      const altNameMatch = material.alternative_names?.some(alt => 
        alt.toLowerCase().includes(query)
      )
      return nameMatch || categoryMatch || altNameMatch
    }).slice(0, 20) // Limit to 20 results

    setFilteredMaterials(filtered)
  }, [materialSearchQuery, materials])

  const handleBack = () => {
    if (previousPath && previousPath !== '/build') {
      router.push(previousPath)
    } else {
      router.push('/')
    }
  }

  // Helper function to map material hardness to form hardness levels
  const mapMaterialHardnessToForm = (material: Material): string => {
    // First check hardness_category
    if (material.hardness_category) {
      const categoryMap: Record<string, string> = {
        'soft': 'Soft (< 30 HRC)',
        'medium': 'Medium (30-50 HRC)',
        'hard': 'Hard (50-65 HRC)',
        'very-hard': 'Very Hard (> 65 HRC)',
      }
      return categoryMap[material.hardness_category] || ''
    }
    
    // If no category, check HRC value
    if (material.hardness_hrc !== null && material.hardness_hrc !== undefined) {
      const hrc = material.hardness_hrc
      if (hrc < 30) return 'Soft (< 30 HRC)'
      if (hrc < 50) return 'Medium (30-50 HRC)'
      if (hrc < 65) return 'Hard (50-65 HRC)'
      return 'Very Hard (> 65 HRC)'
    }
    
    // Fallback to hardness string field if available
    if (material.hardness) {
      const hardnessLower = material.hardness.toLowerCase()
      if (hardnessLower.includes('soft')) return 'Soft (< 30 HRC)'
      if (hardnessLower.includes('medium')) return 'Medium (30-50 HRC)'
      if (hardnessLower.includes('hard') && !hardnessLower.includes('very')) return 'Hard (50-65 HRC)'
      if (hardnessLower.includes('very') || hardnessLower.includes('very-hard')) return 'Very Hard (> 65 HRC)'
    }
    
    return ''
  }

  // Handle material selection
  const handleMaterialSelect = (material: Material) => {
    handleInputChange('materialType', material.name)
    setMaterialSearchQuery(material.name)
    setSelectedMaterial(material)
    setShowMaterialDropdown(false)
    
    // Auto-populate hardness if available
    const mappedHardness = mapMaterialHardnessToForm(material)
    if (mappedHardness) {
      handleInputChange('materialHardness', mappedHardness)
    }
  }

  // Handle material selection mode change
  const handleMaterialModeChange = (mode: 'general' | 'specific') => {
    setMaterialSelectionMode(mode)
    // Clear selections when switching modes
    handleInputChange('materialType', '')
    handleInputChange('materialHardness', '')
    setMaterialSearchQuery('')
    setSelectedMaterial(null)
  }

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
    { value: 'Essential', label: 'Essential', description: 'Core equipment for basic sample preparation' },
    { value: 'Standard', label: 'Standard', description: 'Balanced setup for routine metallography work' },
    { value: 'Advanced', label: 'Advanced', description: 'Enhanced capabilities for demanding applications' },
    { value: 'Comprehensive', label: 'Comprehensive', description: 'Complete system with full automation and features' },
  ]

  const applicationOptions = [
    'Quality Control',
    'Research & Development',
    'Failure Analysis',
    'Material Characterization',
    'Production Testing',
  ]

  const processStageOptions = [
    { id: 'sectioning', label: 'Sectioning', description: 'Cutting and sample preparation equipment' },
    { id: 'mounting', label: 'Mounting', description: 'Sample mounting equipment and materials' },
    { id: 'grinding', label: 'Grinding', description: 'Grinding equipment and abrasives' },
    { id: 'polishing', label: 'Polishing', description: 'Polishing equipment and consumables' },
    { id: 'etching', label: 'Etching', description: 'Etchants and etching supplies' },
    { id: 'microscopy', label: 'Microscopy', description: 'Microscopes and imaging equipment' },
    { id: 'cleaning', label: 'Cleaning', description: 'Sample cleaning equipment' },
    { id: 'hardness', label: 'Hardness Testing', description: 'Hardness testing equipment' },
  ]

  // Helper function to convert Equipment to EquipmentItem
  const equipmentToItem = (eq: Equipment, reasoning?: string): EquipmentItem => {
    return {
      name: eq.name,
      description: eq.description || '',
      image: eq.image_url || undefined,
      link: eq.product_url || `https://metallographic.com/metallographic-equipment/${eq.category}/${eq.slug || ''}`,
      category: eq.subcategory || eq.category,
      isPACE: eq.is_pace_product || false,
      reasoning: reasoning || `Recommended based on your specifications: ${eq.description || ''}`,
      generalType: getGeneralEquipmentType(eq) || undefined,
      itemId: eq.item_id || undefined, // Store item_id for deduplication
    }
  }

  // Helper to get general consumable type from subcategory/type
  const getGeneralConsumableType = (consumable: Consumable): string | null => {
    if (!consumable.subcategory && !consumable.type) return null
    
    const subcat = consumable.subcategory?.toLowerCase() || ''
    const type = consumable.type?.toLowerCase() || ''
    
    // Sectioning
    if (subcat.includes('abrasive blade') || type.includes('abrasive-blade')) {
      return 'Abrasive cut-off wheels'
    }
    if (subcat.includes('diamond blade') || subcat.includes('wafering') || type.includes('diamond-blade') || type.includes('wafering-blade')) {
      return 'Diamond wafering blades'
    }
    if (subcat.includes('cutting fluid') || type.includes('cutting-fluid')) {
      return 'Cutting fluids / coolants'
    }
    
    // Mounting
    if (subcat.includes('resin') || type.includes('mounting-resin')) {
      return 'Mounting resins'
    }
    if (subcat.includes('mold') || type.includes('mounting-mold')) {
      return 'Mounting molds'
    }
    
    // Grinding
    if (subcat.includes('grinding paper') || type.includes('grinding-paper')) {
      return 'Grinding papers'
    }
    if (subcat.includes('diamond grinding') || type.includes('diamond-grinding')) {
      return 'Diamond grinding discs'
    }
    
    // Polishing
    if (subcat.includes('diamond') && (subcat.includes('suspension') || subcat.includes('paste') || type.includes('diamond'))) {
      return 'Diamond polishing suspensions'
    }
    if (subcat.includes('colloidal') || type.includes('colloidal')) {
      return 'Colloidal silica suspension'
    }
    if (subcat.includes('polishing pad') || subcat.includes('polishing cloth') || type.includes('polishing-pad')) {
      return 'Polishing pads / cloths'
    }
    
    // Etching
    if (subcat.includes('etchant') || type.includes('etchant')) {
      return 'Etchants'
    }
    
    return null
  }

  // Helper to get collection URL for consumable type
  const getConsumableCollectionUrl = (consumable: Consumable): string => {
    if (!consumable.subcategory && !consumable.type) {
      // Fallback to category-based collections
      if (consumable.category === 'sectioning') return 'https://shop.metallographic.com/collections/cutting'
      if (consumable.category === 'mounting') return 'https://shop.metallographic.com/collections/resins-powders'
      if (consumable.category === 'grinding') return 'https://shop.metallographic.com/collections/grinding'
      if (consumable.category === 'polishing') return 'https://shop.metallographic.com/collections/polishing'
      if (consumable.category === 'etching') return 'https://shop.metallographic.com/collections/etchants'
      return '#'
    }
    
    const subcat = consumable.subcategory?.toLowerCase() || ''
    const type = consumable.type?.toLowerCase() || ''
    const name = consumable.name?.toLowerCase() || ''
    
    // Sectioning
    if (subcat.includes('abrasive blade') || type.includes('abrasive-blade') || name.includes('abrasive blade')) {
      return 'https://shop.metallographic.com/collections/abrasive-blades'
    }
    if (subcat.includes('diamond blade') || subcat.includes('wafering') || type.includes('diamond-blade') || type.includes('wafering-blade') || name.includes('wafering') || name.includes('precision')) {
      return 'https://shop.metallographic.com/collections/precision-cutting-blades'
    }
    if (subcat.includes('cutting fluid') || type.includes('cutting-fluid') || name.includes('cutting fluid')) {
      return 'https://shop.metallographic.com/collections/abrasive-cutting-fluid'
    }
    
    // Mounting - Compression
    if (subcat.includes('phenolic') || name.includes('phenolic')) {
      return 'https://shop.metallographic.com/collections/phenolic-powder'
    }
    if (subcat.includes('transacrylic') || name.includes('transacrylic')) {
      return 'https://shop.metallographic.com/collections/transacrylic'
    }
    if ((subcat.includes('epoxy') || name.includes('epoxy')) && (subcat.includes('glass') || name.includes('glass'))) {
      return 'https://shop.metallographic.com/collections/epoxy-glass-reinforced'
    }
    if (subcat.includes('diallyl') || name.includes('diallyl') || name.includes('dap')) {
      return 'https://shop.metallographic.com/collections/diallyl-phthalate-compression-mounting-resin'
    }
    if (subcat.includes('conductive') || name.includes('conductive')) {
      return 'https://shop.metallographic.com/collections/conductive-compression-mounting-resin'
    }
    
    // Mounting - Castable
    if ((subcat.includes('acrylic') || name.includes('acrylic')) && (subcat.includes('castable') || name.includes('castable'))) {
      return 'https://shop.metallographic.com/collections/castable-mounting-acrylic'
    }
    if ((subcat.includes('epoxy') || name.includes('epoxy')) && (subcat.includes('castable') || name.includes('castable'))) {
      return 'https://shop.metallographic.com/collections/castable-mounting-epoxy'
    }
    if ((subcat.includes('polyester') || name.includes('polyester')) && (subcat.includes('castable') || name.includes('castable'))) {
      return 'https://shop.metallographic.com/collections/castable-mounting-polyester'
    }
    if (subcat.includes('resin') || type.includes('mounting-resin')) {
      return 'https://shop.metallographic.com/collections/resins-powders'
    }
    
    // Grinding
    if (subcat.includes('silicon carbide') || subcat.includes('sic') || name.includes('sic') || name.includes('silicon carbide')) {
      return 'https://shop.metallographic.com/collections/sic-grinding'
    }
    if (subcat.includes('alumina') || name.includes('alumina') || name.includes('al2o3')) {
      return 'https://shop.metallographic.com/collections/alumina'
    }
    if (subcat.includes('zirconia') || name.includes('zirconia')) {
      return 'https://shop.metallographic.com/collections/zirconia-grinding'
    }
    if (subcat.includes('diamond grinding') || type.includes('diamond-grinding') || name.includes('diamond grinding')) {
      return 'https://shop.metallographic.com/collections/diamond-grinding'
    }
    if (subcat.includes('lapping film') || name.includes('lapping film')) {
      return 'https://shop.metallographic.com/collections/lapping-films'
    }
    if (subcat.includes('grinding paper') || type.includes('grinding-paper')) {
      return 'https://shop.metallographic.com/collections/grinding'
    }
    
    // Polishing
    if (subcat.includes('polishing pad') || subcat.includes('polishing cloth') || type.includes('polishing-pad') || name.includes('polishing pad')) {
      return 'https://shop.metallographic.com/collections/polishing-pads'
    }
    if ((subcat.includes('diamond') || name.includes('diamond')) && (subcat.includes('polycrystalline') || name.includes('polycrystalline'))) {
      return 'https://shop.metallographic.com/collections/polycrystalline'
    }
    if ((subcat.includes('diamond') || name.includes('diamond')) && (subcat.includes('monocrystalline') || name.includes('monocrystalline'))) {
      return 'https://shop.metallographic.com/collections/monocrystalline'
    }
    if (subcat.includes('colloidal') || name.includes('colloidal') || name.includes('silica')) {
      return 'https://shop.metallographic.com/collections/final-polishing'
    }
    if (subcat.includes('diamond') && (subcat.includes('suspension') || subcat.includes('paste'))) {
      return 'https://shop.metallographic.com/collections/polishing'
    }
    
    // Etching
    if (subcat.includes('etchant') || type.includes('etchant') || name.includes('etchant')) {
      return 'https://shop.metallographic.com/collections/etchants'
    }
    if (subcat.includes('cleaning') || name.includes('cleaning')) {
      return 'https://shop.metallographic.com/collections/etching-and-cleaning'
    }
    
    // Hardness
    if (consumable.category === 'hardness') {
      return 'https://shop.metallographic.com/collections/hardness-testing'
    }
    
    // Fallback to category-based collections
    if (consumable.category === 'sectioning') return 'https://shop.metallographic.com/collections/cutting'
    if (consumable.category === 'mounting') return 'https://shop.metallographic.com/collections/resins-powders'
    if (consumable.category === 'grinding') return 'https://shop.metallographic.com/collections/grinding'
    if (consumable.category === 'polishing') return 'https://shop.metallographic.com/collections/polishing'
    if (consumable.category === 'etching') return 'https://shop.metallographic.com/collections/etchants'
    
    return '#'
  }

  // Helper function to convert Consumable to ConsumableItem
  const consumableToItem = (cons: Consumable, reasoning?: string): ConsumableItem => {
    return {
      name: cons.name,
      description: cons.description || '',
      link: getConsumableCollectionUrl(cons), // Use collection URLs instead of product-specific
      isPACE: cons.is_pace_product || false,
      reasoning: reasoning || `Recommended based on your material and equipment specifications.`,
      generalType: getGeneralConsumableType(cons) || undefined,
    }
  }

  // Helper to map material type to database format
  const mapMaterialType = (materialType: string): string => {
    const materialMap: Record<string, string> = {
      'Steel (Carbon/Low Alloy)': 'steel',
      'Stainless Steel': 'stainless-steel',
      'Aluminum': 'aluminum',
      'Titanium': 'titanium',
      'Copper/Brass': 'copper',
      'Nickel Alloys': 'nickel-alloys',
      'Hard Metals (Carbides)': 'hard-metals',
      'Ceramics': 'ceramics',
    }
    return materialMap[materialType] || materialType.toLowerCase()
  }

  // Helper to get general equipment type for a PACE product
  const getGeneralEquipmentType = (equipment: Equipment): string | null => {
    if (!equipment.item_id) return null
    
    const itemId = equipment.item_id.toUpperCase()
    const category = equipment.category
    
    // Sectioning
    if (category === 'sectioning') {
      if (itemId.includes('MEGA-M250S')) return 'Manual abrasive cut-off saw, 10 in blade'
      if (itemId.includes('MEGA-T250S')) return 'Manual abrasive cut-off saw, 10 in blade'
      if (itemId.includes('MEGA-T300S')) return 'Manual abrasive cut-off saw, 12 in blade'
      if (itemId.includes('MEGA-T350S')) return 'Manual abrasive cut-off saw, 14 in blade'
      if (itemId.includes('MEGA-T250A')) return 'Automatic abrasive cut-off saw, 10 in blade'
      if (itemId.includes('MEGA-T300A')) return 'Automatic abrasive cut-off saw, 12 in blade'
      if (itemId.includes('MEGA-T350A')) return 'Automatic abrasive cut-off saw, 14 in blade'
      if (itemId.includes('PICO-155')) return 'Precision low-speed diamond saw, 3-5 in blade'
      if (itemId.includes('PICO-200S')) return 'Precision high-speed diamond saw, 8 in blade'
      if (itemId.includes('PICO-200A')) return 'Linear-feed precision sectioning saw'
    }
    
    // Mounting
    if (category === 'mounting') {
      if (itemId.includes('TP-7100S')) return 'Single-station hot compression mounting press (pneumatic)'
      if (itemId.includes('TP-7500S')) return 'Single-station hot compression mounting press (hydraulic)'
      if (itemId.includes('TeraVAC')) return 'Vacuum impregnation unit'
      if (itemId.includes('TeraUV')) return 'UV-curing mounting system'
    }
    
    // Grinding/Polishing
    if (category === 'grinding' || category === 'polishing') {
      if (itemId.includes('NANO-1000S')) return 'Manual grinder-polisher, 8-10 in platen'
      if (itemId.includes('NANO-2000S')) return 'Twin-wheel grinder-polisher, 8-10 in platens'
      if (itemId.includes('NANO-1200T')) return 'Manual grinder-polisher, 12 in platen'
      if (itemId.includes('FEMTO-1100S') || itemId.includes('FEMTO-2200S')) return 'Semi-automatic grinder-polisher (individual force)'
      if (itemId.includes('FEMTO-1500S') || itemId.includes('FEMTO-2500S')) return 'Semi-automatic grinder-polisher (central force)'
      if (itemId.includes('GIGA-S')) return 'Vibratory polisher'
      if (itemId.includes('ZETA-2000S')) return 'Integrated polishing suspension dosing system'
      if (itemId.includes('RC-1000A')) return 'Recirculating coolant and filtration system'
      if (itemId.includes('ATTO-1000S')) return 'Controlled material-removal polishing system'
    }
    
    // Microscopy
    if (category === 'microscopy') {
      if (itemId.includes('IM-3000B')) return 'Upright metallurgical microscope (brightfield)'
      if (itemId.includes('IM-5000')) return 'Inverted metallurgical microscope (brightfield/darkfield)'
    }
    
    // Hardness
    if (category === 'hardness') {
      if (itemId.includes('ALPHA-MHT-1000VK')) return 'Combined Vickers/Knoop tester'
      if (itemId.includes('ALPHA-MHT')) return 'Vickers/Knoop microhardness tester'
      if (itemId.includes('OMEGA-RT') || itemId.includes('OMEGA-DIGI-RT') || itemId.includes('OMEGA-AUTO-RT')) return 'Rockwell hardness tester'
      if (itemId.includes('OMEGA-HB') || itemId.includes('OMEGA-AUTO-HB')) return 'Brinell hardness tester'
      if (itemId.includes('OMEGA-DIGI-RST') || itemId.includes('OMEGA-AUTO-RST')) return 'Universal hardness tester (Rockwell, Vickers, Brinell)'
    }
    
    return null
  }

  // Helper function to generate general grinding steps based on material characteristics
  const generateGrindingSteps = (
    materialType: string,
    isHard: boolean,
    isVeryHard: boolean,
    isSoft: boolean,
    isHardMaterial: boolean
  ): ProcedureStep[] => {
    const steps: ProcedureStep[] = []
    
    if (isHardMaterial || isVeryHard) {
      // Hard materials: SiC grinding sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Grinding',
          description: 'Initial grinding to remove sectioning damage and achieve flatness',
          grit: '120-180 grit SiC',
          time: 'Until flat and uniform',
          pressure: 'Moderate',
          notes: 'Use water as lubricant. Remove all sectioning marks before proceeding.'
        },
        {
          step: 2,
          name: 'Medium Grinding',
          description: 'Progressive grinding to remove coarse scratches',
          grit: '240-320 grit SiC',
          time: '2-3 minutes per sample',
          pressure: 'Moderate',
          notes: 'Rotate sample 90° between steps. Ensure all previous scratches are removed.'
        },
        {
          step: 3,
          name: 'Fine Grinding',
          description: 'Final grinding step before polishing',
          grit: '400-600 grit SiC',
          time: '2-3 minutes per sample',
          pressure: 'Light to moderate',
          notes: 'Critical step - ensure uniform scratch pattern. All grinding damage must be removed.'
        }
      )
    } else if (isHard) {
      // Hard but not very hard: Standard SiC sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Grinding',
          description: 'Remove sectioning damage',
          grit: '180-240 grit SiC',
          time: 'Until flat',
          pressure: 'Moderate',
          notes: 'Use water lubrication. Remove all sectioning marks.'
        },
        {
          step: 2,
          name: 'Fine Grinding',
          description: 'Prepare surface for polishing',
          grit: '320-400 grit SiC',
          time: '2-3 minutes',
          pressure: 'Light to moderate',
          notes: 'Rotate 90° between steps. Uniform scratch pattern required.'
        }
      )
    } else if (isSoft) {
      // Soft materials: Al2O3 or finer SiC
      steps.push(
        {
          step: 1,
          name: 'Coarse Grinding',
          description: 'Gentle grinding to avoid embedding',
          grit: '240-320 grit Al2O3 or SiC',
          time: 'Until flat',
          pressure: 'Light',
          notes: 'Use light pressure to prevent abrasive embedding. Water lubrication.'
        },
        {
          step: 2,
          name: 'Fine Grinding',
          description: 'Final grinding with fine abrasive',
          grit: '400-600 grit Al2O3 or SiC',
          time: '2-3 minutes',
          pressure: 'Light',
          notes: 'Minimize pressure to reduce relief. Rotate 90° between steps.'
        }
      )
    } else {
      // Standard materials: General sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Grinding',
          description: 'Remove sectioning damage',
          grit: '180-240 grit SiC',
          time: 'Until flat',
          pressure: 'Moderate',
          notes: 'Standard grinding sequence. Water lubrication.'
        },
        {
          step: 2,
          name: 'Fine Grinding',
          description: 'Prepare for polishing',
          grit: '320-400 grit SiC',
          time: '2-3 minutes',
          pressure: 'Light to moderate',
          notes: 'Ensure uniform scratch pattern before polishing.'
        }
      )
    }
    
    return steps
  }

  // Helper function to generate general polishing steps
  const generatePolishingSteps = (
    materialType: string,
    isHard: boolean,
    isVeryHard: boolean,
    isSoft: boolean,
    needsEBSD: boolean,
    needsExtremeFlatness: boolean
  ): ProcedureStep[] => {
    const steps: ProcedureStep[] = []
    
    if (needsEBSD || needsExtremeFlatness) {
      // EBSD/Extreme flatness: Special sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Diamond Polish',
          description: 'Remove grinding damage with coarse diamond',
          grit: '9 μm diamond',
          time: '5-10 minutes',
          pressure: 'Light',
          notes: 'Non-woven pad. Remove all grinding scratches. Critical for flatness.'
        },
        {
          step: 2,
          name: 'Medium Diamond Polish',
          description: 'Progressive diamond polishing',
          grit: '6 μm diamond',
          time: '5-10 minutes',
          pressure: 'Light',
          notes: 'Continue until all 9 μm scratches removed. Maintain flatness.'
        },
        {
          step: 3,
          name: 'Fine Diamond Polish',
          description: 'Fine diamond for minimal damage',
          grit: '3 μm diamond',
          time: '5-10 minutes',
          pressure: 'Very light',
          notes: 'Low-nap pad. Minimize deformation layer.'
        },
        {
          step: 4,
          name: 'Vibratory Polish',
          description: 'Final vibratory polishing for EBSD',
          grit: '0.05 μm colloidal silica',
          time: '30-60 minutes',
          pressure: 'Vibratory (gentle)',
          notes: 'Vibratory polisher required. Produces deformation-free surface essential for EBSD.'
        }
      )
    } else if (isHard || isVeryHard) {
      // Hard materials: Standard diamond sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Diamond Polish',
          description: 'Remove grinding damage',
          grit: '9 μm diamond',
          time: '5-8 minutes',
          pressure: 'Moderate',
          notes: 'Non-woven pad. Remove all grinding scratches.'
        },
        {
          step: 2,
          name: 'Medium Diamond Polish',
          description: 'Progressive scratch removal',
          grit: '6 μm diamond',
          time: '5-8 minutes',
          pressure: 'Moderate',
          notes: 'Continue until 9 μm scratches removed.'
        },
        {
          step: 3,
          name: 'Fine Diamond Polish',
          description: 'Fine scratch removal',
          grit: '3 μm diamond',
          time: '5-8 minutes',
          pressure: 'Light',
          notes: 'Prepare surface for final polish.'
        },
        {
          step: 4,
          name: 'Final Polish',
          description: 'Mirror finish',
          grit: '1 μm diamond or 0.05 μm colloidal silica',
          time: '3-5 minutes',
          pressure: 'Light',
          notes: 'Low-nap pad for colloidal silica. Achieve mirror finish.'
        }
      )
    } else if (isSoft) {
      // Soft materials: Finer grits, lower pressure
      steps.push(
        {
          step: 1,
          name: 'Coarse Diamond Polish',
          description: 'Gentle removal of grinding damage',
          grit: '6 μm diamond',
          time: '3-5 minutes',
          pressure: 'Light',
          notes: 'Low-nap pad. Minimize pull-out and relief.'
        },
        {
          step: 2,
          name: 'Medium Diamond Polish',
          description: 'Progressive polishing',
          grit: '3 μm diamond',
          time: '3-5 minutes',
          pressure: 'Light',
          notes: 'Continue with light pressure to reduce relief.'
        },
        {
          step: 3,
          name: 'Fine Diamond Polish',
          description: 'Fine scratch removal',
          grit: '1 μm diamond',
          time: '3-5 minutes',
          pressure: 'Very light',
          notes: 'Minimize relief in soft materials.'
        },
        {
          step: 4,
          name: 'Final Polish',
          description: 'Mirror finish',
          grit: '0.05 μm colloidal silica',
          time: '2-3 minutes',
          pressure: 'Very light',
          notes: 'Low-nap pad. Gentle final polish to preserve microstructure.'
        }
      )
    } else {
      // Standard materials: General sequence
      steps.push(
        {
          step: 1,
          name: 'Coarse Diamond Polish',
          description: 'Remove grinding damage',
          grit: '6-9 μm diamond',
          time: '5-8 minutes',
          pressure: 'Moderate',
          notes: 'Non-woven pad. Remove all grinding scratches.'
        },
        {
          step: 2,
          name: 'Medium Diamond Polish',
          description: 'Progressive scratch removal',
          grit: '3-6 μm diamond',
          time: '5-8 minutes',
          pressure: 'Moderate to light',
          notes: 'Continue until coarse scratches removed.'
        },
        {
          step: 3,
          name: 'Final Polish',
          description: 'Mirror finish',
          grit: '1 μm diamond or 0.05 μm colloidal silica',
          time: '3-5 minutes',
          pressure: 'Light',
          notes: 'Achieve mirror finish for microstructure examination.'
        }
      )
    }
    
    return steps
  }

  // Helper function to get budget map
  const getBudgetMap = (): Record<string, string[]> => {
    return {
      'Essential': ['budget-conscious'],
      'Standard': ['budget-conscious', 'standard'],
      'Advanced': ['budget-conscious', 'standard', 'premium'],
      'Comprehensive': ['budget-conscious', 'standard', 'premium', 'enterprise'],
    }
  }

  const generateRecommendations = async () => {
    setIsGenerating(true)
    try {
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
    const surfaceFinish = formData.surfaceFinish || ''
    const applications = formData.applications
    const selectedStages = formData.processStages

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
    const isBudgetConstrained = budget.includes('Essential')
    const isPremium = budget.includes('Advanced') || budget.includes('Comprehensive')
    const needsPrecision = applications.includes('Failure Analysis') || applications.includes('Research & Development')
    const isProduction = applications.includes('Production Testing') || applications.includes('Quality Control')
    const needsEBSD = applications.includes('EBSD') || (surfaceFinish ? (surfaceFinish.includes('EBSD') || surfaceFinish.includes('Extremely Flat')) : false)
    const needsExtremeFlatness = (surfaceFinish ? (surfaceFinish.includes('Extremely Flat') || surfaceFinish.includes('EBSD')) : false) || applications.includes('EBSD')

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
    if (selectedStages.includes('sectioning')) {
      // EXPERT GUIDANCE: For hard materials, ceramics, or very hard samples, precision wafering is essential
      // Diamond blade precision cutters minimize deformation and thermal damage critical for these materials
      if (isHardMaterial || isVeryHard || (isBrittle && isDelicate)) {
        // Query precision wafering equipment from database
        const precisionCutters = await getEquipmentByCategoryAndSubcategory('sectioning', 'Precision Wafering')
        
        if (precisionCutters.length > 0) {
          // Select appropriate precision cutter based on requirements
          let selectedCutter: Equipment | null = null
          
          if (isDelicate || isSmall) {
            // Gravity feed for delicate samples
            selectedCutter = precisionCutters.find(eq => eq.item_id?.includes('155')) || precisionCutters[0]
          } else if (isAutomated || isHighThroughput) {
            // Automated table feed for high throughput
            selectedCutter = precisionCutters.find(eq => eq.item_id?.includes('200A')) || precisionCutters[0]
          } else {
            // Manual table feed for flexibility
            selectedCutter = precisionCutters.find(eq => eq.item_id?.includes('200S')) || precisionCutters[0]
          }
          
          if (selectedCutter) {
            recs.sectioning.equipment.push(equipmentToItem(selectedCutter, 
              `Precision wafering with diamond blades is essential for ${isHardMaterial ? 'hard materials and ceramics' : 'very hard materials'}. ` +
              `Diamond blade cutting minimizes deformation and thermal damage that would compromise microstructure analysis. ` +
              `${isDelicate ? 'Gravity feed provides gentle, consistent cutting pressure ideal for delicate samples.' : 
                isAutomated ? 'Automated table feed ensures consistent cutting parameters for high-volume precision work.' :
                'Manual control allows operator adjustment for varied sample types while maintaining precision.'}`
            ))
          }
        }
        
        // Recommend diamond wafering blades
        const diamondBlades = await getConsumablesByCategoryAndSubcategory('sectioning', 'Diamond Blades')
        if (diamondBlades.length > 0) {
          // Filter for high concentration for very hard materials
          const suitableBlades = isVeryHard || isHardMaterial
            ? diamondBlades.filter(b => b.item_id?.includes('HC') || b.description?.toLowerCase().includes('high concentration'))
            : diamondBlades
          
          if (suitableBlades.length > 0) {
            recs.sectioning.consumables.push(consumableToItem(suitableBlades[0],
              `${isVeryHard || isHardMaterial ? 'High concentration' : 'Diamond'} wafering blades essential for precision cutting of ${isHardMaterial ? 'hard materials and ceramics' : 'very hard materials'}. ` +
              `Diamond provides the cutting action needed without excessive heat generation. ` +
              `${isVeryHard || isHardMaterial ? 'High concentration provides aggressive cutting for ceramics and hard metals.' : 'Select blade diameter based on sample size (3-8 inch available).'}`
            ))
          }
        }
      }
      
      // For most metallic materials: Abrasive sectioning
      if (!isHardMaterial && !isBrittle) {
        // Query sectioning equipment from database
        let sectioningEquipment = await getRecommendedEquipment({
          category: 'sectioning',
          materialType: mapMaterialType(materialType),
          hardness: hardness,
          sampleSize: sampleSize,
          sampleShape: sampleShape,
          throughput: throughput,
          automation: automation,
          budget: budget,
          applications: applications,
        })
        
        // If no results, fallback to all sectioning equipment (filtering might be too strict)
        if (sectioningEquipment.length === 0) {
          sectioningEquipment = await getEquipmentByCategory('sectioning')
        }

        // Deduplicate by subcategory - only recommend ONE machine per type
        const equipmentByType = new Map<string, Equipment>()
        
        for (const eq of sectioningEquipment) {
          const type = eq.subcategory || eq.category
          // Only keep the first (best match) equipment of each type
          if (!equipmentByType.has(type)) {
            equipmentByType.set(type, eq)
          }
        }
        
        // Select the best equipment based on requirements
        let selectedEquipment: Equipment | null = null
        
        // Priority: automated if needed, then by sample size, then by budget
        const candidates = Array.from(equipmentByType.values())
        
        // If no candidates from filtered results, get all sectioning equipment as fallback
        if (candidates.length === 0) {
          const allSectioning = await getEquipmentByCategory('sectioning')
          for (const eq of allSectioning) {
            const type = eq.subcategory || eq.category
            if (!equipmentByType.has(type)) {
              equipmentByType.set(type, eq)
            }
          }
          // Update candidates with fallback
          const fallbackCandidates = Array.from(equipmentByType.values())
          if (isAutomated) {
            selectedEquipment = fallbackCandidates.find(eq => eq.automation_level === 'automated') || fallbackCandidates[0] || null
          } else {
            selectedEquipment = fallbackCandidates.find(eq => eq.automation_level === 'manual') || fallbackCandidates[0] || null
          }
        } else {
          if (isAutomated) {
            selectedEquipment = candidates.find(eq => eq.automation_level === 'automated') || candidates[0] || null
          } else {
            selectedEquipment = candidates.find(eq => eq.automation_level === 'manual') || candidates[0] || null
          }
        }
        
        // Filter by sample size if needed
        if (selectedEquipment && isSmall && selectedEquipment.blade_size_mm && selectedEquipment.blade_size_mm > 300) {
          // For small samples, prefer smaller blade sizes
          const smallerOption = candidates.find(eq => 
            eq.blade_size_mm && eq.blade_size_mm <= 300 && 
            eq.automation_level === (isAutomated ? 'automated' : 'manual')
          )
          if (smallerOption) selectedEquipment = smallerOption
        }
        
        if (selectedEquipment && isVeryLarge && selectedEquipment.blade_size_mm && selectedEquipment.blade_size_mm < 400) {
          // For very large samples, prefer larger blade sizes
          const largerOption = candidates.find(eq => 
            eq.blade_size_mm && eq.blade_size_mm >= 400 && 
            eq.automation_level === (isAutomated ? 'automated' : 'manual')
          )
          if (largerOption) selectedEquipment = largerOption
        }
        
        // Filter by budget (but don't be too strict - allow equipment without budget level)
        if (selectedEquipment) {
          const budgetMap: Record<string, string[]> = {
            'Essential': ['budget-conscious'],
            'Standard': ['budget-conscious', 'standard'],
            'Advanced': ['budget-conscious', 'standard', 'premium'],
            'Comprehensive': ['budget-conscious', 'standard', 'premium', 'enterprise'],
          }
          const allowedBudgets = budgetMap[budget] || []
          
          // Only filter if equipment has a budget level AND it's outside the allowed range
          if (selectedEquipment.min_budget_level && !allowedBudgets.includes(selectedEquipment.min_budget_level)) {
            // Find alternative within budget (prefer equipment without budget level if none match)
            const budgetOption = candidates.find(eq => 
              !eq.min_budget_level || allowedBudgets.includes(eq.min_budget_level)
            )
            if (budgetOption) {
              selectedEquipment = budgetOption
            } else {
              // If no budget match found, allow equipment without budget level specified
              const noBudgetOption = candidates.find(eq => !eq.min_budget_level)
              if (noBudgetOption) selectedEquipment = noBudgetOption
              // Otherwise keep the original selection (better to show something than nothing)
            }
          }
        }
        
        if (selectedEquipment) {
          let reasoning = ''
          
          // Material-specific reasoning
          if (isStainless || isTitanium || isNickel) {
            reasoning = `Abrasive sectioning suitable for ${materialType}. `
          } else if (isSoftMetal) {
            reasoning = `Abrasive sectioning appropriate for soft non-ferrous metals. Proper blade selection prevents excessive heat generation. `
          } else {
            reasoning = `Abrasive sectioning provides efficient cutting for ${materialType}. `
          }
          
          if (selectedEquipment.description) reasoning += selectedEquipment.description
          
          // Add specific reasoning based on attributes
          if (selectedEquipment.automation_level === 'automated' && isHighThroughput) {
            reasoning += ' Automated operation essential for high throughput requirements, ensuring consistent cutting parameters and reducing operator fatigue.'
          } else if (selectedEquipment.automation_level === 'manual' && isHighThroughput) {
            reasoning += ' Manual control allows operator adjustment for varied materials, though may limit throughput compared to automated systems.'
          }
          
          if (selectedEquipment.blade_size_mm && isSmall && selectedEquipment.blade_size_mm > 250) {
            reasoning += ` Note: ${selectedEquipment.blade_size_mm}mm blade size recommended for automation; 250mm automated cutters are not available.`
          }
          
          if (selectedEquipment.blade_size_mm && isVeryLarge && selectedEquipment.blade_size_mm < 400) {
            reasoning += ` For very large samples (>100mm), consider larger blade sizes (16-inch/400mm) for adequate cutting capacity.`
          }

          recs.sectioning.equipment.push(equipmentToItem(selectedEquipment, reasoning))
        }

        // EXPERT GUIDANCE: If no suitable equipment found, provide expert recommendation
        if (!selectedEquipment) {
          // Fallback to category-based query
          const allSectioning = await getEquipmentByCategory('sectioning')
          // Filter manually based on automation, size, and budget
          const filtered = allSectioning.filter((eq: Equipment) => {
            if (isAutomated && eq.automation_level !== 'automated') return false
            if (isSmall && eq.blade_size_mm && eq.blade_size_mm > 300 && isAutomated) return false
            
            // Filter by budget
            const budgetMap: Record<string, string[]> = {
              'Essential': ['budget-conscious'],
              'Standard': ['budget-conscious', 'standard'],
              'Advanced': ['budget-conscious', 'standard', 'premium'],
              'Comprehensive': ['budget-conscious', 'standard', 'premium', 'enterprise'],
            }
            const allowedBudgets = budgetMap[budget] || []
            if (eq.min_budget_level && !allowedBudgets.includes(eq.min_budget_level)) return false
            
            return true
          })
          
          if (filtered.length > 0) {
            // Deduplicate by subcategory and select best match
            const byType = new Map<string, Equipment>()
            for (const eq of filtered) {
              const type = eq.subcategory || 'general'
              if (!byType.has(type)) {
                byType.set(type, eq)
              }
            }
            
            const bestMatch = Array.from(byType.values())[0]
            if (bestMatch) {
              recs.sectioning.equipment.push(equipmentToItem(bestMatch, 
                `Recommended abrasive cutter for ${materialType}. ` +
                `${bestMatch.automation_level === 'automated' ? 'Automated operation ensures consistent results.' : 'Manual control provides flexibility for varied materials.'}`
              ))
            }
          } else {
            // EXPERT FALLBACK: No suitable PACE equipment, provide expert guidance
            if (isVeryLarge) {
              recs.sectioning.equipment.push({
                name: 'Heavy-Duty Abrasive Cutters for Large Samples',
                description: `For samples exceeding 4-5 inches or very large components, specialized high-torque cutters with larger blade capacities (16-inch and above) are required. These systems handle heavy-duty cutting applications beyond standard metallographic equipment capabilities.`,
                link: '#',
                category: 'Large Sample Sectioning',
                isPACE: false,
                reasoning: `Very large samples (${sampleSize}) require specialized equipment with higher power and larger capacity than standard metallographic cutters. Heavy-duty cutters with 16-inch or larger blades provide the cutting capacity needed for large components, engine blocks, forgings, and large castings.`,
              })
            } else if (needsAdvancedAutomation && isVeryHighThroughput) {
              recs.sectioning.equipment.push({
                name: 'CNC-Controlled Sectioning Systems',
                description: 'For high-volume precision cutting with complex geometries or batch processing, CNC-controlled sectioning systems provide programmable multi-axis cutting capabilities. Essential when processing hundreds of samples daily with complex cutting requirements.',
                link: '#',
                category: 'Advanced Sectioning Automation',
                isPACE: false,
                reasoning: 'For very high throughput (>200 samples/day) with complex cutting patterns or batch processing, CNC-controlled systems with motorized feed, programmable cut cycles, and multi-axis positioning are essential. These systems enable unattended operation with complex cutting patterns beyond standard automated cutters.',
              })
            }
          }
        }

        // Query sectioning consumables (blades, cutting fluids)
        const sectioningConsumables = await getRecommendedConsumables({
          category: 'sectioning',
          materialType: mapMaterialType(materialType),
          hardness: hardness,
        })

        // Get recommended equipment item_ids for compatibility matching
        const recommendedEquipmentIds = recs.sectioning.equipment.length > 0 
          ? [selectedEquipment?.item_id].filter(Boolean) as string[]
          : []

        // Filter consumables by compatibility with recommended equipment
        const compatibleConsumables = sectioningConsumables.filter((cons: Consumable) => {
          // If consumable has compatibility requirements, check them
          if (cons.compatible_with_equipment && cons.compatible_with_equipment.length > 0) {
            return recommendedEquipmentIds.some(eqId => cons.compatible_with_equipment!.includes(eqId))
          }
          // Otherwise include all sectioning consumables
          return true
        })

        // Convert to ConsumableItem format, prioritizing compatible items with expert reasoning
        const prioritizedConsumables = [
          ...compatibleConsumables,
          ...sectioningConsumables.filter(c => !compatibleConsumables.includes(c))
        ]

        // Material-specific blade recommendations with expert reasoning
        // Only recommend ONE blade type - prioritize by material and blade type
        const diamondBlades = prioritizedConsumables.filter((cons: Consumable) => 
          cons.subcategory?.includes('Blade') && 
          (cons.material_composition?.toLowerCase().includes('diamond') || 
           cons.type?.toLowerCase().includes('diamond') ||
           cons.item_id?.toUpperCase().includes('DMAX'))
        )
        const abrasiveBlades = prioritizedConsumables.filter((cons: Consumable) => 
          cons.subcategory?.includes('Blade') && 
          !diamondBlades.includes(cons)
        )
        
        // Recommend ONE blade - diamond for hard materials, abrasive for others
        if (isHardMaterial || isVeryHard || isBrittle) {
          // For hard materials, recommend diamond blade if available
          if (diamondBlades.length > 0) {
            const selectedBlade = diamondBlades.find(b => 
              recommendedEquipmentIds.some(eqId => b.compatible_with_equipment?.includes(eqId))
            ) || diamondBlades[0]
            
            recs.sectioning.consumables.push(consumableToItem(selectedBlade,
              `Diamond blade essential for ${isHardMaterial ? 'hard materials and ceramics' : 'very hard materials'}. ` +
              `Diamond provides superior cutting action without excessive heat generation. ` +
              `Prevents thermal damage and deformation critical for microstructure preservation. ` +
              `${selectedBlade.size_inches ? selectedBlade.size_inches + '-inch diameter.' : ''}`
            ))
          }
        } else {
          // For standard materials, recommend ONE appropriate abrasive blade
          if (abrasiveBlades.length > 0) {
            const selectedBlade = abrasiveBlades.find(b => 
              recommendedEquipmentIds.some(eqId => b.compatible_with_equipment?.includes(eqId))
            ) || abrasiveBlades[0]
            
            let reasoning = ''
            const isSiC = selectedBlade.material_composition?.toLowerCase().includes('silicon-carbide') || 
                         selectedBlade.material_composition?.toLowerCase().includes('sic')
            const isAlumina = selectedBlade.material_composition?.toLowerCase().includes('alumina') ||
                             selectedBlade.material_composition?.toLowerCase().includes('al2o3')
            
            if (isStainless || isTitanium || isNickel) {
              if (isSiC) {
                reasoning = `Silicon carbide (SiC) abrasive blades recommended for hard non-ferrous metals like ${materialType}. ` +
                  `SiC provides aggressive cutting action needed for titanium, nickel alloys, and similar materials. ` +
                  `Proper blade selection prevents excessive heat generation that could alter microstructure.`
              } else {
                reasoning = `Abrasive blades suitable for ${materialType}. ` +
                  `Proper blade selection prevents excessive heat generation.`
              }
            } else if (isSoftMetal) {
              reasoning = `Alumina abrasive blades optimized for soft non-ferrous metals like ${materialType}. ` +
                `Proper blade selection prevents excessive heat generation and material smearing in soft materials. ` +
                `Essential for preserving true microstructure in aluminum, brass, and similar alloys.`
            } else if (isVeryHard) {
              reasoning = `Alumina/rubber bonded abrasive blades specifically designed for hardened steels. ` +
                `Rubber bond provides appropriate cutting action for very hard materials (>65 HRC). ` +
                `Prevents excessive heat generation that could cause phase transformations or tempering.`
            } else {
              reasoning = `General purpose alumina abrasive blades suitable for ${materialType}. ` +
                `Cost-effective choice for typical metallographic sectioning of steels and ferrous metals.`
            }
            
            if (selectedBlade.size_inches) {
              reasoning += ` ${selectedBlade.size_inches}-inch diameter.`
            }

            recs.sectioning.consumables.push(consumableToItem(selectedBlade, reasoning))
          }
        }

        // Always include cutting fluid with expert reasoning
        const cuttingFluids = await getConsumablesByCategoryAndSubcategory('sectioning', 'Cutting Fluids')
        if (cuttingFluids.length > 0) {
          recs.sectioning.consumables.push(consumableToItem(cuttingFluids[0], 
            'Cutting fluid essential for cooling and lubrication during abrasive sectioning. ' +
            'Prevents excessive heat generation that could cause phase transformations, tempering, or microstructural changes. ' +
            'Extends blade life and ensures consistent cutting performance. ' +
            'Water-based fluids with anti-corrosion additives recommended for most applications.'
          ))
        }
      }
    }

    // ========== MOUNTING RECOMMENDATIONS ==========
    if (selectedStages.includes('mounting')) {
      // EXPERT GUIDANCE: Determine mounting method based on material and requirements
      // Compression mounting: Fast, good for most materials, requires heat/pressure
      // Cold mounting: Essential for temperature-sensitive materials, porous materials, delicate samples
      const needsColdMounting = isSoftMetal || isDelicate || needsPrecision || 
                                 materialType.includes('Titanium') || 
                                 materialType.includes('Heat-Sensitive')
      
      if (needsColdMounting) {
        // Cold mounting (castable) - PACE specialty
        const coldMountingEquipment = await getEquipmentByCategory('mounting')
        const vacuumSystems = coldMountingEquipment.filter(eq => 
          eq.subcategory?.includes('Vacuum') || eq.item_id?.includes('VAC')
        )
        const uvSystems = coldMountingEquipment.filter(eq => 
          eq.subcategory?.includes('UV') || eq.item_id?.includes('UV')
        )
        
        if (isHighThroughput && uvSystems.length > 0) {
          recs.mounting.equipment.push(equipmentToItem(uvSystems[0],
            `UV curing mounting system recommended for high-volume cold mounting of ${materialType}. ` +
            `UV curing provides fastest cold mounting cycles through accelerated resin curing. ` +
            `Essential for temperature-sensitive materials where compression mounting heat would alter microstructure.`
          ))
        } else if (needsPrecision || isDelicate) {
          if (vacuumSystems.length > 0) {
            const vacSystem = vacuumSystems.find(eq => eq.item_id?.includes('Pro')) || vacuumSystems[0]
            recs.mounting.equipment.push(equipmentToItem(vacSystem,
              `Vacuum impregnation system essential for ${needsPrecision ? 'precision work' : 'delicate samples'}. ` +
              `Removes air bubbles critical for clear mounts in precision applications. ` +
              `Programmable controls ensure consistent results. Essential for porous materials and complex geometries.`
            ))
          }
        } else if (vacuumSystems.length > 0) {
          recs.mounting.equipment.push(equipmentToItem(vacuumSystems[0],
            `Vacuum mounting removes bubbles for clear mounts without heat application. ` +
            `Essential for soft metals and heat-sensitive materials where compression mounting would alter microstructure. ` +
            `Prevents thermal damage that could mask true microstructure.`
          ))
        }
        
        // Cold mounting resins
        const mountingConsumables = await getRecommendedConsumables({ category: 'mounting' })
        const coldResins = mountingConsumables.filter(cons => 
          cons.subcategory?.includes('Resins') && 
          (cons.item_id?.toLowerCase().includes('epocast') || 
           cons.item_id?.toLowerCase().includes('ultrathin') ||
           cons.item_id?.toLowerCase().includes('quickmount'))
        )
        
        if (isHighThroughput && coldResins.some(r => r.item_id?.toLowerCase().includes('quickmount'))) {
          const quickMount = coldResins.find(r => r.item_id?.toLowerCase().includes('quickmount'))
          if (quickMount) {
            recs.mounting.consumables.push(consumableToItem(quickMount,
              `Fast-curing epoxy resin ideal for high-volume cold mounting. ` +
              `Faster cycles than standard epoxy while maintaining good edge retention. ` +
              `Good balance of speed and quality for production work.`
            ))
          }
        } else if (needsPrecision && coldResins.some(r => r.item_id?.toLowerCase().includes('ultrathin'))) {
          const ultrathin = coldResins.find(r => r.item_id?.toLowerCase().includes('ultrathin'))
          if (ultrathin) {
            recs.mounting.consumables.push(consumableToItem(ultrathin,
              `Low viscosity epoxy essential for vacuum impregnation. ` +
              `Excellent penetration for porous materials and complex geometries. ` +
              `Superior edge retention for precision work. Critical for failure analysis and research applications.`
            ))
          }
        } else if (coldResins.length > 0) {
          const standardResin = coldResins.find(r => r.item_id?.toLowerCase().includes('epocast')) || coldResins[0]
          recs.mounting.consumables.push(consumableToItem(standardResin,
            `High-quality epoxy resin for cold mounting. ` +
            `Excellent edge retention and chemical resistance essential for microstructure preservation. ` +
            `Standard choice for most cold mounting applications requiring good edge retention.`
          ))
        }
      } else {
        // Compression mounting for standard materials
        const compressionEquipment = await getRecommendedEquipment({
          category: 'mounting',
          throughput: throughput,
          automation: automation,
          budget: budget,
        })
        
        const compressionPresses = compressionEquipment.filter(eq => 
          eq.subcategory?.includes('Compression') || eq.subcategory?.includes('Press')
        )
        
        compressionPresses.slice(0, 2).forEach((eq: Equipment) => {
          let reasoning = `Compression mounting press recommended for ${materialType}. `
          if (eq.automation_level === 'automated') {
            reasoning += 'Automated operation ensures consistent mounting parameters (pressure, temperature, time). '
          }
          reasoning += `Compression mounting provides fast cycles and good edge retention for most materials. ` +
            `Heat and pressure application suitable for materials that can tolerate thermal cycling.`
          recs.mounting.equipment.push(equipmentToItem(eq, reasoning))
        })
        
        // Note: Compression mounting resins typically from other suppliers
        if (compressionPresses.length > 0) {
          recs.mounting.consumables.push({
            name: 'Thermosetting Mounting Resins',
            description: 'High-quality thermosetting resins (phenolic, diallyl phthalate) for compression mounting. Select based on material compatibility and edge retention needs.',
            link: '#',
            isPACE: false,
            reasoning: 'Proper resin selection critical: phenolic for general use, DAP for better edge retention, conductive resins for SEM work. Compression mounting resins available from specialized suppliers.',
          })
        }
      }
    }

    // ========== GRINDING & POLISHING RECOMMENDATIONS ==========
    // Note: Grinding and polishing equipment is combined in 'grinding-polishing' category
    // NANO can do both grinding and polishing, so we combine these sections
    const needsGrinding = selectedStages.includes('grinding')
    const needsPolishing = selectedStages.includes('polishing')
    
    if (needsGrinding || needsPolishing) {
      // Query grinding and polishing equipment from database (separate categories)
      let grindingEquipment = await getRecommendedEquipment({
        category: 'grinding',
        sampleSize: sampleSize,
        throughput: throughput,
        automation: automation,
        budget: budget,
      })
      
      let polishingEquipment = await getRecommendedEquipment({
        category: 'polishing',
        sampleSize: sampleSize,
        throughput: throughput,
        automation: automation,
        budget: budget,
      })
      
      // Combine both categories (NANO can do both grinding and polishing)
      let grindingPolishingEquipment = [...grindingEquipment, ...polishingEquipment]
      
      // If no results, fallback to all equipment (filtering might be too strict)
      if (grindingPolishingEquipment.length === 0) {
        const allGrinding = await getEquipmentByCategory('grinding')
        const allPolishing = await getEquipmentByCategory('polishing')
        grindingPolishingEquipment = [...allGrinding, ...allPolishing]
      }

      // Add hand grinders for large samples if needed (only if grinding is selected)
      if (needsGrinding && (isLarge || isVeryLarge)) {
        const handGrinders = await getEquipmentByCategoryAndSubcategory('grinding-polishing', 'hand-grinding')
        if (handGrinders.length > 0) {
          recs.grinding.equipment.push(equipmentToItem(handGrinders[0], 'Belt grinding provides fastest material removal for initial preparation. Critical for large samples.'))
        }
      }

      // Deduplicate by subcategory - prioritize NANO if both grinding and polishing are needed
      const equipmentByType = new Map<string, Equipment>()
      
      for (const eq of grindingPolishingEquipment) {
        const type = eq.subcategory || 'general'
        
        // If both grinding and polishing needed, prefer NANO (can do both)
        if (needsGrinding && needsPolishing && eq.item_id?.includes('NANO')) {
          equipmentByType.set('nano-series', eq)
        } else if (!equipmentByType.has(type)) {
          equipmentByType.set(type, eq)
        }
      }
      
      // Select best equipment
      let selectedEquipment: Equipment | null = null
      
      if (needsGrinding && needsPolishing) {
        // Prefer NANO since it can do both
        selectedEquipment = Array.from(equipmentByType.values()).find(eq => eq.item_id?.includes('NANO')) || 
                           Array.from(equipmentByType.values())[0] || null
      } else {
        selectedEquipment = Array.from(equipmentByType.values())[0] || null
      }
      
      // Filter by automation level
      const allCandidates = Array.from(equipmentByType.values())
      if (selectedEquipment && isAutomated && selectedEquipment.automation_level !== 'automated') {
        const automatedOption = allCandidates.find(eq => 
          eq.automation_level === 'automated' || eq.automation_level === 'semi-automated'
        )
        if (automatedOption) selectedEquipment = automatedOption
      }
      
      // Filter by budget (but be lenient)
      if (selectedEquipment) {
        const budgetMap = getBudgetMap()
        const allowedBudgets = budgetMap[budget] || []
        
        if (selectedEquipment.min_budget_level && !allowedBudgets.includes(selectedEquipment.min_budget_level)) {
          const budgetOption = allCandidates.find(eq => 
            !eq.min_budget_level || allowedBudgets.includes(eq.min_budget_level)
          )
          if (budgetOption) {
            selectedEquipment = budgetOption
          } else {
            // If no budget match, allow equipment without budget level
            const noBudgetOption = allCandidates.find(eq => !eq.min_budget_level)
            if (noBudgetOption) selectedEquipment = noBudgetOption
            // Otherwise keep original (better to show something than nothing)
          }
        }
      }
      
      if (selectedEquipment) {
        let reasoning = `Recommended for ${needsGrinding && needsPolishing ? 'grinding and polishing' : needsGrinding ? 'grinding' : 'polishing'}. `
        if (needsGrinding && needsPolishing && selectedEquipment.item_id?.includes('NANO')) {
          reasoning += 'NANO series can handle both grinding and polishing operations, providing cost-effective solution. '
        }
        if (selectedEquipment.automation_level === 'semi-automated' || selectedEquipment.automation_level === 'automated') {
          reasoning += 'Automated operation ensures consistent results.'
        }
        
        // Add to both sections if both are needed
        if (needsGrinding) {
          recs.grinding.equipment.push(equipmentToItem(selectedEquipment, reasoning))
        }
        if (needsPolishing) {
          recs.polishing.equipment.push(equipmentToItem(selectedEquipment, reasoning))
        }
      }

      // Query grinding consumables (abrasive papers)
      const grindingConsumables = await getRecommendedConsumables({
        category: 'polishing', // Note: grinding papers are in polishing category in DB
        materialType: mapMaterialType(materialType),
        hardness: hardness,
      })

      // Filter for grinding papers specifically
      const grindingPapers = grindingConsumables.filter((cons: Consumable) => 
        cons.subcategory?.includes('Grinding Papers') || cons.type?.includes('grinding')
      )

      // Generate general grinding steps (not tied to specific products)
      recs.grinding.steps = generateGrindingSteps(materialType, isHard, isVeryHard, isSoft, isHardMaterial)
      
      // Add general consumable recommendations (not specific products)
      const hasSiCGrinding = grindingPapers.some((cons: Consumable) => 
        cons.material_composition === 'silicon-carbide' || 
        cons.name?.toLowerCase().includes('sic') ||
        cons.name?.toLowerCase().includes('silicon carbide')
      )

      if (hasSiCGrinding || isHardMaterial || isVeryHard) {
        // For hard materials, recommend SiC grinding papers generally
        recs.grinding.consumables.push({
          name: 'Silicon Carbide Grinding Papers',
          description: 'SiC grinding papers in various grit sizes (120-600 grit) for progressive grinding steps. Essential for hard materials requiring aggressive cutting action.',
          link: 'https://shop.metallographic.com/collections/sic-grinding',
          isPACE: false,
          generalType: 'Grinding papers',
          reasoning: `Recommended for ${materialType}. SiC provides aggressive cutting action essential for hard materials. Follow the grinding steps outlined above using appropriate grit sizes.`,
        })
      } else if (isSoft) {
        // For soft materials, recommend Al2O3 or fine SiC
        recs.grinding.consumables.push({
          name: 'Aluminum Oxide or Fine SiC Grinding Papers',
          description: 'Fine grinding papers (240-600 grit) suitable for soft materials. Al2O3 reduces risk of embedding, while fine SiC provides controlled removal.',
          link: 'https://shop.metallographic.com/collections/grinding',
          isPACE: false,
          generalType: 'Grinding papers',
          reasoning: `Recommended for ${materialType}. Finer abrasives with light pressure minimize embedding and relief in soft materials. Follow the grinding steps outlined above.`,
        })
      } else {
        // Standard materials: general grinding papers
        recs.grinding.consumables.push({
          name: 'Grinding Papers',
          description: 'Grinding papers in various grit sizes for progressive grinding steps. Select grit sizes based on material hardness and grinding steps outlined above.',
          link: 'https://shop.metallographic.com/collections/grinding',
          isPACE: false,
          generalType: 'Grinding papers',
          reasoning: `Recommended for ${materialType}. Follow the grinding steps outlined above using appropriate grit sizes for your material.`,
        })
      }
    }

    // ========== POLISHING-SPECIFIC RECOMMENDATIONS ==========
    // (Equipment already handled above in combined grinding-polishing section)
    if (needsPolishing) {
      // EXPERT GUIDANCE: Vibratory polisher for EBSD and extremely flat surfaces requires NANO-FEMTO
      if (needsEBSD || needsExtremeFlatness) {
        // For vibratory polishing, user needs NANO-FEMTO system
        // Find NANO base and FEMTO head suitable for vibratory polishing
        const allGrinding = await getEquipmentByCategory('grinding')
        const allPolishing = await getEquipmentByCategory('polishing')
        const allGrindingPolishingEquipment = [...allGrinding, ...allPolishing]
        
        // Find FEMTO models suitable for vibratory polishing (typically FEMTO-1100S or FEMTO-1500S)
        const femtoForVibratory = allGrindingPolishingEquipment.filter(eq => 
          eq.item_id?.includes('FEMTO') && 
          (eq.item_id?.includes('1100S') || eq.item_id?.includes('1500S'))
        )
        
        if (femtoForVibratory.length > 0) {
          const femtoItem = femtoForVibratory[0]
          recs.polishing.equipment.push(equipmentToItem(femtoItem,
            `NANO-FEMTO system essential for ${needsEBSD ? 'EBSD preparation' : 'extremely flat surfaces'}. ` +
            `FEMTO automatic polishing head with vibratory capability produces deformation-free surfaces with minimal relief. ` +
            `Critical for electron backscatter diffraction (EBSD) where surface quality directly impacts pattern quality. ` +
            `Produces plano-parallel surfaces with minimal deformation layer essential for advanced characterization techniques.`
          ))
          
          // Ensure corresponding NANO base is added (will be handled by the FEMTO check later, but we can add it here too)
          const requiredNanoModel = '1000S' // FEMTO-1100S/1500S work with NANO-1000S
          const matchingNano = allGrindingPolishingEquipment.find(eq => 
            eq.item_id?.includes('NANO') && eq.item_id?.includes(requiredNanoModel)
          )
          
          if (matchingNano) {
            const hasNanoBase = recs.polishing.equipment.some(eq => 
              eq.itemId === matchingNano.item_id || eq.name.includes('NANO') && eq.name.includes('1000S')
            )
            
            if (!hasNanoBase) {
              recs.polishing.equipment.push(equipmentToItem(matchingNano,
                `Required base unit for FEMTO vibratory polishing. NANO base provides the foundation for FEMTO automatic polishing heads.`
              ))
            }
          }
        } else {
          // Expert guidance when PACE doesn't have the specific FEMTO model
          recs.polishing.equipment.push({
            name: 'NANO-FEMTO System (Vibratory Polishing)',
            description: 'NANO-FEMTO system with vibratory polishing capability essential for EBSD preparation and extremely flat surfaces. FEMTO automatic polishing head produces deformation-free surfaces with minimal relief essential for advanced characterization.',
            link: '#',
            category: 'Vibratory Polishing',
            isPACE: false,
            reasoning: 'For EBSD preparation or applications requiring extremely flat surfaces, a NANO-FEMTO system with vibratory capability is required. The FEMTO automatic polishing head provides gentle polishing action that produces deformation-free surfaces. Essential for electron backscatter diffraction where surface quality directly impacts pattern quality.',
          })
        }
      }
      
      // EXPERT GUIDANCE: Controlled removal polisher for precision applications
      if (needsPrecision && (isPremium || applications.includes('Failure Analysis'))) {
        const controlledRemoval = await getEquipmentByCategoryAndSubcategory('polishing', 'precision-polishing')
        if (controlledRemoval.length > 0) {
          // Only add if we don't already have polishing equipment
          if (recs.polishing.equipment.length === 0) {
            recs.polishing.equipment.push(equipmentToItem(controlledRemoval[0],
              `Controlled removal polisher essential for ${applications.includes('Failure Analysis') ? 'failure analysis' : 'precision applications'}. ` +
              `Precise material removal control critical for case depth measurements, depth profiling, and applications requiring exact removal rates. ` +
              `Enables accurate depth measurements essential for case depth analysis and failure investigation.`
            ))
          }
        } else {
          // Expert guidance when PACE doesn't have controlled removal
          if (recs.polishing.equipment.length === 0) {
            recs.polishing.equipment.push({
              name: 'Controlled Removal Polishing Systems',
              description: 'Advanced polishing systems with precise material removal control. Essential for depth measurements, case depth analysis, and applications requiring exact material removal rates.',
              link: '#',
              category: 'Controlled Removal Polishing',
              isPACE: false,
              reasoning: 'For case depth measurements, failure analysis requiring depth profiling, or applications needing exact material removal rates, controlled removal polishers with precise depth control are essential. These systems enable accurate depth measurements that standard polishers cannot provide.',
            })
          }
        }
      }
      
      // EXPERT GUIDANCE: For very high throughput, suggest fully automated systems
      if (isVeryHighThroughput && isAutomated && needsAdvancedAutomation && recs.polishing.equipment.length === 0) {
        recs.polishing.equipment.push({
          name: 'Fully-Automated Grinder-Polishers with Sample Handling',
          description: 'Systems with automatic sample loading/unloading and multi-stage method sequencing. Capable of running complete preparation sequences (grinding through final polish) without operator intervention.',
          link: '#',
          category: 'Advanced Polishing Automation',
          isPACE: false,
          reasoning: 'For very high throughput (>200 samples/day), fully automated systems with robotic sample handling and sequential method execution are essential. These systems process multiple samples simultaneously through complete preparation sequences without operator intervention, enabling 24/7 unattended operation.',
        })
      }

      // Generate general polishing steps (not tied to specific products)
      recs.polishing.steps = generatePolishingSteps(materialType, isHard, isVeryHard, isSoft, needsEBSD, needsExtremeFlatness)
      
      // Add general consumable recommendations (not specific products)
      // Polishing pads
      if (isHard || isStainless || isTitanium || isNickel) {
        recs.polishing.consumables.push({
          name: 'Non-Woven Polishing Pads',
          description: 'Non-woven pads for intermediate diamond polishing steps. Provides good material removal with diamond suspensions while maintaining consistent polishing action.',
          link: 'https://shop.metallographic.com/collections/polishing-pads',
          isPACE: false,
          generalType: 'Polishing pads / cloths',
          reasoning: 'Recommended for hard materials. Non-woven pads provide aggressive cutting needed for intermediate steps. Follow the polishing steps outlined above.',
        })
      } else if (isSoftMetal) {
        recs.polishing.consumables.push({
          name: 'Low-Nap Polishing Pads',
          description: 'Low-nap pads for soft materials. Reduces risk of pull-out and relief. Excellent flatness control essential for soft metals.',
          link: 'https://shop.metallographic.com/collections/polishing-pads',
          isPACE: false,
          generalType: 'Polishing pads / cloths',
          reasoning: 'Recommended for soft materials. Low-nap pads minimize relief and pull-out. Follow the polishing steps outlined above.',
        })
      } else {
        recs.polishing.consumables.push({
          name: 'Polishing Pads',
          description: 'Select pad based on material: non-woven for hard materials, low-nap for soft materials requiring flatness control.',
          link: 'https://shop.metallographic.com/collections/polishing-pads',
          isPACE: false,
          generalType: 'Polishing pads / cloths',
          reasoning: 'Follow the polishing steps outlined above. Select appropriate pad type based on your material characteristics.',
        })
      }
      
      // Diamond suspensions
      if (isHard || isStainless || isTitanium || isNickel) {
        recs.polishing.consumables.push({
          name: 'Diamond Polishing Suspensions',
          description: 'Progressive diamond grits (9→6→3→1 μm) for hard materials. Diamond provides aggressive cutting action needed for hard alloys.',
          link: 'https://shop.metallographic.com/collections/monocrystalline',
          isPACE: false,
          generalType: 'Diamond polishing suspensions',
          reasoning: 'Progressive diamond polishing essential for damage removal on hard materials. Follow the polishing steps outlined above using appropriate grit sizes.',
        })
      } else if (isSoftMetal) {
        recs.polishing.consumables.push({
          name: 'Diamond Polishing Suspensions',
          description: 'Finer diamond grits (6→3→1 μm) for soft materials. Lower pressure and finer grits minimize relief and preserve true microstructure.',
          link: 'https://shop.metallographic.com/collections/monocrystalline',
          isPACE: false,
          generalType: 'Diamond polishing suspensions',
          reasoning: 'Finer diamond grits reduce pull-out in soft materials. Follow the polishing steps outlined above with light pressure.',
        })
      } else {
        recs.polishing.consumables.push({
          name: 'Diamond Polishing Suspensions',
          description: 'Progressive diamond grits (6→3→1 μm) for standard materials. Essential for achieving deformation-free surfaces.',
          link: 'https://shop.metallographic.com/collections/monocrystalline',
          isPACE: false,
          generalType: 'Diamond polishing suspensions',
          reasoning: 'Progressive diamond polishing removes scratches efficiently. Follow the polishing steps outlined above.',
        })
      }
      
      // Colloidal silica for final polish
      recs.polishing.consumables.push({
        name: 'Colloidal Silica Suspension',
        description: 'Chemical-mechanical polishing for mirror finish. Removes fine scratches and produces deformation-free surface.',
        link: 'https://shop.metallographic.com/collections/polishing',
        isPACE: false,
        generalType: 'Colloidal silica suspension',
        reasoning: 'Essential for achieving mirror-like surface quality required for accurate microstructure examination. Use in final polishing step as outlined above.',
      })

      // Ensure at least basic recommendations (only if not already added in grinding section)
      if (recs.polishing.equipment.length === 0) {
        const allGrinding = await getEquipmentByCategory('grinding')
        const allPolishing = await getEquipmentByCategory('polishing')
        const allPolishingEquipment = [...allGrinding, ...allPolishing]
        // Filter by budget
        const budgetMap = getBudgetMap()
        const allowedBudgets = budgetMap[budget] || []
        
        // Filter by budget, but allow equipment without budget level
        const filtered = allPolishingEquipment.filter((eq: Equipment) => 
          !eq.min_budget_level || allowedBudgets.includes(eq.min_budget_level)
        )
        
        // If filtered is empty, fall back to all equipment (better to show something)
        const finalFiltered = filtered.length > 0 ? filtered : allPolishingEquipment
        
        if (finalFiltered.length > 0) {
          // Prefer NANO if both grinding and polishing are needed
          const preferred = finalFiltered.find(eq => eq.item_id?.includes('NANO')) || finalFiltered[0]
          recs.polishing.equipment.push(equipmentToItem(preferred, 'Recommended polishing equipment.'))
        }
      }
    }
    // ========== ETCHING RECOMMENDATIONS ==========
    if (selectedStages.includes('etching')) {
    
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
    }

    // ========== MICROSCOPY RECOMMENDATIONS ==========
    if (selectedStages.includes('microscopy')) {
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
    
    }
    // ========== HARDNESS TESTING RECOMMENDATIONS ==========
    if (selectedStages.includes('hardness')) {
    
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
    if (selectedStages.includes('cleaning') && (needsPrecision || materialType.includes('Titanium') || isSoftMetal || isDelicate)) {
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

    // ========== FINAL CHECK: Ensure FEMTOs have corresponding NANO bases ==========
    // Check ALL equipment for FEMTOs and add corresponding NANO bases
    const allRecommendedEquipment = [...recs.grinding.equipment, ...recs.polishing.equipment]
    const femtoItems = allRecommendedEquipment.filter(item => item.name.includes('FEMTO'))
    
    if (femtoItems.length > 0) {
      // Fetch all grinding and polishing equipment to find matching NANO bases
      const allGrinding = await getEquipmentByCategory('grinding')
      const allPolishing = await getEquipmentByCategory('polishing')
      const allGrindingPolishingEquipment = [...allGrinding, ...allPolishing]
      
      for (const femtoItem of femtoItems) {
        // Determine which NANO base is needed based on FEMTO model
        let requiredNanoModel: string | null = null
        if (femtoItem.name.includes('1100S') || femtoItem.name.includes('1500S')) {
          // FEMTO-1100S and FEMTO-1500S work with NANO-1000S or NANO-2000S
          requiredNanoModel = '1000S' // Prefer 1000S, but 2000S also works
        } else if (femtoItem.name.includes('2200S') || femtoItem.name.includes('2500S')) {
          // FEMTO-2200S and FEMTO-2500S work with NANO-1200S
          requiredNanoModel = '1200'
        }
        
        if (requiredNanoModel) {
          // Find the matching NANO base
          const matchingNano = allGrindingPolishingEquipment.find(eq => 
            eq.item_id?.includes('NANO') && eq.item_id?.includes(requiredNanoModel!)
          )
          
          if (matchingNano) {
            // Check if this specific NANO model is already in recommendations
            // Check by item_id match (most reliable) or by name containing the model number
            const matchingNanoItemId = matchingNano.item_id
            const hasNanoBase = allRecommendedEquipment.some(eq => {
              // First check by item_id if available
              if (eq.itemId && matchingNanoItemId && eq.itemId === matchingNanoItemId) {
                return true
              }
              // Fallback: check if name contains the same NANO model
              const eqName = eq.name.toUpperCase()
              const matchingModel = requiredNanoModel!.toUpperCase()
              return eqName.includes('NANO') && eqName.includes(matchingModel)
            })
            
            if (!hasNanoBase) {
              const nanoReasoning = `Required base unit for ${femtoItem.name}. FEMTO automatic polishing heads require a compatible NANO base unit to operate.`
              if (needsGrinding) {
                recs.grinding.equipment.push(equipmentToItem(matchingNano, nanoReasoning))
              }
              if (needsPolishing) {
                recs.polishing.equipment.push(equipmentToItem(matchingNano, nanoReasoning))
              }
            }
          }
        }
      }
    }
    
    // Deduplicate NANO equipment within each section (grinding and polishing separately)
    // Remove duplicates based on itemId or name
    const deduplicateSection = (equipment: EquipmentItem[]) => {
      const seen = new Set<string>()
      return equipment.filter(item => {
        // Use itemId if available, otherwise use name
        const key = item.itemId || item.name
        if (seen.has(key)) {
          return false
        }
        seen.add(key)
        return true
      })
    }
    
    recs.grinding.equipment = deduplicateSection(recs.grinding.equipment)
    recs.polishing.equipment = deduplicateSection(recs.polishing.equipment)

    // Sort equipment: NANO -> FEMTO -> GIGA/ATTO -> others
    const sortEquipment = (equipment: EquipmentItem[]) => {
      return [...equipment].sort((a, b) => {
        const aName = a.name.toUpperCase()
        const bName = b.name.toUpperCase()
        
        const aIsNano = aName.includes('NANO')
        const bIsNano = bName.includes('NANO')
        const aIsFemto = aName.includes('FEMTO')
        const bIsFemto = bName.includes('FEMTO')
        const aIsGiga = aName.includes('GIGA')
        const bIsGiga = bName.includes('GIGA')
        const aIsAtto = aName.includes('ATTO')
        const bIsAtto = bName.includes('ATTO')
        
        // Priority order: NANO (1) -> FEMTO (2) -> GIGA/ATTO (3) -> others (4)
        const getPriority = (name: string) => {
          if (name.includes('NANO')) return 1
          if (name.includes('FEMTO')) return 2
          if (name.includes('GIGA') || name.includes('ATTO')) return 3
          return 4
        }
        
        const aPriority = getPriority(aName)
        const bPriority = getPriority(bName)
        
        // If different priorities, sort by priority
        if (aPriority !== bPriority) {
          return aPriority - bPriority
        }
        
        // If same priority and both are GIGA/ATTO, GIGA comes before ATTO
        if (aPriority === 3) {
          if (aIsGiga && bIsAtto) return -1
          if (aIsAtto && bIsGiga) return 1
        }
        
        // Otherwise maintain original order
        return 0
      })
    }
    
    // Apply sorting to grinding and polishing equipment
    recs.grinding.equipment = sortEquipment(recs.grinding.equipment)
    recs.polishing.equipment = sortEquipment(recs.polishing.equipment)

      setRecommendations(recs)
      setStep(3)
      setError(null)
      
      // Scroll to recommendations after a brief delay
      setTimeout(() => {
        const recommendationsElement = document.getElementById('recommendations-section')
        if (recommendationsElement) {
          recommendationsElement.scrollIntoView({ behavior: 'smooth', block: 'start' })
        }
      }, 100)
    } catch (error) {
      console.error('Error generating recommendations:', error)
      setError('There was an error generating recommendations. Please try again.')
      // Auto-dismiss error after 5 seconds
      setTimeout(() => setError(null), 5000)
    } finally {
      setIsGenerating(false)
    }
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

  const toggleProcessStage = (stage: string) => {
    setFormData((prev) => ({
      ...prev,
      processStages: prev.processStages.includes(stage)
        ? prev.processStages.filter((s) => s !== stage)
        : [...prev.processStages, stage],
    }))
  }

  const canProceedToStep2 = () => {
    return formData.materialType && formData.materialHardness && formData.sampleSize
  }

  const canGenerateRecommendations = () => {
    return formData.throughput && formData.automation && formData.budget && formData.processStages.length > 0
  }

  // Generate mailto: link with all form data and recommendations
  const generateExpertReviewMailto = (): string => {
    let body = 'LAB BUILD REVIEW REQUEST\n'
    body += '========================\n\n'
    
    // Contact Information
    body += 'CONTACT INFORMATION\n'
    body += '-------------------\n'
    body += `Name: ${reviewFormData.name}\n`
    body += `Email: ${reviewFormData.email}\n`
    if (reviewFormData.phone) body += `Phone: ${reviewFormData.phone}\n`
    if (reviewFormData.company) body += `Company: ${reviewFormData.company}\n`
    body += '\n'
    
    // Lab Requirements
    body += 'LAB REQUIREMENTS\n'
    body += '----------------\n'
    body += `Material Type: ${formData.materialType || 'Not specified'}\n`
    body += `Material Hardness: ${formData.materialHardness || 'Not specified'}\n`
    body += `Sample Size: ${formData.sampleSize || 'Not specified'}\n`
    body += `Sample Shape: ${formData.sampleShape || 'Not specified'}\n`
    body += `Daily Throughput: ${formData.throughput || 'Not specified'}\n`
    body += `Automation Level: ${formData.automation || 'Not specified'}\n`
    body += `Equipment Tier: ${formData.budget || 'Not specified'}\n`
    body += `Surface Finish: ${formData.surfaceFinish || 'Standard'}\n`
    body += `Applications: ${formData.applications?.length > 0 ? formData.applications.join(', ') : 'Not specified'}\n`
    body += `Process Stages: ${formData.processStages?.length > 0 ? formData.processStages.join(', ') : 'Not specified'}\n`
    body += '\n'
    
    // Recommendations
    if (recommendations) {
      body += 'RECOMMENDED EQUIPMENT & CONSUMABLES\n'
      body += '===================================\n\n'
      
      // Sectioning
      if (recommendations.sectioning?.equipment?.length > 0 || recommendations.sectioning?.consumables?.length > 0) {
        body += 'SECTIONING\n'
        body += '----------\n'
        if (recommendations.sectioning.equipment.length > 0) {
          body += 'Equipment:\n'
          recommendations.sectioning.equipment.forEach((item: EquipmentItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        if (recommendations.sectioning.consumables.length > 0) {
          body += 'Consumables:\n'
          recommendations.sectioning.consumables.forEach((item: ConsumableItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        body += '\n'
      }
      
      // Mounting
      if (recommendations.mounting?.equipment?.length > 0 || recommendations.mounting?.consumables?.length > 0) {
        body += 'MOUNTING\n'
        body += '--------\n'
        if (recommendations.mounting.equipment.length > 0) {
          body += 'Equipment:\n'
          recommendations.mounting.equipment.forEach((item: EquipmentItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        if (recommendations.mounting.consumables.length > 0) {
          body += 'Consumables:\n'
          recommendations.mounting.consumables.forEach((item: ConsumableItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        body += '\n'
      }
      
      // Grinding
      if (recommendations.grinding?.equipment?.length > 0 || recommendations.grinding?.consumables?.length > 0) {
        body += 'GRINDING\n'
        body += '--------\n'
        if (recommendations.grinding.equipment.length > 0) {
          body += 'Equipment:\n'
          recommendations.grinding.equipment.forEach((item: EquipmentItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        if (recommendations.grinding.consumables.length > 0) {
          body += 'Consumables:\n'
          recommendations.grinding.consumables.forEach((item: ConsumableItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        body += '\n'
      }
      
      // Polishing
      if (recommendations.polishing?.equipment?.length > 0 || recommendations.polishing?.consumables?.length > 0) {
        body += 'POLISHING\n'
        body += '---------\n'
        if (recommendations.polishing.equipment.length > 0) {
          body += 'Equipment:\n'
          recommendations.polishing.equipment.forEach((item: EquipmentItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        if (recommendations.polishing.consumables.length > 0) {
          body += 'Consumables:\n'
          recommendations.polishing.consumables.forEach((item: ConsumableItem) => {
            body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
          })
        }
        body += '\n'
      }
      
      // Other stages
      const otherStages = [
        { key: 'etching', label: 'ETCHING' },
        { key: 'microscopy', label: 'MICROSCOPY' },
        { key: 'cleaning', label: 'CLEANING' },
        { key: 'hardness', label: 'HARDNESS TESTING' },
      ]
      
      otherStages.forEach(({ key, label }) => {
        const stage = recommendations[key as keyof Recommendations] as { equipment?: EquipmentItem[], consumables?: ConsumableItem[] } | undefined
        const hasEquipment = stage?.equipment && stage.equipment.length > 0
        const hasConsumables = stage?.consumables && stage.consumables.length > 0
        if (stage && (hasEquipment || hasConsumables)) {
          body += `${label}\n`
          body += `${'-'.repeat(label.length)}\n`
          if (stage.equipment && stage.equipment.length > 0) {
            body += 'Equipment:\n'
            stage.equipment.forEach((item: EquipmentItem) => {
              body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
            })
          }
          if (stage.consumables && stage.consumables.length > 0) {
            body += 'Consumables:\n'
            stage.consumables.forEach((item: ConsumableItem) => {
              body += `  - ${item.name}${item.reasoning ? ` (${item.reasoning})` : ''}\n`
            })
          }
          body += '\n'
        }
      })
    }
    
    // Additional message
    if (reviewFormData.message) {
      body += 'ADDITIONAL MESSAGE\n'
      body += '------------------\n'
      body += `${reviewFormData.message}\n`
    }
    
    body += '\n---\n'
    body += 'This request was generated from the Lab Build tool on metallography.org'
    
    const subject = `Lab Build Review Request${reviewFormData.company ? ` - ${reviewFormData.company}` : ''}`
    
    return `mailto:sales@metallographic.com?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`
  }

  const handleReviewFormChange = (field: string, value: string) => {
    setReviewFormData((prev) => ({
      ...prev,
      [field]: value,
    }))
  }

  const canSubmitReview = () => {
    return reviewFormData.name.trim() !== '' && reviewFormData.email.trim() !== ''
  }

  // Check if user has filled out any form data
  const hasFormData = () => {
    // Check if any required or optional fields are filled
    const hasBasicInfo = formData.materialType || formData.materialHardness || formData.sampleSize
    const hasWorkflowInfo = formData.throughput || formData.automation || formData.budget
    const hasAdditionalInfo = formData.sampleShape || formData.surfaceFinish || formData.applications.length > 0
    // Process stages default to 4, so we check if they've been modified (not just defaults)
    const defaultStages = ['sectioning', 'mounting', 'grinding', 'polishing']
    const hasModifiedStages = formData.processStages.length !== defaultStages.length || 
                              !formData.processStages.every(stage => defaultStages.includes(stage))
    
    return hasBasicInfo || hasWorkflowInfo || hasAdditionalInfo || hasModifiedStages
  }

  return (
    <div className="min-h-screen">
      {/* Back Button - Circular icon only */}
      <button
        onClick={handleBack}
        className="fixed top-4 left-4 z-40 w-10 h-10 rounded-full bg-white shadow-lg border border-gray-200 flex items-center justify-center text-gray-700 hover:text-primary-600 hover:bg-gray-50 transition-all focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2"
        aria-label="Go back to previous page"
      >
        <ArrowLeft className="w-5 h-5" />
      </button>

      <div className="py-8">
        <div className="container-custom max-w-5xl mx-auto px-4">
          {/* Simplified Header */}
          <header className="mb-6 text-center">
            <h1 className="text-3xl md:text-4xl font-bold mb-3 text-gray-900">Build Your Lab</h1>
            <p className="text-sm md:text-base text-gray-600 max-w-2xl mx-auto">
              Get personalized equipment and consumable recommendations based on your sample specifications, 
              materials, and workflow requirements.
            </p>
          </header>

          {/* Disclaimer Banner */}
          <div className="mb-4 bg-blue-50 border-l-4 border-blue-400 rounded-lg p-3">
            <div className="flex items-start gap-2">
              <Info className="w-4 h-4 text-blue-600 flex-shrink-0 mt-0.5" />
              <div className="flex-1 min-w-0">
                <p className="text-xs text-blue-800 leading-relaxed">
                  <span className="font-semibold">Work in Progress:</span> This tool is under development. For expert recommendations,{' '}
                  <Link href="/quote" className="font-semibold text-blue-700 underline hover:text-blue-900">
                    request a quote
                  </Link>
                  {' '}or{' '}
                  <button
                    onClick={() => setShowExpertReview(true)}
                    className="font-semibold text-blue-700 underline hover:text-blue-900 bg-transparent border-0 p-0 cursor-pointer"
                  >
                    get expert review
                  </button>
                  .
                </p>
              </div>
            </div>
          </div>

          {/* Progress Steps */}
          <div className="mb-6">
            <div className="flex items-center justify-center space-x-1 sm:space-x-2">
              <div className={`flex flex-col sm:flex-row items-center ${step >= 1 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-8 h-8 sm:w-7 sm:h-7 rounded-full flex items-center justify-center border-2 text-xs ${step >= 1 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 1 ? <CheckCircle2 className="w-4 h-4" /> : <span className="font-semibold text-xs">1</span>}
                </div>
                <span className="mt-1 sm:mt-0 sm:ml-1.5 text-[10px] sm:text-xs font-medium text-center">Sample</span>
              </div>
              <div className={`w-8 sm:w-12 h-0.5 ${step >= 2 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex flex-col sm:flex-row items-center ${step >= 2 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-8 h-8 sm:w-7 sm:h-7 rounded-full flex items-center justify-center border-2 text-xs ${step >= 2 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 2 ? <CheckCircle2 className="w-4 h-4" /> : <span className="font-semibold text-xs">2</span>}
                </div>
                <span className="mt-1 sm:mt-0 sm:ml-1.5 text-[10px] sm:text-xs font-medium text-center">Workflow</span>
              </div>
              <div className={`w-8 sm:w-12 h-0.5 ${step >= 3 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex flex-col sm:flex-row items-center ${step >= 3 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-8 h-8 sm:w-7 sm:h-7 rounded-full flex items-center justify-center border-2 text-xs ${step >= 3 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  <span className="font-semibold text-xs">3</span>
                </div>
                <span className="mt-1 sm:mt-0 sm:ml-1.5 text-[10px] sm:text-xs font-medium text-center">Results</span>
              </div>
            </div>
          </div>

          {/* Step 1: Sample Specifications */}
          {step === 1 && (
            <div id="step-1" className="bg-white rounded-lg shadow-lg p-4 sm:p-6 border border-gray-200">
              <h2 className="text-lg sm:text-xl font-bold mb-4">Sample Specifications</h2>
              
              <div className="space-y-4">
                {/* Material Selection Mode Toggle */}
                <div className="mb-4 p-3 bg-gray-50 rounded-lg border border-gray-200">
                  <label className="block text-xs font-semibold text-gray-700 mb-2">
                    Material Selection <span className="text-red-500">*</span>
                  </label>
                  <div className="flex flex-col sm:flex-row gap-3 sm:gap-4">
                    <label className="flex items-center cursor-pointer p-2 -m-2 rounded-lg hover:bg-gray-100 transition-colors touch-manipulation">
                      <input
                        type="radio"
                        name="materialMode"
                        value="general"
                        checked={materialSelectionMode === 'general'}
                        onChange={() => handleMaterialModeChange('general')}
                        className="mr-2 w-4 h-4 text-primary-600 focus:ring-primary-500"
                      />
                      <span className="text-sm text-gray-700">General Material Type</span>
                    </label>
                    <label className="flex items-center cursor-pointer p-2 -m-2 rounded-lg hover:bg-gray-100 transition-colors touch-manipulation">
                      <input
                        type="radio"
                        name="materialMode"
                        value="specific"
                        checked={materialSelectionMode === 'specific'}
                        onChange={() => handleMaterialModeChange('specific')}
                        className="mr-2 w-4 h-4 text-primary-600 focus:ring-primary-500"
                      />
                      <span className="text-sm text-gray-700">Specific Material</span>
                    </label>
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div className="relative">
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      {materialSelectionMode === 'general' ? 'Material Type' : 'Material'} <span className="text-red-500">*</span>
                    </label>
                    <div className="relative">
                      {materialSelectionMode === 'specific' && materials.length > 0 ? (
                        <>
                          <input
                            type="text"
                            value={formData.materialType || materialSearchQuery}
                            onChange={(e) => {
                              const value = e.target.value
                              setMaterialSearchQuery(value)
                              setShowMaterialDropdown(true)
                              // If user clears, also clear formData
                              if (!value) {
                                handleInputChange('materialType', '')
                              }
                            }}
                            onFocus={() => {
                              setMaterialInputFocused(true)
                              setShowMaterialDropdown(true)
                            }}
                            onBlur={() => {
                              // Delay to allow click on dropdown item
                              setTimeout(() => {
                                setMaterialInputFocused(false)
                                setShowMaterialDropdown(false)
                              }, 200)
                            }}
                            placeholder="Search materials..."
                            className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                          />
                          {formData.materialType && (
                            <button
                              type="button"
                              onClick={() => {
                                handleInputChange('materialType', '')
                                setMaterialSearchQuery('')
                              }}
                              className="absolute right-2 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600"
                              aria-label="Clear selection"
                            >
                              <X className="w-4 h-4" />
                            </button>
                          )}
                          
                          {/* Dropdown */}
                          {(showMaterialDropdown || materialInputFocused) && filteredMaterials.length > 0 && (
                            <div className="absolute z-50 w-full mt-1 bg-white border border-gray-300 rounded-lg shadow-lg max-h-60 overflow-auto">
                              {filteredMaterials.map((material) => (
                                <button
                                  key={material.id}
                                  type="button"
                                  onClick={() => handleMaterialSelect(material)}
                                  className="w-full text-left px-3 py-2 text-sm hover:bg-primary-50 focus:bg-primary-50 focus:outline-none border-b border-gray-100 last:border-b-0"
                                >
                                  <div className="font-medium text-gray-900">{material.name}</div>
                                  {material.category && (
                                    <div className="text-xs text-gray-500 mt-0.5">{material.category}</div>
                                  )}
                                  {material.hardness_category && (
                                    <div className="text-xs text-primary-600 mt-0.5">
                                      Hardness: {material.hardness_category}
                                    </div>
                                  )}
                                </button>
                              ))}
                              {filteredMaterials.length === 20 && materialSearchQuery && (
                                <div className="px-3 py-2 text-xs text-gray-500 border-t border-gray-200">
                                  Showing first 20 results. Continue typing to refine search.
                                </div>
                              )}
                            </div>
                          )}
                        </>
                      ) : (
                    <select
                      value={formData.materialType}
                      onChange={(e) => handleInputChange('materialType', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        !formData.materialType ? 'border-gray-300' : 'border-green-300 bg-green-50'
                      }`}
                    >
                          <option value="">Select material type...</option>
                          {legacyMaterialTypes.map((type) => (
                            <option key={type} value={type}>
                              {type}
                            </option>
                          ))}
                        </select>
                      )}
                    </div>
                    {selectedMaterial && materialSelectionMode === 'specific' && (
                      <div className="mt-2 text-xs text-gray-600">
                        {selectedMaterial.hardness_hrc && (
                          <span className="inline-block mr-3">
                            HRC: {selectedMaterial.hardness_hrc}
                          </span>
                        )}
                        {selectedMaterial.composition && (
                          <span className="text-gray-500">
                            {selectedMaterial.composition}
                          </span>
                        )}
                      </div>
                    )}
                  </div>

                  <div>
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Material Hardness <span className="text-red-500">*</span>
                      {selectedMaterial && materialSelectionMode === 'specific' && formData.materialHardness && (
                        <span className="ml-2 text-xs text-primary-600 font-normal">(Auto-filled from material)</span>
                      )}
                    </label>
                    <select
                      value={formData.materialHardness}
                      onChange={(e) => handleInputChange('materialHardness', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        selectedMaterial && materialSelectionMode === 'specific' && formData.materialHardness
                          ? 'bg-primary-50 border-primary-200'
                          : !formData.materialHardness
                          ? 'border-gray-300'
                          : 'border-green-300 bg-green-50'
                      }`}
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
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Sample Size <span className="text-red-500">*</span>
                    </label>
                    <select
                      value={formData.sampleSize}
                      onChange={(e) => handleInputChange('sampleSize', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        !formData.sampleSize ? 'border-gray-300' : 'border-green-300 bg-green-50'
                      }`}
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
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Sample Shape
                    </label>
                    <select
                      value={formData.sampleShape}
                      onChange={(e) => handleInputChange('sampleShape', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                    >
                      <option value="">Select sample shape...</option>
                      <option value="Regular">Regular (Rectangular/Cylindrical)</option>
                      <option value="Irregular">Irregular/Complex</option>
                      <option value="Thin">Thin Section</option>
                      <option value="Small">Small/Delicate</option>
                    </select>
                  </div>
                </div>

                <div>
                  <label className="block text-xs font-semibold text-gray-700 mb-2">
                    Primary Applications
                  </label>
                  <div className="grid grid-cols-2 md:grid-cols-3 gap-2">
                    {applicationOptions.map((app) => (
                      <label key={app} className="flex items-center space-x-2 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={formData.applications.includes(app)}
                          onChange={() => toggleApplication(app)}
                          className="w-4 h-4 sm:w-3.5 sm:h-3.5 text-primary-600 border-gray-300 rounded focus:ring-primary-600 touch-manipulation"
                        />
                        <span className="text-xs text-gray-700">{app}</span>
                      </label>
                    ))}
                  </div>
                </div>
              </div>

              <div className="mt-6 flex flex-col sm:flex-row justify-end gap-3">
                {!canProceedToStep2() && (
                  <p className="text-xs text-gray-500 flex items-center self-start sm:self-center order-2 sm:order-1">
                    Please complete all required fields to continue
                  </p>
                )}
                <button
                  onClick={() => {
                    if (canProceedToStep2()) {
                      setStep(2)
                      setTimeout(() => {
                        const step2Element = document.getElementById('step-2')
                        if (step2Element) {
                          step2Element.scrollIntoView({ behavior: 'smooth', block: 'start' })
                        }
                      }, 100)
                    }
                  }}
                  disabled={!canProceedToStep2()}
                  className={`px-6 py-3 sm:px-4 sm:py-2 text-sm rounded-full font-semibold transition-all duration-200 flex items-center justify-center gap-2 min-h-[44px] touch-manipulation order-1 sm:order-2 ${
                    canProceedToStep2()
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg active:scale-95'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  <span className="hidden sm:inline">Next: </span>
                  <span>Workflow Requirements</span>
                  <ChevronRight className="w-3.5 h-3.5" />
                </button>
              </div>
            </div>
          )}

          {/* Step 2: Workflow Requirements */}
          {step === 2 && (
            <div id="step-2" className="bg-white rounded-lg shadow-lg p-4 sm:p-6 border border-gray-200">
              <h2 className="text-lg sm:text-xl font-bold mb-4">Workflow Requirements</h2>
              
              <div className="space-y-4">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div>
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Daily Throughput <span className="text-red-500">*</span>
                    </label>
                    <select
                      value={formData.throughput}
                      onChange={(e) => handleInputChange('throughput', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        !formData.throughput ? 'border-gray-300' : 'border-green-300 bg-green-50'
                      }`}
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
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Automation Level <span className="text-red-500">*</span>
                    </label>
                    <select
                      value={formData.automation}
                      onChange={(e) => handleInputChange('automation', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        !formData.automation ? 'border-gray-300' : 'border-green-300 bg-green-50'
                      }`}
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
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Equipment Tier <span className="text-red-500">*</span>
                    </label>
                    <p className="text-xs text-gray-600 mb-2">
                      Select the capability level that matches your needs
                    </p>
                    <select
                      value={formData.budget}
                      onChange={(e) => handleInputChange('budget', e.target.value)}
                      className={`w-full px-3 py-2 text-sm border rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600 transition-colors ${
                        !formData.budget ? 'border-gray-300' : 'border-green-300 bg-green-50'
                      }`}
                    >
                      <option value="">Select equipment tier...</option>
                      {budgetOptions.map((option) => (
                        <option key={option.value} value={option.value} title={option.description}>
                          {option.label} - {option.description}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div>
                    <label className="block text-xs font-semibold text-gray-700 mb-1">
                      Required Surface Finish
                    </label>
                    <select
                      value={formData.surfaceFinish}
                      onChange={(e) => handleInputChange('surfaceFinish', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                    >
                      <option value="">Standard (General metallography)</option>
                      <option value="High Quality">High Quality (Research, failure analysis)</option>
                      <option value="Extremely Flat">Extremely Flat (EBSD, advanced characterization)</option>
                      <option value="EBSD">EBSD Preparation</option>
                    </select>
                    <p className="text-xs text-gray-500 mt-1">
                      Select based on your analysis needs. EBSD and advanced techniques require extremely flat, deformation-free surfaces.
                    </p>
                  </div>
                </div>

                <div>
                  <label className="block text-xs font-semibold text-gray-700 mb-2">
                    Process Stages to Include <span className="text-red-500">*</span>
                  </label>
                  <p className="text-xs text-gray-600 mb-2">
                    Select which parts of the sample preparation and analysis process you need recommendations for.
                  </p>
                  <div className="grid grid-cols-2 md:grid-cols-3 gap-2">
                    {processStageOptions.map((stage) => (
                      <label
                        key={stage.id}
                        className={`flex items-start p-2 border-2 rounded-lg cursor-pointer transition-all duration-200 ${
                          formData.processStages.includes(stage.id)
                            ? 'border-primary-600 bg-primary-50'
                            : 'border-gray-300 bg-white hover:border-gray-400'
                        }`}
                      >
                        <input
                          type="checkbox"
                          checked={formData.processStages.includes(stage.id)}
                          onChange={() => toggleProcessStage(stage.id)}
                          className="mt-0.5 w-4 h-4 sm:w-3.5 sm:h-3.5 text-primary-600 border-gray-300 rounded focus:ring-primary-600 touch-manipulation"
                        />
                        <div className="ml-2 flex-1">
                          <div className="text-xs font-semibold text-gray-900">{stage.label}</div>
                          <div className="text-[10px] text-gray-600 mt-0.5 leading-tight">{stage.description}</div>
                        </div>
                      </label>
                    ))}
                  </div>
                  {formData.processStages.length === 0 && (
                    <p className="text-xs text-red-600 mt-1">
                      Please select at least one process stage.
                    </p>
                  )}
                </div>
              </div>

              <div className="mt-6 flex flex-col sm:flex-row justify-between gap-3">
                <button
                  onClick={() => {
                    setStep(1)
                    setTimeout(() => {
                      const step1Element = document.getElementById('step-1')
                      if (step1Element) {
                        step1Element.scrollIntoView({ behavior: 'smooth', block: 'start' })
                      }
                    }, 100)
                  }}
                  className="px-6 py-3 sm:px-4 sm:py-2 text-sm rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200 flex items-center justify-center gap-2 min-h-[44px] touch-manipulation active:scale-95 order-1"
                >
                  <ArrowLeft className="w-3.5 h-3.5" />
                  <span>Back</span>
                </button>
                {!canGenerateRecommendations() && (
                  <p className="text-xs text-gray-500 flex items-center justify-center text-center px-2 order-2">
                    Please complete all required fields
                  </p>
                )}
                <button
                  onClick={generateRecommendations}
                  disabled={!canGenerateRecommendations() || isGenerating}
                  className={`px-6 py-3 sm:px-4 sm:py-2 text-sm rounded-full font-semibold transition-all duration-200 flex items-center justify-center gap-2 min-h-[44px] touch-manipulation order-3 ${
                    canGenerateRecommendations() && !isGenerating
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg active:scale-95'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  {isGenerating ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin" />
                      <span className="hidden sm:inline">Generating Recommendations...</span>
                      <span className="sm:hidden">Generating...</span>
                    </>
                  ) : (
                    <>
                      <span className="hidden sm:inline">Generate Recommendations</span>
                      <span className="sm:hidden">Generate</span>
                      <ChevronRight className="w-3.5 h-3.5" />
                    </>
                  )}
                </button>
              </div>
            </div>
          )}

          {/* Error Message */}
          {error && (
            <div className="fixed top-16 sm:top-20 left-4 right-4 sm:left-1/2 sm:right-auto sm:transform sm:-translate-x-1/2 z-50 animate-in fade-in slide-in-from-top-2">
              <div className="bg-red-50 border-l-4 border-red-500 text-red-700 px-4 sm:px-6 py-3 sm:py-4 rounded-lg shadow-lg max-w-md mx-auto flex items-start gap-3">
                <AlertCircle className="w-5 h-5 flex-shrink-0 mt-0.5" />
                <div className="flex-1 min-w-0">
                  <p className="font-semibold text-sm sm:text-base">Error</p>
                  <p className="text-xs sm:text-sm break-words">{error}</p>
                </div>
                <button
                  onClick={() => setError(null)}
                  className="text-red-500 hover:text-red-700 flex-shrink-0 p-1 -m-1 touch-manipulation"
                  aria-label="Dismiss error"
                >
                  <X className="w-5 h-5" />
                </button>
              </div>
            </div>
          )}

          {/* Step 3: Recommendations */}
          {step === 3 && recommendations && (
            <div id="recommendations-section" className="space-y-6 sm:space-y-8">
              <div className="bg-white rounded-lg shadow-lg p-4 sm:p-8 border border-gray-200">
                <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4 mb-6">
                  <div className="flex-1">
                    <h2 className="text-xl sm:text-2xl font-bold flex items-center gap-2">
                      <CheckCircle className="w-5 h-5 sm:w-6 sm:h-6 text-green-600 flex-shrink-0" />
                      <span>Your Recommendations</span>
                    </h2>
                    <p className="text-xs sm:text-sm text-gray-600 mt-1">
                      Based on your requirements, here are our recommendations for your laboratory setup.
                    </p>
                  </div>
                  <div className="flex flex-col sm:flex-row gap-2 sm:gap-3 w-full sm:w-auto">
                    <button
                      onClick={() => setShowExpertReview(true)}
                      className="px-4 py-3 sm:py-2 text-sm rounded-full font-semibold bg-primary-600 text-white hover:bg-primary-700 transition-all duration-200 shadow-md hover:shadow-lg min-h-[44px] touch-manipulation active:scale-95"
                    >
                      Get Expert Review
                    </button>
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
        surfaceFinish: '',
        applications: [],
        processStages: ['sectioning', 'mounting', 'grinding', 'polishing'],
      })
                      }}
                      className="px-4 py-3 sm:py-2 text-sm rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200 min-h-[44px] touch-manipulation active:scale-95"
                    >
                      Start Over
                    </button>
                  </div>
                </div>
                <p className="text-gray-600 mb-4">
                  Based on your specifications, here are our recommended equipment and consumables for your lab setup.
                </p>
                <div className="bg-primary-50 border border-primary-200 rounded-lg p-4 mb-6">
                  <p className="text-sm text-gray-700">
                    <strong>Selected Process Stages:</strong> {formData.processStages.map(stage => {
                      const stageOption = processStageOptions.find(opt => opt.id === stage)
                      return stageOption?.label
                    }).filter(Boolean).join(', ')}
                  </p>
                </div>

                {/* Quick Summary - General Equipment & Consumables */}
                <div className="bg-gray-50 border border-gray-200 rounded-lg p-3 sm:p-4 mb-6">
                  <h3 className="text-xs sm:text-sm font-bold text-gray-900 mb-3">Quick Summary</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-3 sm:gap-4">
                    {/* Equipment Summary */}
                    <div>
                      <h4 className="text-xs font-semibold text-gray-700 mb-2 uppercase tracking-wide">Equipment</h4>
                      <ul className="space-y-1">
                        {(() => {
                          const equipmentTypes = new Set<string>()
                          // Collect unique general types from all equipment
                          if (recommendations.sectioning.equipment.length > 0) {
                            recommendations.sectioning.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.mounting.equipment.length > 0) {
                            recommendations.mounting.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.grinding.equipment.length > 0) {
                            recommendations.grinding.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.polishing.equipment.length > 0) {
                            recommendations.polishing.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.microscopy?.equipment && recommendations.microscopy.equipment.length > 0) {
                            recommendations.microscopy.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.hardness?.equipment && recommendations.hardness.equipment.length > 0) {
                            recommendations.hardness.equipment.forEach(item => {
                              if (item.generalType) equipmentTypes.add(item.generalType)
                            })
                          }
                          
                          // Filter: If both manual and semi-automatic grinder-polisher are present, remove manual
                          const equipmentTypesArray = Array.from(equipmentTypes)
                          const hasManual = equipmentTypesArray.some(type => 
                            type.includes('Manual grinder-polisher')
                          )
                          const hasSemiAuto = equipmentTypesArray.some(type => 
                            type.includes('Semi-automatic grinder-polisher')
                          )
                          
                          if (hasManual && hasSemiAuto) {
                            equipmentTypes.delete(Array.from(equipmentTypes).find(type => 
                              type.includes('Manual grinder-polisher')
                            )!)
                          }
                          
                          return Array.from(equipmentTypes).map((type, idx) => (
                            <li key={idx} className="text-xs text-gray-700 flex items-start">
                              <span className="text-gray-400 mr-2">•</span>
                              <span>{type}</span>
                            </li>
                          ))
                        })()}
                      </ul>
                    </div>

                    {/* Consumables Summary */}
                    <div>
                      <h4 className="text-xs font-semibold text-gray-700 mb-2 uppercase tracking-wide">Consumables</h4>
                      <ul className="space-y-1">
                        {(() => {
                          const consumableTypes = new Set<string>()
                          // Collect unique general types from all consumables
                          if (recommendations.sectioning.consumables.length > 0) {
                            recommendations.sectioning.consumables.forEach(item => {
                              if (item.generalType) consumableTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.mounting.consumables.length > 0) {
                            recommendations.mounting.consumables.forEach(item => {
                              if (item.generalType) consumableTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.grinding.consumables.length > 0) {
                            recommendations.grinding.consumables.forEach(item => {
                              if (item.generalType) consumableTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.polishing.consumables.length > 0) {
                            recommendations.polishing.consumables.forEach(item => {
                              if (item.generalType) consumableTypes.add(item.generalType)
                            })
                          }
                          if (recommendations.etching?.consumables && recommendations.etching.consumables.length > 0) {
                            recommendations.etching.consumables.forEach(item => {
                              if (item.generalType) consumableTypes.add(item.generalType)
                            })
                          }
                          return Array.from(consumableTypes).map((type, idx) => (
                            <li key={idx} className="text-xs text-gray-700 flex items-start">
                              <span className="text-gray-400 mr-2">•</span>
                              <span>{type}</span>
                            </li>
                          ))
                        })()}
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

              {/* Sectioning */}
              {(recommendations.sectioning.equipment.length > 0 || recommendations.sectioning.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('sectioning')) {
                        newOpen.delete('sectioning')
                      } else {
                        newOpen.add('sectioning')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Wrench className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Sectioning</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('sectioning') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('sectioning') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  {recommendations.sectioning.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.sectioning.equipment.map((item, idx) => (
                          <div key={idx} className="border-l-4 border-gray-300 p-4 rounded bg-gray-50">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                          <div key={idx} className="bg-gray-50 border-l-4 border-gray-300 p-4 rounded">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                  </div>
                </div>
              )}

              {/* Mounting */}
              {formData.processStages.includes('mounting') && (recommendations.mounting.equipment.length > 0 || recommendations.mounting.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('mounting')) {
                        newOpen.delete('mounting')
                      } else {
                        newOpen.add('mounting')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Package className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Mounting</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('mounting') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('mounting') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  {recommendations.mounting.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.mounting.equipment.map((item, idx) => (
                          <div key={idx} className="border-l-4 border-gray-300 p-4 rounded bg-gray-50">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                          <div key={idx} className="bg-gray-50 border-l-4 border-gray-300 p-4 rounded">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                  </div>
                </div>
              )}

              {/* Grinding */}
              {formData.processStages.includes('grinding') && (recommendations.grinding.equipment.length > 0 || recommendations.grinding.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('grinding')) {
                        newOpen.delete('grinding')
                      } else {
                        newOpen.add('grinding')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Wrench className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Grinding</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('grinding') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('grinding') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  {recommendations.grinding.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.grinding.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-gray-300 p-4 rounded">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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

                  {recommendations.grinding.steps && recommendations.grinding.steps.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Gauge className="w-5 h-5 mr-2 text-primary-600" />
                        Grinding Procedure Steps
                      </h4>
                      <div className="bg-gradient-to-br from-blue-50 to-blue-100 rounded-lg p-4 sm:p-6 border border-blue-200">
                        <p className="text-xs sm:text-sm text-gray-700 mb-4">
                          Follow these general grinding steps for optimal results. Adjust grit sizes and times based on your specific material and equipment.
                        </p>
                        <div className="space-y-4">
                          {recommendations.grinding.steps.map((step, idx) => (
                            <div key={idx} className="bg-white rounded-lg p-4 border border-blue-200">
                              <div className="flex items-start gap-3">
                                <div className="flex-shrink-0 w-8 h-8 bg-primary-600 text-white rounded-full flex items-center justify-center font-bold text-sm">
                                  {step.step}
                                </div>
                                <div className="flex-1">
                                  <h5 className="font-semibold text-gray-900 mb-2">{step.name}</h5>
                                  <p className="text-sm text-gray-600 mb-3">{step.description}</p>
                                  <div className="grid grid-cols-1 md:grid-cols-3 gap-2 text-xs">
                                    {step.grit && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Grit: </span>
                                        <span className="text-gray-600">{step.grit}</span>
                                      </div>
                                    )}
                                    {step.time && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Time: </span>
                                        <span className="text-gray-600">{step.time}</span>
                                      </div>
                                    )}
                                    {step.pressure && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Pressure: </span>
                                        <span className="text-gray-600">{step.pressure}</span>
                                      </div>
                                    )}
                                  </div>
                                  {step.notes && (
                                    <div className="mt-2 pt-2 border-t border-gray-200">
                                      <p className="text-xs text-gray-600 italic">{step.notes}</p>
                                    </div>
                                  )}
                                </div>
                              </div>
                            </div>
                          ))}
                        </div>
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
                          <div key={idx} className="bg-gray-50 border-l-4 border-gray-300 p-4 rounded">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                  </div>
                </div>
              )}

              {/* Polishing */}
              {formData.processStages.includes('polishing') && (recommendations.polishing.equipment.length > 0 || recommendations.polishing.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('polishing')) {
                        newOpen.delete('polishing')
                      } else {
                        newOpen.add('polishing')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Sparkles className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Polishing</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('polishing') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('polishing') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  {recommendations.polishing.steps && recommendations.polishing.steps.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Gauge className="w-5 h-5 mr-2 text-primary-600" />
                        Polishing Procedure Steps
                      </h4>
                      <div className="bg-gradient-to-br from-purple-50 to-purple-100 rounded-lg p-4 sm:p-6 border border-purple-200">
                        <p className="text-xs sm:text-sm text-gray-700 mb-4">
                          Follow these general polishing steps for optimal results. Adjust grit sizes, times, and pressures based on your specific material and equipment.
                        </p>
                        <div className="space-y-4">
                          {recommendations.polishing.steps.map((step, idx) => (
                            <div key={idx} className="bg-white rounded-lg p-4 border border-purple-200">
                              <div className="flex items-start gap-3">
                                <div className="flex-shrink-0 w-8 h-8 bg-primary-600 text-white rounded-full flex items-center justify-center font-bold text-sm">
                                  {step.step}
                                </div>
                                <div className="flex-1">
                                  <h5 className="font-semibold text-gray-900 mb-2">{step.name}</h5>
                                  <p className="text-sm text-gray-600 mb-3">{step.description}</p>
                                  <div className="grid grid-cols-1 md:grid-cols-3 gap-2 text-xs">
                                    {step.grit && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Grit: </span>
                                        <span className="text-gray-600">{step.grit}</span>
                                      </div>
                                    )}
                                    {step.time && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Time: </span>
                                        <span className="text-gray-600">{step.time}</span>
                                      </div>
                                    )}
                                    {step.pressure && (
                                      <div>
                                        <span className="font-semibold text-gray-700">Pressure: </span>
                                        <span className="text-gray-600">{step.pressure}</span>
                                      </div>
                                    )}
                                  </div>
                                  {step.notes && (
                                    <div className="mt-2 pt-2 border-t border-gray-200">
                                      <p className="text-xs text-gray-600 italic">{step.notes}</p>
                                    </div>
                                  )}
                                </div>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    </div>
                  )}

                  {recommendations.polishing.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.polishing.equipment.map((item, idx) => (
                          <div key={idx} className="border-l-4 border-gray-300 p-4 rounded bg-gray-50">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                  </div>
                </div>
              )}

              {/* Etching */}
              {formData.processStages.includes('etching') && recommendations.etching && recommendations.etching.consumables.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('etching')) {
                        newOpen.delete('etching')
                      } else {
                        newOpen.add('etching')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <FlaskConical className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Etching</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('etching') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('etching') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

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
                  </div>
                </div>
              )}

              {/* Microscopy */}
              {formData.processStages.includes('microscopy') && recommendations.microscopy && recommendations.microscopy.equipment.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('microscopy')) {
                        newOpen.delete('microscopy')
                      } else {
                        newOpen.add('microscopy')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Eye className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Microscopy</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('microscopy') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('microscopy') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <Package className="w-5 h-5 mr-2 text-primary-600" />
                      Equipment
                    </h4>
                    <div className="space-y-4">
                        {recommendations.microscopy.equipment.map((item, idx) => (
                          <div key={idx} className="border-l-4 border-gray-300 p-4 rounded bg-gray-50">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                              {item.isPACE && (
                                <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                  PACE Option
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
                  </div>
                </div>
              )}

              {/* Cleaning */}
              {formData.processStages.includes('cleaning') && recommendations.cleaning && recommendations.cleaning.equipment.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('cleaning')) {
                        newOpen.delete('cleaning')
                      } else {
                        newOpen.add('cleaning')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <FlaskConical className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Cleaning</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('cleaning') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('cleaning') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <Package className="w-5 h-5 mr-2 text-primary-600" />
                      Equipment
                    </h4>
                    <div className="space-y-4">
                      {recommendations.cleaning.equipment.map((item, idx) => (
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
                  </div>
                </div>
              )}

              {/* Hardness Testing */}
              {formData.processStages.includes('hardness') && recommendations.hardness && recommendations.hardness.equipment.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg border border-gray-200 overflow-hidden">
                  <button
                    onClick={() => {
                      const newOpen = new Set(openSections)
                      if (newOpen.has('hardness')) {
                        newOpen.delete('hardness')
                      } else {
                        newOpen.add('hardness')
                      }
                      setOpenSections(newOpen)
                    }}
                    className="w-full px-4 sm:px-8 py-4 sm:py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors touch-manipulation active:bg-gray-100"
                  >
                    <div className="flex items-center space-x-3">
                      <Gauge className="w-6 h-6 text-primary-600" />
                      <h3 className="text-2xl font-bold">Hardness Testing</h3>
                    </div>
                    <ChevronDown
                      className={`w-5 h-5 text-gray-500 transition-transform duration-200 ${
                        openSections.has('hardness') ? 'transform rotate-180' : ''
                      }`}
                    />
                  </button>
                  <div
                    className={`overflow-hidden transition-all duration-300 ${
                      openSections.has('hardness') ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
                    }`}
                  >
                    <div className="px-4 sm:px-8 pb-6 sm:pb-8">

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <Package className="w-5 h-5 mr-2 text-primary-600" />
                      Equipment
                    </h4>
                    <div className="space-y-4">
                      {recommendations.hardness.equipment.map((item, idx) => (
                          <div key={idx} className="border-l-4 border-gray-300 p-4 rounded bg-gray-50">
                            {item.generalType && (
                              <div className="mb-3 pb-3 border-b border-gray-200">
                                <p className="text-lg font-bold text-gray-900">{item.generalType}</p>
                              </div>
                            )}
                            <div className="flex items-start justify-between mb-2">
                              <h5 className="text-sm font-medium text-gray-600">{item.name}</h5>
                            {item.isPACE && (
                              <span className="text-xs bg-gray-200 text-gray-600 px-2 py-1 rounded font-semibold ml-2">
                                PACE Option
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
                  </div>
                </div>
              )}

              {/* CTA Section */}
              <div className="bg-primary-600 text-white rounded-lg p-8 text-center">
                <h3 className="text-2xl font-bold mb-4 text-white">Ready to Build Your Lab?</h3>
                <p className="text-white mb-6 max-w-2xl mx-auto opacity-90">
                  Contact our experts for personalized consultation, quotes, and support in setting up your 
                  metallographic laboratory.
                </p>
                <div className="flex flex-col sm:flex-row gap-4 justify-center">
                  <Link
                    href="/quote"
                    className="bg-white text-primary-600 px-6 py-3 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl"
                  >
                    Request Quote
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

      {/* Expert Review Modal - Available on all steps */}
      {showExpertReview && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-lg shadow-xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
              <h3 className="text-xl font-bold text-gray-900">Get Expert Review</h3>
              <button
                onClick={() => {
                  setShowExpertReview(false)
                  setReviewFormData({
                    name: '',
                    email: '',
                    phone: '',
                    company: '',
                    message: '',
                  })
                }}
                className="text-gray-400 hover:text-gray-600"
              >
                <X className="w-6 h-6" />
              </button>
            </div>
            
            <div className="px-6 py-6">
              {!hasFormData() ? (
                <div className="bg-amber-50 border-l-4 border-amber-400 rounded-lg p-4 mb-6">
                  <div className="flex items-start gap-3">
                    <Info className="w-5 h-5 text-amber-600 flex-shrink-0 mt-0.5" />
                    <div>
                      <h4 className="text-sm font-semibold text-amber-900 mb-2">No Form Data Yet</h4>
                      <p className="text-xs sm:text-sm text-amber-800 mb-3">
                        You haven't filled out the lab build form yet. We recommend completing the form first to get personalized recommendations, 
                        then requesting an expert review. This will help our team provide more accurate and tailored advice.
                      </p>
                      <p className="text-xs sm:text-sm text-amber-800">
                        However, you can still submit your contact information below if you'd like to speak with an expert right away.
                      </p>
                    </div>
                  </div>
                </div>
              ) : (
                <p className="text-sm text-gray-600 mb-6">
                  Fill out the form below and we'll generate a pre-filled email with all your lab build information. 
                  You can review and send it directly to our sales team for expert review.
                </p>
              )}
              
              <form onSubmit={(e) => { e.preventDefault(); window.location.href = generateExpertReviewMailto(); }}>
                <div className="space-y-4">
                  <div>
                    <label className="block text-sm font-semibold text-gray-700 mb-1">
                      Name <span className="text-red-500">*</span>
                    </label>
                    <input
                      type="text"
                      value={reviewFormData.name}
                      onChange={(e) => handleReviewFormChange('name', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                      required
                    />
                  </div>
                  
                  <div>
                    <label className="block text-sm font-semibold text-gray-700 mb-1">
                      Email <span className="text-red-500">*</span>
                    </label>
                    <input
                      type="email"
                      value={reviewFormData.email}
                      onChange={(e) => handleReviewFormChange('email', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                      required
                    />
                  </div>
                  
                  <div>
                    <label className="block text-sm font-semibold text-gray-700 mb-1">
                      Phone (Optional)
                    </label>
                    <input
                      type="tel"
                      value={reviewFormData.phone}
                      onChange={(e) => handleReviewFormChange('phone', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                    />
                  </div>
                  
                  <div>
                    <label className="block text-sm font-semibold text-gray-700 mb-1">
                      Company (Optional)
                    </label>
                    <input
                      type="text"
                      value={reviewFormData.company}
                      onChange={(e) => handleReviewFormChange('company', e.target.value)}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                    />
                  </div>
                  
                  <div>
                    <label className="block text-sm font-semibold text-gray-700 mb-1">
                      Additional Message (Optional)
                    </label>
                    <textarea
                      value={reviewFormData.message}
                      onChange={(e) => handleReviewFormChange('message', e.target.value)}
                      rows={4}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                      placeholder="Any specific questions or requirements you'd like to mention..."
                    />
                  </div>
                </div>
                
                <div className="mt-6 flex flex-col sm:flex-row gap-3 justify-end">
                  <button
                    type="button"
                    onClick={() => {
                      setShowExpertReview(false)
                      setReviewFormData({
                        name: '',
                        email: '',
                        phone: '',
                        company: '',
                        message: '',
                      })
                    }}
                    className="px-4 py-2 text-sm rounded-lg font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200"
                  >
                    Cancel
                  </button>
                  <button
                    type="submit"
                    disabled={!canSubmitReview()}
                    className={`px-6 py-2 text-sm rounded-lg font-semibold transition-all duration-200 ${
                      canSubmitReview()
                        ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg'
                        : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                    }`}
                  >
                    Open Email Client
                  </button>
                </div>
              </form>
              
              <div className="mt-4 p-3 bg-blue-50 border border-blue-200 rounded-lg">
                <p className="text-xs text-blue-800">
                  <strong>Note:</strong> Clicking "Open Email Client" will open your default email application with a pre-filled message 
                  {hasFormData() 
                    ? ' containing all your lab build information. You can review and edit the email before sending it to our sales team.'
                    : ' with your contact information. You can add details about your lab build needs in the email before sending it to our sales team.'}
                </p>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Scroll to Top Button */}
      {showScrollTop && (
        <button
          onClick={() => window.scrollTo({ top: 0, behavior: 'smooth' })}
          className="fixed bottom-6 right-4 sm:bottom-8 sm:right-8 z-40 bg-primary-600 text-white p-3 sm:p-3 rounded-full shadow-lg hover:bg-primary-700 transition-all duration-200 hover:scale-110 active:scale-95 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2 touch-manipulation min-w-[44px] min-h-[44px] flex items-center justify-center"
          aria-label="Scroll to top"
        >
          <ArrowUp className="w-5 h-5" />
        </button>
      )}
    </div>
  )
}
