/**
 * Execute Large SQL Migration via Direct PostgreSQL Connection
 * 
 * This script executes a large SQL migration file by splitting it into
 * manageable chunks and executing them via direct PostgreSQL connection.
 * 
 * Usage:
 *   npx tsx scripts/execute-large-migration-pg.ts <migration-file>
 * 
 * Example:
 *   npx tsx scripts/execute-large-migration-pg.ts supabase/migrations/051_populate_consumables_from_csv.sql
 * 
 * Requires:
 *   - SUPABASE_DB_URL environment variable (PostgreSQL connection string)
 *     Format: postgresql://postgres:[password]@[host]:[port]/postgres
 *     Get this from: Supabase Dashboard > Settings > Database > Connection string > URI
 */

import * as fs from 'fs'
import * as path from 'path'

// Check if pg is installed
let pg: any
try {
  pg = require('pg')
} catch (e) {
  console.error('❌ Error: "pg" package is not installed.')
  console.error('\nPlease install it first:')
  console.error('  npm install --save-dev pg @types/pg')
  console.error('\nOr use the split script instead:')
  console.error('  npx tsx scripts/split-large-migration.ts <migration-file>')
  process.exit(1)
}

const dbUrl = process.env.SUPABASE_DB_URL

if (!dbUrl) {
  console.error('Missing required environment variable:')
  console.error('  - SUPABASE_DB_URL')
  console.error('\nGet your connection string from:')
  console.error('  Supabase Dashboard > Settings > Database > Connection string > URI')
  console.error('\nFormat: postgresql://postgres:[password]@[host]:[port]/postgres')
  process.exit(1)
}

// Get migration file from command line argument
const migrationFile = process.argv[2]

if (!migrationFile) {
  console.error('Usage: npx tsx scripts/execute-large-migration-pg.ts <migration-file>')
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
 * Execute SQL batch using PostgreSQL client
 */
async function executeSQLBatch(client: any, statements: string[], batchNum: number): Promise<{ success: number; errors: number }> {
  let success = 0
  let errors = 0

  // Execute statements in a transaction for better error handling
  await client.query('BEGIN')

  try {
    for (let i = 0; i < statements.length; i++) {
      const statement = statements[i]
      
      try {
        await client.query(statement)
        success++
        
        // Progress indicator
        if ((i + 1) % 50 === 0) {
          process.stdout.write(`    Progress: ${i + 1}/${statements.length}\r`)
        }
      } catch (error: any) {
        console.error(`\n    ❌ Error in statement ${i + 1}: ${error.message}`)
        console.error(`    Statement preview: ${statement.substring(0, 100)}...`)
        errors++
        
        // Continue with next statement (don't fail entire batch)
        // If you want to stop on first error, uncomment the next line:
        // throw error
      }
    }
    
    await client.query('COMMIT')
    process.stdout.write(`    Progress: ${statements.length}/${statements.length}\n`)
  } catch (error: any) {
    await client.query('ROLLBACK')
    throw error
  }

  return { success, errors }
}

/**
 * Main execution function
 */
async function executeMigration() {
  console.log(`📖 Reading migration file: ${filePath}\n`)

  const content = fs.readFileSync(filePath, 'utf-8')
  const statements = splitSQLStatements(content)

  console.log(`📊 Found ${statements.length} SQL statements`)
  console.log(`📦 Splitting into batches of 200 statements each...\n`)

  // Create PostgreSQL client
  const client = new pg.Client({
    connectionString: dbUrl,
    ssl: {
      rejectUnauthorized: false
    }
  })

  try {
    await client.connect()
    console.log('✅ Connected to database\n')

    // Split into batches
    const batchSize = 200
    const batches: string[][] = []
    for (let i = 0; i < statements.length; i += batchSize) {
      batches.push(statements.slice(i, i + batchSize))
    }

    console.log(`🚀 Executing ${batches.length} batches...\n`)

    let totalSuccess = 0
    let totalErrors = 0

    for (let i = 0; i < batches.length; i++) {
      const batch = batches[i]
      console.log(`Batch ${i + 1}/${batches.length} (${batch.length} statements)`)

      const result = await executeSQLBatch(client, batch, i + 1)
      totalSuccess += result.success
      totalErrors += result.errors

      console.log(`  ✅ Success: ${result.success}, ❌ Errors: ${result.errors}\n`)

      // Small delay between batches
      if (i < batches.length - 1) {
        await new Promise(resolve => setTimeout(resolve, 100))
      }
    }

    console.log(`\n✅ Migration complete!`)
    console.log(`   Total statements: ${statements.length}`)
    console.log(`   Successful: ${totalSuccess}`)
    console.log(`   Errors: ${totalErrors}`)

  } catch (error: any) {
    console.error('❌ Fatal error:', error.message)
    process.exit(1)
  } finally {
    await client.end()
    console.log('\n🔌 Database connection closed')
  }
}

// Run the migration
executeMigration().catch(error => {
  console.error('Fatal error:', error)
  process.exit(1)
})

