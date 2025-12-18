/**
 * Fix Split Migration Files with ON CONFLICT
 * 
 * This script adds ON CONFLICT DO NOTHING clauses to all INSERT statements
 * in the split migration files to make them idempotent and handle duplicates.
 * 
 * Usage:
 *   npx tsx scripts/fix-split-migrations-conflict.ts <migration-base-name>
 * 
 * Example:
 *   npx tsx scripts/fix-split-migrations-conflict.ts 051_populate_consumables_from_csv
 */

import * as fs from 'fs'
import * as path from 'path'

// Get base name from command line argument
const baseName = process.argv[2]

if (!baseName) {
  console.error('Usage: npx tsx scripts/fix-split-migrations-conflict.ts <migration-base-name>')
  console.error('Example: npx tsx scripts/fix-split-migrations-conflict.ts 051_populate_consumables_from_csv')
  process.exit(1)
}

const migrationsDir = path.join(process.cwd(), 'supabase', 'migrations')

console.log(`🔍 Looking for files matching: ${baseName}_part_*.sql\n`)

// Find all matching files
const allFiles = fs.readdirSync(migrationsDir)
const files = allFiles
  .filter(file => file.startsWith(`${baseName}_part_`) && file.endsWith('.sql'))
  .map(file => path.join(migrationsDir, file))
  .sort() // Sort to process in order

if (files.length === 0) {
  console.error(`No files found matching pattern: ${pattern}`)
  process.exit(1)
}

console.log(`📝 Found ${files.length} files to fix\n`)

let totalFixed = 0

for (const filePath of files) {
  console.log(`Processing: ${path.basename(filePath)}`)
  
  let content = fs.readFileSync(filePath, 'utf-8')
  let fixed = 0
  
  // Replace ON CONFLICT (item_id) with ON CONFLICT DO NOTHING to handle all unique constraints
  // This handles conflicts on item_id, slug, or any other unique constraint
  const conflictPattern = /ON CONFLICT\s*\(item_id\)\s*DO NOTHING/gi
  
  const matches = content.match(conflictPattern)
  if (matches) {
    fixed += matches.length
    content = content.replace(conflictPattern, 'ON CONFLICT DO NOTHING')
  }
  
  // Also handle INSERT statements that don't have ON CONFLICT at all
  const insertPattern = /(INSERT INTO consumables\s*\([^)]+\)\s*VALUES\s*\([^)]+\)\s*);/g
  
  content = content.replace(insertPattern, (match, insertPart) => {
    // Skip if it already has ON CONFLICT
    if (match.includes('ON CONFLICT')) {
      return match
    }
    
    // Add ON CONFLICT before the semicolon
    fixed++
    return insertPart + ' ON CONFLICT DO NOTHING;'
  })
  
  // Also fix INSERT INTO consumables_* statements that use SELECT
  const insertSelectPattern = /(INSERT INTO consumables_\w+\s*\([^)]+\)\s*SELECT[^;]+;)/gs
  
  content = content.replace(insertSelectPattern, (match) => {
    // Check if it already has ON CONFLICT
    if (match.includes('ON CONFLICT')) {
      return match
    }
    
    // For SELECT-based inserts, we need to check if there's a unique constraint
    // For now, we'll add ON CONFLICT DO NOTHING at the end
    fixed++
    return match.replace(/;$/, ' ON CONFLICT DO NOTHING;')
  })
  
  if (fixed > 0) {
    fs.writeFileSync(filePath, content, 'utf-8')
    console.log(`  ✅ Fixed ${fixed} INSERT statements`)
    totalFixed += fixed
  } else {
    console.log(`  ⏭️  No changes needed`)
  }
}

console.log(`\n✅ Complete! Fixed ${totalFixed} INSERT statements across ${files.length} files`)
console.log(`\n💡 You can now re-run the migration files safely - duplicates will be ignored.`)

