/**
 * Data Migration Script: Move equipment data to category-specific tables
 * 
 * This script migrates existing equipment data from the single equipment table
 * to the new category-specific tables created in migration 045.
 * 
 * Usage:
 *   npx tsx scripts/migrate-equipment-to-category-tables.ts
 * 
 * Requires:
 *   - SUPABASE_SERVICE_ROLE_KEY environment variable
 *   - NEXT_PUBLIC_SUPABASE_URL environment variable
 */

import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Missing required environment variables:')
  console.error('  - NEXT_PUBLIC_SUPABASE_URL')
  console.error('  - SUPABASE_SERVICE_ROLE_KEY')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseServiceKey, {
  auth: {
    autoRefreshToken: false,
    persistSession: false,
  },
})

interface Equipment {
  id: string
  category: string
  blade_size_mm?: number | null
  blade_size_inches?: number | null
  max_cutting_capacity_mm?: number | null
  max_cutting_capacity_inches?: number | null
  automation_level?: string | null
  wheel_size_inches?: number[] | null
}

async function migrateEquipment() {
  console.log('🚀 Starting equipment data migration...\n')

  try {
    // Fetch all equipment
    const { data: equipment, error: fetchError } = await supabase
      .from('equipment')
      .select('id, category, blade_size_mm, blade_size_inches, max_cutting_capacity_mm, max_cutting_capacity_inches, automation_level, wheel_size_inches')

    if (fetchError) {
      throw new Error(`Failed to fetch equipment: ${fetchError.message}`)
    }

    if (!equipment || equipment.length === 0) {
      console.log('No equipment found to migrate.')
      return
    }

    console.log(`Found ${equipment.length} equipment items to process\n`)

    let migrated = 0
    let skipped = 0
    let errors = 0

    // Group by category
    const byCategory = equipment.reduce((acc, item) => {
      if (!acc[item.category]) {
        acc[item.category] = []
      }
      acc[item.category].push(item)
      return acc
    }, {} as Record<string, Equipment[]>)

    // Migrate sectioning equipment
    if (byCategory['sectioning']) {
      console.log(`📦 Migrating ${byCategory['sectioning'].length} sectioning equipment items...`)
      
      for (const item of byCategory['sectioning']) {
        const hasData = item.blade_size_mm || item.blade_size_inches || 
                       item.max_cutting_capacity_mm || item.max_cutting_capacity_inches ||
                       item.automation_level

        if (!hasData) {
          skipped++
          continue
        }

        const { error } = await supabase
          .from('equipment_sectioning')
          .upsert({
            equipment_id: item.id,
            blade_size_mm: item.blade_size_mm,
            blade_size_inches: item.blade_size_inches,
            max_cutting_capacity_mm: item.max_cutting_capacity_mm,
            max_cutting_capacity_inches: item.max_cutting_capacity_inches,
            automation_level: item.automation_level as any,
          }, {
            onConflict: 'equipment_id'
          })

        if (error) {
          console.error(`  ❌ Error migrating ${item.id}:`, error.message)
          errors++
        } else {
          migrated++
          console.log(`  ✅ Migrated: ${item.id}`)
        }
      }
    }

    // Migrate grinding-polishing equipment
    if (byCategory['grinding-polishing']) {
      console.log(`\n📦 Migrating ${byCategory['grinding-polishing'].length} grinding-polishing equipment items...`)
      
      for (const item of byCategory['grinding-polishing']) {
        const hasData = item.wheel_size_inches || item.automation_level

        if (!hasData) {
          skipped++
          continue
        }

        const { error } = await supabase
          .from('equipment_grinding_polishing')
          .upsert({
            equipment_id: item.id,
            wheel_size_inches: item.wheel_size_inches,
            automation_level: item.automation_level as any,
          }, {
            onConflict: 'equipment_id'
          })

        if (error) {
          console.error(`  ❌ Error migrating ${item.id}:`, error.message)
          errors++
        } else {
          migrated++
          console.log(`  ✅ Migrated: ${item.id}`)
        }
      }
    }

    // Other categories don't have existing data, so skip them
    const otherCategories = ['mounting', 'microscopy', 'hardness-testing', 'lab-furniture']
    for (const category of otherCategories) {
      if (byCategory[category]) {
        console.log(`\n⏭️  Skipping ${byCategory[category].length} ${category} items (no existing category-specific data)`)
        skipped += byCategory[category].length
      }
    }

    console.log(`\n✅ Migration complete:`)
    console.log(`   Migrated: ${migrated}`)
    console.log(`   Skipped: ${skipped}`)
    console.log(`   Errors: ${errors}`)

  } catch (error: any) {
    console.error('Fatal error:', error)
    process.exit(1)
  }
}

// Run the migration
migrateEquipment()

