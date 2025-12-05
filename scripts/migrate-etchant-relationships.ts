/**
 * Migration script to populate material_etchants junction table
 * from existing common_etchants string arrays in materials table
 * 
 * Run with: npx tsx scripts/migrate-etchant-relationships.ts
 */

import { createClient } from '@supabase/supabase-js'
import { join } from 'path'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Missing Supabase environment variables')
  console.error('Please set NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY in .env.local')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseAnonKey)

interface MigrationResult {
  materialId: string
  materialName: string
  etchantName: string
  matched: boolean
  etchantId?: string
  error?: string
}

/**
 * Normalize etchant name for matching
 */
function normalizeName(name: string): string {
  return name.trim().toLowerCase().replace(/\s+/g, ' ')
}

/**
 * Find etchant by name using multiple matching strategies
 */
async function findEtchant(etchantName: string): Promise<{ id: string; name: string } | null> {
  const normalized = normalizeName(etchantName)
  
  // Strategy 1: Exact match (case-insensitive)
  let { data, error } = await supabase
    .from('etchants')
    .select('id, name')
    .ilike('name', normalized)
    .limit(1)
  
  if (data && data.length > 0) {
    return { id: data[0].id, name: data[0].name }
  }
  
  // Strategy 2: Check alternative names
  const { data: allEtchants } = await supabase
    .from('etchants')
    .select('id, name, alternative_names')
  
  if (allEtchants) {
    for (const etchant of allEtchants) {
      if (etchant.alternative_names) {
        const altNames = etchant.alternative_names.map(normalizeName)
        if (altNames.includes(normalized)) {
          return { id: etchant.id, name: etchant.name }
        }
      }
    }
  }
  
  // Strategy 3: Partial match (contains)
  const { data: partialMatch } = await supabase
    .from('etchants')
    .select('id, name')
    .or(`name.ilike.%${normalized}%,name.ilike.${normalized}%`)
    .limit(1)
  
  if (partialMatch && partialMatch.length > 0) {
    return { id: partialMatch[0].id, name: partialMatch[0].name }
  }
  
  return null
}

/**
 * Main migration function
 */
async function migrateEtchantRelationships() {
  console.log('Starting etchant relationship migration...\n')
  
  // Fetch all materials with common_etchants
  const { data: materials, error: materialsError } = await supabase
    .from('materials')
    .select('id, name, common_etchants')
    .not('common_etchants', 'is', null)
  
  if (materialsError) {
    console.error('Error fetching materials:', materialsError)
    return
  }
  
  if (!materials || materials.length === 0) {
    console.log('No materials with common_etchants found.')
    return
  }
  
  console.log(`Found ${materials.length} materials with common_etchants\n`)
  
  const results: MigrationResult[] = []
  let totalRelationships = 0
  let matchedCount = 0
  let unmatchedCount = 0
  
  // Process each material
  for (const material of materials) {
    if (!material.common_etchants || material.common_etchants.length === 0) {
      continue
    }
    
    console.log(`Processing: ${material.name}`)
    
    let sortOrder = 0
    let isFirst = true
    
    for (const etchantName of material.common_etchants) {
      sortOrder++
      
      const etchant = await findEtchant(etchantName)
      
      if (etchant) {
        // Insert relationship
        const { error: insertError } = await supabase
          .from('material_etchants')
          .insert({
            material_id: material.id,
            etchant_id: etchant.id,
            is_primary: isFirst,
            is_alternative: !isFirst,
            usage_frequency: 'common',
            sort_order: sortOrder
          })
          .select()
        
        if (insertError) {
          // Check if it's a duplicate (unique constraint violation)
          if (insertError.code === '23505') {
            console.log(`  ✓ ${etchantName} → ${etchant.name} (already exists)`)
            results.push({
              materialId: material.id,
              materialName: material.name,
              etchantName,
              matched: true,
              etchantId: etchant.id
            })
            matchedCount++
          } else {
            console.error(`  ✗ Error inserting ${etchantName}:`, insertError.message)
            results.push({
              materialId: material.id,
              materialName: material.name,
              etchantName,
              matched: true,
              etchantId: etchant.id,
              error: insertError.message
            })
          }
        } else {
          console.log(`  ✓ ${etchantName} → ${etchant.name} (${isFirst ? 'PRIMARY' : 'alternative'})`)
          results.push({
            materialId: material.id,
            materialName: material.name,
            etchantName,
            matched: true,
            etchantId: etchant.id
          })
          matchedCount++
          totalRelationships++
        }
      } else {
        console.log(`  ✗ ${etchantName} (NOT FOUND)`)
        results.push({
          materialId: material.id,
          materialName: material.name,
          etchantName,
          matched: false
        })
        unmatchedCount++
      }
      
      isFirst = false
    }
    
    console.log('')
  }
  
  // Summary
  console.log('\n' + '='.repeat(60))
  console.log('MIGRATION SUMMARY')
  console.log('='.repeat(60))
  console.log(`Materials processed: ${materials.length}`)
  console.log(`Total relationships created: ${totalRelationships}`)
  console.log(`Matched etchants: ${matchedCount}`)
  console.log(`Unmatched etchants: ${unmatchedCount}`)
  
  if (unmatchedCount > 0) {
    console.log('\nUnmatched etchants (review manually):')
    const unmatched = results
      .filter(r => !r.matched)
      .map(r => r.etchantName)
      .filter((v, i, a) => a.indexOf(v) === i) // Unique values
      .sort()
    
    unmatched.forEach(name => {
      console.log(`  - ${name}`)
    })
  }
  
  // Save results to file (optional)
  try {
    const fs = require('fs')
    const resultsPath = join(process.cwd(), 'migration-results.json')
    fs.writeFileSync(resultsPath, JSON.stringify(results, null, 2))
    console.log(`\nDetailed results saved to: ${resultsPath}`)
  } catch (error) {
    // File writing is optional
    console.log('\n(Results not saved to file)')
  }
}

// Run migration
migrateEtchantRelationships()
  .then(() => {
    console.log('\nMigration completed!')
    process.exit(0)
  })
  .catch((error) => {
    console.error('Migration failed:', error)
    process.exit(1)
  })

