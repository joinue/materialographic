# Equipment Schema Redesign - Implementation Guide

## What's Been Done

### ✅ Completed

1. **Migration Created** (`045_create_category_specific_equipment_tables.sql`)
   - Created 6 category-specific tables
   - Migrated existing data for sectioning and grinding-polishing
   - Created indexes and triggers
   - Created backward-compatibility view

2. **TypeScript Interfaces Updated** (`lib/supabase.ts`)
   - Added category-specific interfaces
   - Updated base Equipment interface
   - Added EquipmentWithDetails type

3. **Data Migration Script** (`scripts/migrate-equipment-to-category-tables.ts`)
   - Script to migrate existing data

### 🔄 Next Steps (To Complete)

1. **Update Equipment Edit Form**
   - Add category-specific form sections
   - Update submit handler to save to both tables
   - Update data loading to fetch category-specific data

2. **Update Equipment Fetching**
   - Update queries to join category-specific tables
   - Update display pages to use category-specific data

3. **Update Equipment Admin List**
   - May need updates if displaying category-specific fields

## How to Use

### Running the Migration

```bash
# Run the migration
supabase migration up

# Or if using Supabase CLI locally
supabase db reset
```

### Migrating Existing Data

```bash
npx tsx scripts/migrate-equipment-to-category-tables.ts
```

### Updating Equipment

When creating/editing equipment:
1. Save base equipment data to `equipment` table
2. Save category-specific data to appropriate table (e.g., `equipment_sectioning`)

Example:
```typescript
// Save base equipment
const { data: equipment } = await supabase
  .from('equipment')
  .insert(baseData)
  .select()
  .single()

// Save category-specific data
if (category === 'sectioning') {
  await supabase
    .from('equipment_sectioning')
    .insert({
      equipment_id: equipment.id,
      ...sectioningData
    })
}
```

### Querying Equipment

```typescript
// Get equipment with category-specific data
const { data } = await supabase
  .from('equipment')
  .select(`
    *,
    equipment_sectioning (*),
    equipment_mounting (*),
    equipment_grinding_polishing (*),
    equipment_microscopy (*),
    equipment_hardness_testing (*),
    equipment_lab_furniture (*)
  `)
  .eq('category', 'sectioning')
  .single()
```

## Category-Specific Fields

### Sectioning
- Blade sizes, cutting capacity, automation, speed, cooling

### Mounting
- Pressure, temperature, chamber size, vacuum

### Grinding/Polishing
- Wheel sizes, speed ranges, stations, automation

### Microscopy
- Magnification, resolution, analysis capabilities

### Hardness Testing
- Test methods, load ranges, automation

### Lab Furniture
- Dimensions, capacity, material, features

## Backward Compatibility

The `equipment_with_details` view provides backward compatibility by joining all category tables. However, for new code, use the proper category-specific tables.

