/**
 * Migration script to move materials from data/materials.ts to Supabase
 * 
 * Run this once to populate your Supabase database with initial materials.
 * 
 * Usage:
 * 1. Set up your Supabase project and get your URL and anon key
 * 2. Add them to .env.local:
 *    NEXT_PUBLIC_SUPABASE_URL=your_url
 *    NEXT_PUBLIC_SUPABASE_ANON_KEY=your_key
 * 3. Run: npx tsx scripts/migrate-materials-to-supabase.ts
 */

import { createClient } from '@supabase/supabase-js'
import { materials } from '../data/materials'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Missing Supabase environment variables')
  console.error('Please set NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY in .env.local')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseAnonKey)

async function migrateMaterials() {
  console.log(`Migrating ${materials.length} materials to Supabase...`)

  for (const material of materials) {
    const { data, error } = await supabase
      .from('materials')
      .insert({
        id: material.id,
        name: material.name,
        category: material.category,
        hardness: material.hardness || null,
        composition: material.composition,
        microstructure: material.microstructure,
        heat_treatment: material.heatTreatment || null,
        special_notes: material.specialNotes || null,
        common_etchants: material.commonEtchants || null,
        preparation_notes: material.preparationNotes || null,
      })
      .select()

    if (error) {
      console.error(`Error inserting ${material.name}:`, error)
    } else {
      console.log(`✓ Migrated: ${material.name}`)
    }
  }

  console.log('\nMigration complete!')
}

migrateMaterials().catch(console.error)

