/**
 * Split Large SQL Migration into Smaller Files
 * 
 * This script splits a large SQL migration file into smaller chunks
 * that can be executed sequentially via Supabase's SQL Editor.
 * 
 * Usage:
 *   npx tsx scripts/split-large-migration.ts <migration-file> [batch-size]
 * 
 * Example:
 *   npx tsx scripts/split-large-migration.ts supabase/migrations/051_populate_consumables_from_csv.sql 200
 * 
 * This will create multiple files:
 *   - 051_populate_consumables_from_csv_part_001.sql
 *   - 051_populate_consumables_from_csv_part_002.sql
 *   - etc.
 */

import * as fs from 'fs'
import * as path from 'path'

// Get arguments
const migrationFile = process.argv[2]
const batchSize = parseInt(process.argv[3] || '200', 10)

if (!migrationFile) {
  console.error('Usage: npx tsx scripts/split-large-migration.ts <migration-file> [batch-size]')
  console.error('  batch-size: Number of statements per file (default: 200)')
  process.exit(1)
}

const filePath = path.resolve(process.cwd(), migrationFile)

if (!fs.existsSync(filePath)) {
  console.error(`File not found: ${filePath}`)
  process.exit(1)
}

/**
 * Split SQL content into individual statements
 */
function splitSQLStatements(content: string): string[] {
  const statements: string[] = []
  let currentStatement = ''
  let inQuotes = false
  let quoteChar = ''
  let inComment = false
  let commentType: 'single' | 'multi' | null = null

  for (let i = 0; i < content.length; i++) {
    const char = content[i]
    const nextChar = content[i + 1] || ''
    const prevChar = content[i - 1] || ''

    // Handle comments
    if (!inQuotes) {
      if (char === '-' && nextChar === '-' && !inComment) {
        inComment = true
        commentType = 'single'
        currentStatement += char
        continue
      }
      if (char === '/' && nextChar === '*' && !inComment) {
        inComment = true
        commentType = 'multi'
        currentStatement += char
        continue
      }
      if (inComment && commentType === 'single' && char === '\n') {
        inComment = false
        commentType = null
        currentStatement += char
        continue
      }
      if (inComment && commentType === 'multi' && char === '*' && nextChar === '/') {
        inComment = false
        commentType = null
        currentStatement += char + nextChar
        i++ // Skip next char
        continue
      }
      if (inComment) {
        currentStatement += char
        continue
      }
    }

    // Handle quotes
    if ((char === '"' || char === "'" || char === '`') && !inComment) {
      if (!inQuotes) {
        inQuotes = true
        quoteChar = char
      } else if (char === quoteChar && prevChar !== '\\') {
        inQuotes = false
        quoteChar = ''
      }
    }

    currentStatement += char

    // Check for statement delimiter (semicolon not in quotes/comments)
    if (char === ';' && !inQuotes && !inComment) {
      const trimmed = currentStatement.trim()
      if (trimmed && !trimmed.match(/^--/)) {
        statements.push(trimmed)
      }
      currentStatement = ''
    }
  }

  // Add remaining statement if any
  const trimmed = currentStatement.trim()
  if (trimmed && !trimmed.match(/^--/)) {
    statements.push(trimmed)
  }

  return statements.filter(s => s.length > 0)
}

/**
 * Main execution function
 */
function splitMigration() {
  console.log(`📖 Reading migration file: ${filePath}\n`)

  const content = fs.readFileSync(filePath, 'utf-8')
  
  // Extract header comments (first few lines before first INSERT)
  const headerMatch = content.match(/^([\s\S]*?)(?=INSERT INTO)/)
  const header = headerMatch ? headerMatch[1] : '-- Split migration file\n\n'
  
  const statements = splitSQLStatements(content)

  console.log(`📊 Found ${statements.length} SQL statements`)
  console.log(`📦 Splitting into batches of ${batchSize} statements each...\n`)

  // Get base filename without extension
  const dir = path.dirname(filePath)
  const basename = path.basename(filePath, path.extname(filePath))
  const extension = path.extname(filePath)

  // Split into batches
  const batches: string[][] = []
  for (let i = 0; i < statements.length; i += batchSize) {
    batches.push(statements.slice(i, i + batchSize))
  }

  console.log(`📝 Creating ${batches.length} split files...\n`)

  // Write each batch to a separate file
  for (let i = 0; i < batches.length; i++) {
    const batch = batches[i]
    const partNum = String(i + 1).padStart(3, '0')
    const outputPath = path.join(dir, `${basename}_part_${partNum}${extension}`)
    
    const fileContent = `${header}-- Part ${i + 1} of ${batches.length}\n-- Statements ${i * batchSize + 1} to ${Math.min((i + 1) * batchSize, statements.length)}\n\n${batch.join('\n\n')}\n`
    
    fs.writeFileSync(outputPath, fileContent, 'utf-8')
    console.log(`  ✅ Created: ${path.basename(outputPath)} (${batch.length} statements)`)
  }

  console.log(`\n✅ Split complete!`)
  console.log(`   Total statements: ${statements.length}`)
  console.log(`   Files created: ${batches.length}`)
  console.log(`\n💡 Next steps:`)
  console.log(`   1. Review the split files in ${dir}`)
  console.log(`   2. Execute them sequentially via Supabase SQL Editor`)
  console.log(`   3. Or use: npx tsx scripts/execute-large-migration.ts <file>`)
}

// Run the split
splitMigration()

