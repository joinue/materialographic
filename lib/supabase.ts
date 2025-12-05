import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing Supabase environment variables')
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

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

