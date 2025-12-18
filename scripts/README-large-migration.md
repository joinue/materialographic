# Executing Large SQL Migrations

When a migration file is too large to execute via Supabase's SQL Editor, you have two options:

## Option 1: Split into Smaller Files (Recommended)

Split the large migration file into smaller chunks that can be executed sequentially:

```bash
npx tsx scripts/split-large-migration.ts supabase/migrations/051_populate_consumables_from_csv.sql 200
```

This will create multiple files:
- `051_populate_consumables_from_csv_part_001.sql`
- `051_populate_consumables_from_csv_part_002.sql`
- etc.

Each file will contain up to 200 SQL statements (configurable).

Then execute each file sequentially via:
1. Supabase SQL Editor (recommended for small batches)
2. Or use the execution script (see Option 2)

## Option 2: Execute via Direct Database Connection

Execute the migration directly via PostgreSQL connection:

### Prerequisites

1. Install PostgreSQL client library:
```bash
npm install --save-dev pg @types/pg
```

2. Get your database connection string from Supabase:
   - Go to: Supabase Dashboard > Settings > Database
   - Find "Connection string" section
   - Copy the "URI" connection string
   - Format: `postgresql://postgres:[password]@[host]:[port]/postgres`

3. Set environment variable:
```bash
# Windows (CMD)
set SUPABASE_DB_URL=postgresql://postgres:[password]@[host]:[port]/postgres

# Windows (PowerShell)
$env:SUPABASE_DB_URL="postgresql://postgres:[password]@[host]:[port]/postgres"

# Linux/Mac
export SUPABASE_DB_URL=postgresql://postgres:[password]@[host]:[port]/postgres
```

### Execute

```bash
npx tsx scripts/execute-large-migration-pg.ts supabase/migrations/051_populate_consumables_from_csv.sql
```

The script will:
- Split the SQL into batches of 200 statements
- Execute each batch in a transaction
- Show progress and error reporting
- Continue on errors (doesn't stop the entire migration)

## Troubleshooting

### "Query is too large" error
- Use Option 1 to split the file first
- Or use Option 2 with direct database connection

### Connection errors
- Verify your `SUPABASE_DB_URL` is correct
- Check that your IP is allowed in Supabase firewall settings
- Ensure SSL is enabled (the script handles this automatically)

### Statement parsing errors
- The SQL parser handles most cases, but complex nested SQL might need manual splitting
- Check the error message for the problematic statement

## Notes

- The split script preserves SQL comments and formatting
- Each batch is executed in its own transaction for safety
- Errors in individual statements don't stop the entire migration
- Progress is shown for each batch

