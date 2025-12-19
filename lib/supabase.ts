import { createClient } from '@supabase/supabase-js'
import { createClient as createBrowserClient } from '@/lib/supabase-client'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing Supabase environment variables')
}

// Create singleton client with a unique storage key to avoid conflicts with SSR clients
// This client is primarily for server-side use. Client components should use lib/supabase-client.ts
// Using a unique storage key prevents multiple GoTrueClient instances from conflicting
export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    storageKey: 'supabase-legacy-storage',
  },
})

// Database types
export interface Material {
  id: string
  name: string
  slug?: string | null
  category: string
  hardness?: string | null
  composition: string
  microstructure: string
  heat_treatment?: string | null
  special_notes?: string | null
  common_etchants?: string[] | null
  preparation_notes?: string | null
  
  // Enhanced fields
  alternative_names?: string[] | null
  tags?: string[] | null
  density?: number | null
  melting_point_celsius?: number | null
  hardness_hb?: number | null
  hardness_hrc?: number | null
  hardness_hv?: number | null
  tensile_strength_mpa?: number | null
  yield_strength_mpa?: number | null
  material_type?: string | null
  hardness_category?: 'soft' | 'medium' | 'hard' | 'very-hard' | null
  work_hardening?: boolean | null
  magnetic?: boolean | null
  corrosion_resistance?: 'low' | 'medium' | 'high' | 'excellent' | null
  recommended_grinding_sequence?: string[] | null
  recommended_polishing_sequence?: string[] | null
  sectioning_notes?: string | null
  mounting_notes?: string | null
  grinding_notes?: string | null
  polishing_notes?: string | null
  etching_notes?: string | null
  microstructure_image_url?: string | null
  material_image_url?: string | null
  astm_standards?: string[] | null
  iso_standards?: string[] | null
  related_guide_slugs?: string[] | null
  related_material_ids?: string[] | null
  similar_materials?: string[] | null
  status?: 'draft' | 'published' | 'archived' | null
  view_count?: number | null
  save_count?: number | null
  featured?: boolean | null
  sort_order?: number | null
  detailed_description?: string | null
  applications?: string[] | null
  typical_uses?: string[] | null
  annealing_temperature_celsius?: number | null
  solution_treatment_temp_celsius?: number | null
  aging_temperature_celsius?: number | null
  
  // Time estimates and difficulty (for metallographers)
  preparation_difficulty?: 'easy' | 'medium' | 'hard' | 'expert' | null
  estimated_sectioning_time_minutes?: number | null
  estimated_mounting_time_minutes?: number | null
  estimated_grinding_time_minutes?: number | null
  estimated_polishing_time_minutes?: number | null
  estimated_etching_time_minutes?: number | null
  total_preparation_time_minutes?: number | null
  
  // Troubleshooting and common issues
  common_issues?: string[] | null
  troubleshooting_notes?: string | null
  success_criteria?: string | null
  quality_indicators?: string[] | null
  
  // Material grades and variants
  material_grade?: string | null
  temper_condition?: string | null
  parent_material_id?: string | null
  
  // Enhanced images
  microstructure_images?: any | null // JSONB array of {url, description, magnification, etchant_used}
  preparation_step_images?: any | null // JSONB object with step images
  
  created_at?: string
  updated_at?: string
}

export interface Etchant {
  id: string
  name: string
  slug?: string | null
  alternative_names?: string[] | null
  tags?: string[] | null
  category?: string | null
  composition: string
  concentration?: string | null
  ingredients?: any | null
  application_method?: 'immersion' | 'swabbing' | 'electrolytic' | 'vapor' | 'multiple' | null
  typical_time_seconds?: number | null
  temperature_celsius?: number | null
  voltage?: number | null
  current_density?: number | null
  hazards?: string[] | null
  safety_notes?: string | null
  ppe_required?: string[] | null
  reveals?: string | null
  typical_results?: string | null
  color_effects?: string | null
  compatible_materials?: string[] | null
  incompatible_materials?: string[] | null
  pace_product_available?: boolean | null
  pace_product_slug?: string | null
  pace_product_url?: string | null
  preparation_notes?: string | null
  application_notes?: string | null
  troubleshooting_notes?: string | null
  storage_notes?: string | null
  alternative_etchants?: string[] | null
  similar_etchants?: string[] | null
  astm_references?: string[] | null
  iso_references?: string[] | null
  other_references?: string[] | null
  example_image_url?: string | null
  before_after_image_url?: string | null
  related_material_ids?: string[] | null
  related_etchant_ids?: string[] | null
  status?: 'draft' | 'published' | 'archived' | null
  featured?: boolean | null
  sort_order?: number | null
  view_count?: number | null
  save_count?: number | null
  created_at?: string
  updated_at?: string
}

export interface Standard {
  id: string
  standard: string
  title: string
  description: string
  slug?: string | null
  category: string
  tags?: string[] | null
  organization?: string | null
  scope?: string | null
  key_procedures?: string[] | null
  applicable_materials?: string[] | null
  related_topics?: string[] | null
  official_url?: string | null
  purchase_url?: string | null
  related_standard_ids?: string[] | null
  related_guide_slugs?: string[] | null
  status?: 'draft' | 'published' | 'archived' | null
  featured?: boolean | null
  sort_order?: number | null
  view_count?: number | null
  save_count?: number | null
  created_at?: string
  updated_at?: string
}

// Base Equipment interface (common fields)
export interface Equipment {
  id: string
  name: string
  item_id: string
  slug?: string | null
  description?: string | null
  category: 'sectioning' | 'mounting' | 'grinding-polishing' | 'microscopy' | 'hardness-testing' | 'lab-furniture'
  subcategory?: string | null
  is_pace_product?: boolean | null
  product_url?: string | null
  image_url?: string | null
  images?: Array<{
    url: string
    alt?: string | null
    caption?: string | null
    type?: 'cover' | 'detail' | 'specs' | 'dimensions' | 'other' | null
  }> | null
  suitable_for_material_types?: string[] | null
  suitable_for_hardness?: string[] | null
  suitable_for_sample_sizes?: string[] | null
  suitable_for_sample_shapes?: string[] | null
  suitable_for_throughput?: string[] | null
  suitable_for_applications?: string[] | null
  min_budget_level?: string | null
  tags?: string[] | null
  status?: 'active' | 'discontinued' | 'draft' | null
  sort_order?: number | null
  created_at?: string
  updated_at?: string
}

// Category-specific interfaces
export interface EquipmentSectioning {
  equipment_id: string
  blade_size_mm?: number | null
  blade_size_inches?: number | null
  blade_type?: string | null
  max_cutting_capacity_mm?: number | null
  max_cutting_capacity_inches?: number | null
  automation_level?: 'manual' | 'semi-automated' | 'automated' | null
  cutting_speed_rpm?: number | null
  feed_rate_mm_per_min?: number | null
  cooling_system?: string | null
  sample_holder_type?: string | null
  precision_level?: string | null
  motor_power_watts?: number | null
  dimensions_mm?: Record<string, number> | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

export interface EquipmentMounting {
  equipment_id: string
  mounting_type?: string | null
  max_pressure_psi?: number | null
  max_pressure_mpa?: number | null
  pressure_range_psi?: string | null
  max_temperature_celsius?: number | null
  min_temperature_celsius?: number | null
  heating_capability?: boolean | null
  cooling_capability?: boolean | null
  chamber_size_mm?: Record<string, number> | null
  max_sample_size_mm?: Record<string, number> | null
  vacuum_level_mbar?: number | null
  vacuum_pump_required?: boolean | null
  programmable_cycles?: boolean | null
  digital_controls?: boolean | null
  safety_features?: string[] | null
  power_consumption_watts?: number | null
  dimensions_mm?: Record<string, number> | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

export interface EquipmentGrindingPolishing {
  equipment_id: string
  wheel_size_inches?: number[] | null
  platen_material?: string | null
  number_of_stations?: number | null
  automation_level?: 'manual' | 'semi-automated' | 'automated' | null
  speed_range_rpm?: string | null
  force_range_n?: number[] | null
  programmable_force?: boolean | null
  cooling_system?: string | null
  sample_holder_type?: string | null
  controlled_removal?: boolean | null
  motor_power_watts?: number | null
  dimensions_mm?: Record<string, number> | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

export interface EquipmentMicroscopy {
  equipment_id: string
  microscope_type?: string | null
  magnification_range?: string | null
  objective_lenses?: string[] | null
  eyepiece_magnification?: string | null
  camera_resolution?: string | null
  image_analysis_capable?: boolean | null
  measurement_capabilities?: string[] | null
  illumination_type?: string[] | null
  light_source?: string | null
  motorized_stage?: boolean | null
  z_stack_capability?: boolean | null
  live_measurement?: boolean | null
  dimensions_mm?: Record<string, number> | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

export interface EquipmentHardnessTesting {
  equipment_id: string
  test_methods?: string[] | null
  load_range_n?: number[] | null
  load_range_kgf?: number[] | null
  selectable_loads?: string[] | null
  max_indentation_depth_mm?: number | null
  indenter_types?: string[] | null
  automation_level?: 'manual' | 'semi-automated' | 'automated' | null
  automatic_loading?: boolean | null
  data_export_capabilities?: string[] | null
  measurement_accuracy?: string | null
  digital_display?: boolean | null
  dimensions_mm?: Record<string, number> | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

export interface EquipmentLabFurniture {
  equipment_id: string
  furniture_type?: string | null
  dimensions_mm?: Record<string, number> | null
  work_surface_area_m2?: number | null
  material?: string | null
  surface_material?: string | null
  weight_capacity_kg?: number | null
  storage_capacity?: string | null
  ventilation_required?: boolean | null
  electrical_outlets?: number | null
  drawers?: number | null
  shelves?: number | null
  locking_mechanism?: boolean | null
  safety_features?: string[] | null
  weight_kg?: number | null
  created_at?: string
  updated_at?: string
}

// Combined interfaces for equipment with category-specific data
export type EquipmentWithDetails = Equipment & {
  sectioning?: EquipmentSectioning | null
  mounting?: EquipmentMounting | null
  grinding_polishing?: EquipmentGrindingPolishing | null
  microscopy?: EquipmentMicroscopy | null
  hardness_testing?: EquipmentHardnessTesting | null
  lab_furniture?: EquipmentLabFurniture | null
}

export interface Consumable {
  id: string
  name: string
  item_id: string
  sku?: string | null
  slug?: string | null
  description?: string | null
  category: string
  subcategory?: string | null
  is_pace_product?: boolean | null
  product_url?: string | null
  image_url?: string | null
  list_price?: number | null
  suitable_for_material_types?: string[] | null
  suitable_for_hardness?: string[] | null
  compatible_with_equipment?: string[] | null
  recommended_for_applications?: string[] | null
  tags?: string[] | null
  is_active?: boolean | null
  status?: 'active' | 'discontinued' | 'draft' | null
  sort_order?: number | null
  created_at?: string
  updated_at?: string
}

// Category-specific consumables interfaces
export interface ConsumableSectioning {
  consumable_id: string
  blade_size_mm?: number | null
  blade_size_inches?: number | null
  blade_type?: string | null
  blade_thickness_mm?: number | null
  blade_thickness_inches?: number | null
  arbor_size_mm?: number | null
  arbor_size_inches?: number | null
  grit_size?: string | null
  grit_concentration?: string | null
  material_composition?: string | null
  bond_type?: string | null
  max_speed_rpm?: number | null
  recommended_speed_rpm?: number | null
  cutting_rate_mm_per_min?: number | null
  suitable_for_materials?: string[] | null
  suitable_for_hardness_levels?: string[] | null
  application_notes?: string | null
  fluid_type?: string | null
  volume_ml?: number | null
  volume_oz?: number | null
  anti_corrosion?: boolean | null
  stick_size_mm?: number | null
  stick_size_inches?: number | null
  stick_material?: string | null
  created_at?: string
  updated_at?: string
}

export interface ConsumableMounting {
  consumable_id: string
  mounting_type?: string | null
  resin_type?: string | null
  resin_color?: string | null
  resin_form?: string | null
  weight_kg?: number | null
  weight_lbs?: number | null
  volume_ml?: number | null
  volume_oz?: number | null
  package_size?: string | null
  curing_temperature_celsius?: number | null
  curing_time_minutes?: number | null
  shrinkage_percentage?: number | null
  hardness_shore?: string | null
  edge_retention?: boolean | null
  conductive?: boolean | null
  conductive_material?: string | null
  glass_reinforced?: boolean | null
  transparent?: boolean | null
  release_type?: string | null
  release_form?: string | null
  mold_size_mm?: any | null
  mold_type?: string | null
  mold_material?: string | null
  hardener_type?: string | null
  hardener_ratio?: string | null
  clip_type?: string | null
  clip_size_mm?: any | null
  clip_material?: string | null
  created_at?: string
  updated_at?: string
}

export interface ConsumableGrindingPolishing {
  consumable_id: string
  product_type?: string | null
  size_inches?: number[] | null
  size_mm?: number[] | null
  diameter_mm?: number | null
  diameter_inches?: number | null
  width_mm?: number | null
  width_inches?: number | null
  length_mm?: number | null
  length_inches?: number | null
  thickness_mm?: number | null
  thickness_microns?: number | null
  abrasive_type?: string | null
  grit_size?: string | null
  grit_size_numeric?: number | null
  grit_concentration?: string | null
  diamond_type?: string | null
  diamond_concentration?: string | null
  bond_type?: string | null
  backing_type?: string | null
  backing_material?: string | null
  form?: string | null
  viscosity?: string | null
  suitable_for_materials?: string[] | null
  suitable_for_hardness_levels?: string[] | null
  application_stage?: string | null
  waterproof?: boolean | null
  anti_static?: boolean | null
  electronics_grade?: boolean | null
  deagglomerated?: boolean | null
  quantity_per_package?: number | null
  package_size?: string | null
  weight_kg?: number | null
  weight_lbs?: number | null
  volume_ml?: number | null
  volume_oz?: number | null
  created_at?: string
  updated_at?: string
}

export interface ConsumableEtchants {
  consumable_id: string
  etchant_type?: string | null
  composition?: string | null
  concentration_percentage?: number | null
  suitable_for_materials?: string[] | null
  application_method?: string | null
  application_temperature_celsius?: number | null
  application_time_seconds?: number | null
  hazardous?: boolean | null
  requires_ventilation?: boolean | null
  storage_requirements?: string | null
  volume_ml?: number | null
  volume_oz?: number | null
  package_size?: string | null
  created_at?: string
  updated_at?: string
}

export interface ConsumableCleaning {
  consumable_id: string
  product_type?: string | null
  cleaning_method?: string | null
  solvent_type?: string | null
  ph_level?: number | null
  biodegradable?: boolean | null
  suitable_for_materials?: string[] | null
  removes?: string[] | null
  volume_ml?: number | null
  volume_oz?: number | null
  package_size?: string | null
  created_at?: string
  updated_at?: string
}

export interface ConsumableHardnessTesting {
  consumable_id: string
  product_type?: string | null
  test_type?: string | null
  indenter_type?: string | null
  indenter_shape?: string | null
  indenter_angle_degrees?: number | null
  ball_diameter_mm?: number | null
  anvil_type?: string | null
  anvil_material?: string | null
  anvil_size_mm?: any | null
  block_material?: string | null
  block_hardness_value?: number | null
  block_hardness_scale?: string | null
  block_certification?: string | null
  calibration_standard?: boolean | null
  certification_level?: string | null
  created_at?: string
  updated_at?: string
}

// Combined interface for consumables with category-specific data
export type ConsumableWithDetails = Consumable & {
  sectioning?: ConsumableSectioning | null
  mounting?: ConsumableMounting | null
  grinding_polishing?: ConsumableGrindingPolishing | null
  etchants?: ConsumableEtchants | null
  cleaning?: ConsumableCleaning | null
  hardness_testing?: ConsumableHardnessTesting | null
}

export interface SubcategoryMetadata {
  id: string
  entity_type: 'equipment' | 'consumables'
  category: string
  subcategory_key: string
  subcategory_label: string
  display_order?: number | null
  description?: string | null
  cover_image_url?: string | null
  meta_title?: string | null
  meta_description?: string | null
  featured_equipment_id?: string | null
  is_active?: boolean | null
  created_at?: string
  updated_at?: string
}

export interface BlogPost {
  id: string
  title: string
  slug: string
  excerpt: string
  content: string
  category: string
  tags?: string[] | null
  image?: string | null
  author?: string | null
  read_time?: string | null
  status?: 'draft' | 'published' | 'archived' | null
  featured?: boolean | null
  sort_order?: number | null
  view_count?: number | null
  published_at?: string | null
  created_at?: string
  updated_at?: string
  created_by?: string | null
  updated_by?: string | null
}

export interface MaterialInsert {
  name: string
  category: string
  hardness?: string | null
  composition: string
  microstructure: string
  heat_treatment?: string | null
  special_notes?: string | null
  common_etchants?: string[] | null
  preparation_notes?: string | null
}

export interface MaterialUpdate extends Partial<MaterialInsert> {}

// Junction table for material-etchant relationships
export interface MaterialEtchant {
  id: string
  material_id: string
  etchant_id: string
  is_primary?: boolean | null
  is_alternative?: boolean | null
  recommended_for?: string | null
  typical_results?: string | null
  application_notes?: string | null
  usage_frequency?: 'common' | 'occasional' | 'rare' | null
  effectiveness_rating?: number | null
  sort_order?: number | null
  created_at?: string
  updated_at?: string
}

// Helper functions
export async function getAllMaterials(): Promise<Material[]> {
  const { data, error } = await supabase
    .from('materials')
    .select('*')
    .order('name')

  if (error) {
    console.error('Error fetching materials:', error)
    throw error
  }

  return data || []
}

export async function getMaterialById(id: string): Promise<Material | null> {
  const { data, error } = await supabase
    .from('materials')
    .select('*')
    .eq('id', id)
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      // No rows returned
      return null
    }
    console.error('Error fetching material:', error)
    throw error
  }

  return data
}

export async function getMaterialBySlug(slug: string): Promise<Material | null> {
  const { data, error } = await supabase
    .from('materials')
    .select('*')
    .eq('slug', slug)
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      // No rows returned
      return null
    }
    console.error('Error fetching material by slug:', error)
    throw error
  }

  return data
}

export async function getMaterialsByCategory(category: string): Promise<Material[]> {
  const { data, error } = await supabase
    .from('materials')
    .select('*')
    .eq('category', category)
    .order('name')

  if (error) {
    console.error('Error fetching materials by category:', error)
    throw error
  }

  return data || []
}

export async function searchMaterials(query: string): Promise<Material[]> {
  const searchTerm = `%${query}%`
  
  const { data, error } = await supabase
    .from('materials')
    .select('*')
    .or(`name.ilike.${searchTerm},category.ilike.${searchTerm},composition.ilike.${searchTerm},microstructure.ilike.${searchTerm}`)
    .order('name')

  if (error) {
    console.error('Error searching materials:', error)
    throw error
  }

  return data || []
}

// Etchant functions
export async function getAllEtchants(): Promise<Etchant[]> {
  const { data, error } = await supabase
    .from('etchants')
    .select('*')
    .eq('status', 'published')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching etchants:', error)
    throw error
  }

  return data || []
}

export async function getEtchantBySlug(slug: string): Promise<Etchant | null> {
  const { data, error } = await supabase
    .from('etchants')
    .select('*')
    .eq('slug', slug)
    .eq('status', 'published')
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching etchant by slug:', error)
    throw error
  }

  return data
}

export async function getEtchantsByCategory(category: string): Promise<Etchant[]> {
  const { data, error } = await supabase
    .from('etchants')
    .select('*')
    .eq('category', category)
    .eq('status', 'published')
    .order('name')

  if (error) {
    console.error('Error fetching etchants by category:', error)
    throw error
  }

  return data || []
}

export async function searchEtchants(query: string): Promise<Etchant[]> {
  const searchTerm = `%${query}%`
  
  const { data, error } = await supabase
    .from('etchants')
    .select('*')
    .eq('status', 'published')
    .or(`name.ilike.${searchTerm},composition.ilike.${searchTerm},reveals.ilike.${searchTerm}`)
    .order('name')

  if (error) {
    console.error('Error searching etchants:', error)
    throw error
  }

  return data || []
}

// Helper function to get etchants compatible with a material category
export async function getEtchantsForMaterialCategory(materialCategory: string): Promise<Etchant[]> {
  const { data, error } = await supabase
    .from('etchants')
    .select('*')
    .eq('status', 'published')
    .contains('compatible_materials', [materialCategory])
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching etchants for material category:', error)
    // Fallback: fetch all and filter in memory
    const allEtchants = await getAllEtchants()
    return allEtchants.filter(e => 
      e.compatible_materials?.includes(materialCategory)
    )
  }

  return data || []
}

// Helper function to get PACE product URL
export function getPaceProductUrl(etchant: Etchant): string | null {
  if (!etchant.pace_product_available || !etchant.pace_product_slug) {
    return null
  }
  
  if (etchant.pace_product_url) {
    return etchant.pace_product_url
  }
  
  return `https://shop.metallographic.com/collections/etchants/products/${etchant.pace_product_slug}`
}

// Standard functions
export async function getAllStandards(): Promise<Standard[]> {
  const { data, error } = await supabase
    .from('standards')
    .select('*')
    .eq('status', 'published')
    .order('sort_order', { ascending: true })
    .order('standard', { ascending: true })

  if (error) {
    console.error('Error fetching standards:', error)
    throw error
  }

  return data || []
}

export async function getStandardBySlug(slug: string): Promise<Standard | null> {
  const { data, error } = await supabase
    .from('standards')
    .select('*')
    .eq('slug', slug)
    .eq('status', 'published')
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching standard by slug:', error)
    throw error
  }

  return data
}

export async function getStandardsByCategory(category: string): Promise<Standard[]> {
  const { data, error } = await supabase
    .from('standards')
    .select('*')
    .eq('category', category)
    .eq('status', 'published')
    .order('sort_order', { ascending: true })
    .order('standard', { ascending: true })

  if (error) {
    console.error('Error fetching standards by category:', error)
    throw error
  }

  return data || []
}

export async function getStandardsByOrganization(organization: string): Promise<Standard[]> {
  const { data, error } = await supabase
    .from('standards')
    .select('*')
    .eq('organization', organization)
    .eq('status', 'published')
    .order('sort_order', { ascending: true })
    .order('standard', { ascending: true })

  if (error) {
    console.error('Error fetching standards by organization:', error)
    throw error
  }

  return data || []
}

export async function searchStandards(query: string): Promise<Standard[]> {
  const searchTerm = `%${query}%`
  
  const { data, error } = await supabase
    .from('standards')
    .select('*')
    .eq('status', 'published')
    .or(`standard.ilike.${searchTerm},title.ilike.${searchTerm},description.ilike.${searchTerm}`)
    .order('sort_order', { ascending: true })
    .order('standard', { ascending: true })

  if (error) {
    console.error('Error searching standards:', error)
    throw error
  }

  return data || []
}

// Material-Echant relationship functions
export async function getEtchantsForMaterial(materialId: string): Promise<Etchant[]> {
  const { data, error } = await supabase
    .from('material_etchants')
    .select(`
      etchant_id,
      is_primary,
      recommended_for,
      typical_results,
      effectiveness_rating,
      etchants (*)
    `)
    .eq('material_id', materialId)
    .order('is_primary', { ascending: false })
    .order('sort_order', { ascending: true })

  if (error) {
    console.error('Error fetching etchants for material:', error)
    throw error
  }

  // Extract etchants from the joined data
  return data?.map((item: any) => item.etchants).filter(Boolean) || []
}

export async function getMaterialsForEtchant(etchantId: string): Promise<Material[]> {
  const { data, error } = await supabase
    .from('material_etchants')
    .select(`
      material_id,
      is_primary,
      recommended_for,
      materials (*)
    `)
    .eq('etchant_id', etchantId)
    .order('is_primary', { ascending: false })
    .order('sort_order', { ascending: true })

  if (error) {
    console.error('Error fetching materials for etchant:', error)
    throw error
  }

  // Extract materials from the joined data
  return data?.map((item: any) => item.materials).filter(Boolean) || []
}

export async function getMaterialEtchantRelationship(materialId: string, etchantId: string): Promise<MaterialEtchant | null> {
  const { data, error } = await supabase
    .from('material_etchants')
    .select('*')
    .eq('material_id', materialId)
    .eq('etchant_id', etchantId)
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching material-etchant relationship:', error)
    throw error
  }

  return data
}

// Equipment functions
export async function getEquipmentByCategory(category: string): Promise<Equipment[]> {
  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .eq('category', category)
    .eq('status', 'active')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching equipment by category:', error)
    throw error
  }

  return data || []
}

export async function getEquipmentByCategoryAndSubcategory(
  category: string,
  subcategory: string
): Promise<Equipment[]> {
  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .eq('category', category)
    .eq('subcategory', subcategory)
    .eq('status', 'active')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching equipment by category and subcategory:', error)
    throw error
  }

  return data || []
}

export async function getAllEquipment(): Promise<Equipment[]> {
  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .eq('status', 'active')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching all equipment:', error)
    throw error
  }

  return data || []
}

export async function getEquipmentByItemId(itemId: string): Promise<Equipment | null> {
  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .eq('item_id', itemId)
    .eq('status', 'active')
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching equipment by item_id:', error)
    throw error
  }

  return data
}

// Consumable functions
export async function getConsumablesByCategory(category: string): Promise<Consumable[]> {
  // Map navigation category to database categories and subcategories
  let dbCategories: string[] = []
  let subcategoryFilter: string[] | null = null
  
  if (category === 'sectioning') {
    dbCategories = ['sectioning']
  } else if (category === 'mounting') {
    dbCategories = ['mounting']
  } else if (category === 'grinding-lapping') {
    dbCategories = ['grinding-lapping']
  } else if (category === 'polishing') {
    dbCategories = ['polishing']
  } else if (category === 'etching') {
    dbCategories = ['etching', 'etchants']
  } else if (category === 'cleaning') {
    dbCategories = ['cleaning']
  } else if (category === 'hardness-testing') {
    dbCategories = ['hardness-testing', 'hardness', 'hardness testing']
  } else {
    dbCategories = [category]
  }

  let query = supabase
    .from('consumables')
    .select('*')
    .in('category', dbCategories)
    .eq('status', 'active')
    .eq('is_active', true)

  // Apply subcategory filter if needed
  if (subcategoryFilter) {
    query = query.in('subcategory', subcategoryFilter)
  }

  const { data, error } = await query
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching consumables by category:', error)
    throw error
  }

  return data || []
}

export async function getConsumablesByCategoryAndSubcategory(
  category: string,
  subcategory: string
): Promise<Consumable[]> {
  const { data, error } = await supabase
    .from('consumables')
    .select('*')
    .eq('category', category)
    .eq('subcategory', subcategory)
    .eq('status', 'active')
    .eq('is_active', true)
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching consumables by category and subcategory:', error)
    throw error
  }

  return data || []
}

export async function getAllConsumables(): Promise<Consumable[]> {
  const { data, error } = await supabase
    .from('consumables')
    .select('*')
    .eq('status', 'active')
    .eq('is_active', true)
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching all consumables:', error)
    throw error
  }

  return data || []
}

export async function getConsumablesByItemId(itemId: string): Promise<Consumable | null> {
  const { data, error } = await supabase
    .from('consumables')
    .select('*')
    .eq('item_id', itemId)
    .eq('status', 'active')
    .eq('is_active', true)
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching consumable by item_id:', error)
    throw error
  }

  return data
}

// Subcategory Metadata functions
export async function getSubcategoriesForCategory(
  category: string,
  entityType: 'equipment' | 'consumables'
): Promise<SubcategoryMetadata[]> {
  // Use browser client for client-side calls (all current usages are from client components)
  const client = createBrowserClient()
  
  // Map navigation category to database categories for metadata lookup
  let dbCategories: string[] = [category]
  if (category === 'etching') {
    dbCategories = ['etching', 'etchants']
  } else if (category === 'hardness-testing') {
    dbCategories = ['hardness-testing', 'hardness', 'hardness testing']
  }
  
  const { data, error } = await client
    .from('subcategory_metadata')
    .select('*')
    .eq('entity_type', entityType)
    .in('category', dbCategories)
    .eq('is_active', true)
    .order('display_order', { ascending: true })
    .order('subcategory_label', { ascending: true })

  if (error) {
    console.error('Error fetching subcategories:', error)
    throw error
  }

  return data || []
}

export async function getSubcategoryMetadata(
  category: string,
  subcategoryKey: string,
  entityType: 'equipment' | 'consumables'
): Promise<SubcategoryMetadata | null> {
  // Use browser client for client-side calls (all current usages are from client components)
  const client = createBrowserClient()
  
  const { data, error } = await client
    .from('subcategory_metadata')
    .select('*')
    .eq('entity_type', entityType)
    .eq('category', category)
    .eq('subcategory_key', subcategoryKey)
    .eq('is_active', true)
    .single()

  if (error) {
    if (error.code === 'PGRST116') {
      return null
    }
    console.error('Error fetching subcategory metadata:', error)
    throw error
  }

  return data
}

// Equipment by subcategory
export async function getEquipmentBySubcategory(
  category: string,
  subcategory: string
): Promise<Equipment[]> {
  // Map navigation category to database categories
  let dbCategories: string[] = []
  if (category === 'sectioning') dbCategories = ['sectioning']
  else if (category === 'mounting') dbCategories = ['mounting']
  else if (category === 'grinding-polishing') dbCategories = ['grinding', 'polishing']
  else if (category === 'microscopy') dbCategories = ['microscopy']
  else if (category === 'hardness-testing') dbCategories = ['hardness']
  else if (category === 'lab-furniture') dbCategories = ['cleaning', 'lab-furniture']

  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .in('category', dbCategories)
    .eq('subcategory', subcategory)
    .eq('status', 'active')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching equipment by subcategory:', error)
    throw error
  }

  return data || []
}

export async function getFeaturedEquipmentBySubcategory(
  category: string,
  subcategory: string,
  limit: number = 6
): Promise<Equipment[]> {
  // Map navigation category to database categories
  let dbCategories: string[] = []
  if (category === 'sectioning') dbCategories = ['sectioning']
  else if (category === 'mounting') dbCategories = ['mounting']
  else if (category === 'grinding-polishing') dbCategories = ['grinding', 'polishing']
  else if (category === 'microscopy') dbCategories = ['microscopy']
  else if (category === 'hardness-testing') dbCategories = ['hardness']
  else if (category === 'lab-furniture') dbCategories = ['cleaning', 'lab-furniture']

  const { data, error } = await supabase
    .from('equipment')
    .select('*')
    .in('category', dbCategories)
    .eq('subcategory', subcategory)
    .eq('status', 'active')
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })
    .limit(limit)

  if (error) {
    console.error('Error fetching featured equipment:', error)
    throw error
  }

  return data || []
}

// Consumables by subcategory - uses subcategory field from consumables table
export async function getConsumablesBySubcategory(
  category: string,
  subcategory: string
): Promise<Consumable[]> {
  // Map navigation category to database categories
  let dbCategories: string[] = []
  if (category === 'sectioning') dbCategories = ['sectioning']
  else if (category === 'mounting') dbCategories = ['mounting']
  else if (category === 'grinding-lapping') dbCategories = ['grinding-lapping']
  else if (category === 'polishing') dbCategories = ['polishing']
  else if (category === 'etching') dbCategories = ['etching', 'etchants']
  else if (category === 'cleaning') dbCategories = ['cleaning']
  else if (category === 'hardness-testing') dbCategories = ['hardness-testing', 'hardness', 'hardness testing']

  // Build query
  let query = supabase
    .from('consumables')
    .select('*')
    .in('category', dbCategories)
    .eq('status', 'active')
    .eq('is_active', true)

  // Map URL slug to database subcategory values
  // URL slugs are created from subcategory names (e.g., "Abrasive Blades" -> "abrasive-blades")
  // We need to convert the slug back to match the actual database subcategory values
  
  // Convert slug to potential subcategory name (e.g., "abrasive-blades" -> "Abrasive Blades")
  const slugToSubcategory = (slug: string): string => {
    return slug
      .split('-')
      .map(word => word.charAt(0).toUpperCase() + word.slice(1))
      .join(' ')
  }
  
  // For sectioning, we have specific mappings
  if (category === 'sectioning') {
    const subcategoryMap: Record<string, string> = {
      'abrasive-blades': 'Abrasive Blades',
      'wafering-blades': 'Wafering Blades',
      'cutting-fluids': 'Cutting Fluids',
      'dressing-sticks': 'Dressing Sticks'
    }
    const dbSubcategory = subcategoryMap[subcategory] || slugToSubcategory(subcategory)
    // Use exact match (case-insensitive) to ensure we only get this specific subcategory
    query = query.eq('subcategory', dbSubcategory)
  } else if (category === 'mounting') {
    const subcategoryMap: Record<string, string> = {
      'compression-mounting': 'Compression Mounting',
      'castable-mounting': 'Castable Mounting'
    }
    const dbSubcategory = subcategoryMap[subcategory] || slugToSubcategory(subcategory)
    query = query.eq('subcategory', dbSubcategory)
  } else if (category === 'grinding-lapping') {
    const subcategoryMap: Record<string, string> = {
      'grinding-papers': 'Grinding Papers',
      'grinding-powders': 'Grinding Powders',
      'lapping-films': 'Lapping Films',
      'grinding-belts': 'Abrasive Belts',
      'grinding-rolls': 'Grinding Rolls'
    }
    const dbSubcategory = subcategoryMap[subcategory] || slugToSubcategory(subcategory)
    query = query.eq('subcategory', dbSubcategory)
  } else if (category === 'polishing') {
    const subcategoryMap: Record<string, string> = {
      'rough-polishing': 'rough',
      'rough': 'rough',
      'diamond-paste': 'rough',
      'final-polishing': 'final',
      'final': 'final'
    }
    const dbSubcategory = subcategoryMap[subcategory] || slugToSubcategory(subcategory)
    
    // Special handling for diamond-paste: filter for items that are specifically diamond pastes
    // After migration, items should have subcategory 'rough' and contain "paste" in name/description
    if (subcategory === 'diamond-paste') {
      // Filter for subcategory 'rough' AND items with "paste" in name or description
      // Also include items with old subcategory names for backward compatibility
      query = query
        .or('subcategory.eq.rough,subcategory.ilike.%Polycrystalline Diamond Paste%,subcategory.ilike.%Monocrystalline Diamond Paste%')
        .or('name.ilike.%paste%,description.ilike.%paste%')
    } else {
      query = query.eq('subcategory', dbSubcategory)
    }
  } else {
    // For other categories, convert slug to subcategory name and match exactly
    const dbSubcategory = slugToSubcategory(subcategory)
    query = query.eq('subcategory', dbSubcategory)
  }

  const { data, error } = await query
    .order('sort_order', { ascending: true })
    .order('name', { ascending: true })

  if (error) {
    console.error('Error fetching consumables by subcategory:', error)
    throw error
  }

  return data || []
}

export async function getFeaturedConsumablesBySubcategory(
  category: string,
  subcategory: string,
  limit: number = 6
): Promise<Consumable[]> {
  // Use the same logic as getConsumablesBySubcategory but with limit
  const allConsumables = await getConsumablesBySubcategory(category, subcategory)
  return allConsumables.slice(0, limit)
}

// Smart recommendation functions that use suitability attributes
export async function getRecommendedEquipment(params: {
  category: string
  materialType?: string
  hardness?: string
  sampleSize?: string
  sampleShape?: string
  throughput?: string
  automation?: string
  budget?: string
  applications?: string[]
}): Promise<Equipment[]> {
  let query = supabase
    .from('equipment')
    .select('*')
    .eq('category', params.category)
    .eq('status', 'active')

  // Filter by automation level if specified
  if (params.automation) {
    const automationMap: Record<string, string> = {
      'Fully Manual': 'manual',
      'Semi-Automated': 'semi-automated',
      'Fully Automated': 'automated',
    }
    const automationLevel = automationMap[params.automation] || params.automation.toLowerCase().replace('fully-', '')
    if (automationLevel === 'manual' || automationLevel === 'semi-automated' || automationLevel === 'automated') {
      query = query.eq('automation_level', automationLevel)
    }
  }

  const { data, error } = await query.order('sort_order', { ascending: true }).order('name', { ascending: true })

  if (error) {
    console.error('Error fetching recommended equipment:', error)
    throw error
  }

  if (!data) return []

  // Filter by suitability attributes in memory (but be lenient - only exclude if explicitly incompatible)
  return data.filter((eq: Equipment) => {
    // Check material type suitability (only exclude if equipment has restrictions and doesn't match)
    if (params.materialType && eq.suitable_for_material_types && eq.suitable_for_material_types.length > 0) {
      const materialMatch = eq.suitable_for_material_types.some((mt: string) => {
        const mtLower = params.materialType!.toLowerCase()
        return mtLower.includes(mt.toLowerCase()) || mt.toLowerCase().includes(mtLower)
      })
      // Only exclude if there are restrictions and none match
      if (!materialMatch) return false
    }
    // If equipment has no material type restrictions, include it

    // Check hardness suitability (only exclude if equipment has restrictions and doesn't match)
    if (params.hardness && eq.suitable_for_hardness && eq.suitable_for_hardness.length > 0) {
      const hardnessMap: Record<string, string> = {
        'Soft (< 30 HRC)': 'soft',
        'Medium (30-50 HRC)': 'medium',
        'Hard (50-65 HRC)': 'hard',
        'Very Hard (> 65 HRC)': 'very-hard',
      }
      const hardnessLevel = hardnessMap[params.hardness] || params.hardness.toLowerCase()
      // Only exclude if there are restrictions and none match
      if (!eq.suitable_for_hardness.includes(hardnessLevel)) return false
    }
    // If equipment has no hardness restrictions, include it

    // Check sample size suitability (only exclude if equipment has restrictions and doesn't match)
    if (params.sampleSize && eq.suitable_for_sample_sizes && eq.suitable_for_sample_sizes.length > 0) {
      const sizeMap: Record<string, string> = {
        'Small (< 25mm)': 'small',
        'Medium (25-50mm)': 'medium',
        'Large (50-100mm)': 'large',
        'Very Large (> 100mm)': 'very-large',
      }
      const sizeLevel = sizeMap[params.sampleSize] || params.sampleSize.toLowerCase()
      // Only exclude if there are restrictions and none match
      if (!eq.suitable_for_sample_sizes.includes(sizeLevel)) return false
    }
    // If equipment has no sample size restrictions, include it

    // Check throughput suitability (only exclude if equipment has restrictions and doesn't match)
    if (params.throughput && eq.suitable_for_throughput && eq.suitable_for_throughput.length > 0) {
      const throughputMap: Record<string, string> = {
        'Low (1-10 samples/day)': 'low',
        'Medium (10-50 samples/day)': 'medium',
        'High (50-200 samples/day)': 'high',
        'Very High (> 200 samples/day)': 'very-high',
      }
      const throughputLevel = throughputMap[params.throughput] || params.throughput.toLowerCase()
      // Only exclude if there are restrictions and none match
      if (!eq.suitable_for_throughput.includes(throughputLevel)) return false
    }
    // If equipment has no throughput restrictions, include it

    return true
  })
}

export async function getRecommendedConsumables(params: {
  category: string
  materialType?: string
  hardness?: string
  compatibleEquipment?: string[]
}): Promise<Consumable[]> {
  let query = supabase
    .from('consumables')
    .select('*')
    .eq('category', params.category)
    .eq('status', 'active')
    .eq('is_active', true)

  const { data, error } = await query.order('sort_order', { ascending: true }).order('name', { ascending: true })

  if (error) {
    console.error('Error fetching recommended consumables:', error)
    throw error
  }

  if (!data) return []

  // Filter by suitability attributes in memory
  return data.filter((cons: Consumable) => {
    // Check material type suitability
    if (params.materialType && cons.suitable_for_material_types && cons.suitable_for_material_types.length > 0) {
      const materialMatch = cons.suitable_for_material_types.some((mt: string) => {
        const mtLower = params.materialType!.toLowerCase()
        return mtLower.includes(mt.toLowerCase()) || mt.toLowerCase().includes(mtLower)
      })
      if (!materialMatch) return false
    }

    // Check hardness suitability
    if (params.hardness && cons.suitable_for_hardness && cons.suitable_for_hardness.length > 0) {
      const hardnessMap: Record<string, string> = {
        'Soft (< 30 HRC)': 'soft',
        'Medium (30-50 HRC)': 'medium',
        'Hard (50-65 HRC)': 'hard',
        'Very Hard (> 65 HRC)': 'very-hard',
      }
      const hardnessLevel = hardnessMap[params.hardness] || params.hardness.toLowerCase()
      if (!cons.suitable_for_hardness.includes(hardnessLevel)) return false
    }

    // Check equipment compatibility
    if (params.compatibleEquipment && cons.compatible_with_equipment && cons.compatible_with_equipment.length > 0) {
      const hasCompatible = params.compatibleEquipment.some((eqId: string) =>
        cons.compatible_with_equipment!.includes(eqId)
      )
      if (!hasCompatible) return false
    }

    return true
  })
}

// Blog Post functions
export async function getAllBlogPosts(status?: 'draft' | 'published' | 'archived'): Promise<BlogPost[]> {
  try {
    let query = supabase
      .from('blog_posts')
      .select('*')
      .order('published_at', { ascending: false, nullsFirst: false })
      .order('created_at', { ascending: false })

    if (status) {
      query = query.eq('status', status)
    }

    const { data, error } = await query

    if (error) {
      // If table doesn't exist, return empty array instead of throwing
      if (error.code === '42P01' || error.message?.includes('does not exist') || error.message?.includes('relation')) {
        console.warn('Blog posts table does not exist yet. Please run the migration.')
        return []
      }
      console.error('Error fetching blog posts:', error)
      throw error
    }

    return data || []
  } catch (error: any) {
    // Handle any other errors gracefully
    if (error?.code === '42P01' || error?.message?.includes('does not exist') || error?.message?.includes('relation')) {
      console.warn('Blog posts table does not exist yet. Please run the migration.')
      return []
    }
    throw error
  }
}

export async function getPublishedBlogPosts(): Promise<BlogPost[]> {
  return getAllBlogPosts('published')
}

export async function getBlogPostBySlug(slug: string): Promise<BlogPost | null> {
  try {
    const { data, error } = await supabase
      .from('blog_posts')
      .select('*')
      .eq('slug', slug)
      .single()

    if (error) {
      if (error.code === 'PGRST116') {
        return null
      }
      // If table doesn't exist, return null instead of throwing
      if (error.code === '42P01' || error.message?.includes('does not exist') || error.message?.includes('relation')) {
        console.warn('Blog posts table does not exist yet. Please run the migration.')
        return null
      }
      console.error('Error fetching blog post by slug:', error)
      throw error
    }

    return data
  } catch (error: any) {
    // Handle any other errors gracefully
    if (error?.code === '42P01' || error?.message?.includes('does not exist') || error?.message?.includes('relation')) {
      console.warn('Blog posts table does not exist yet. Please run the migration.')
      return null
    }
    throw error
  }
}

export async function getBlogPostsByCategory(category: string): Promise<BlogPost[]> {
  const { data, error } = await supabase
    .from('blog_posts')
    .select('*')
    .eq('category', category)
    .eq('status', 'published')
    .order('published_at', { ascending: false })
    .order('created_at', { ascending: false })

  if (error) {
    console.error('Error fetching blog posts by category:', error)
    throw error
  }

  return data || []
}

export async function getBlogPostsByTag(tag: string): Promise<BlogPost[]> {
  const { data, error } = await supabase
    .from('blog_posts')
    .select('*')
    .eq('status', 'published')
    .contains('tags', [tag])
    .order('published_at', { ascending: false })
    .order('created_at', { ascending: false })

  if (error) {
    console.error('Error fetching blog posts by tag:', error)
    throw error
  }

  return data || []
}

export async function searchBlogPosts(query: string): Promise<BlogPost[]> {
  const searchTerm = `%${query}%`
  
  const { data, error } = await supabase
    .from('blog_posts')
    .select('*')
    .eq('status', 'published')
    .or(`title.ilike.${searchTerm},excerpt.ilike.${searchTerm},content.ilike.${searchTerm}`)
    .order('published_at', { ascending: false })
    .order('created_at', { ascending: false })

  if (error) {
    console.error('Error searching blog posts:', error)
    throw error
  }

  return data || []
}

