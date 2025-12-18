# Equipment Creation Workflow

## How Equipment Gets Added to Category-Specific Tables

### The Process

When creating or updating equipment, you need to:

1. **Create/Update the base equipment record** in the `equipment` table
2. **Create/Update the category-specific record** in the appropriate table (e.g., `equipment_sectioning`)

### SQL Example

```sql
-- Step 1: Create base equipment record
INSERT INTO equipment (
  name, item_id, slug, description, category, 
  image_url, status, ...
) VALUES (
  'MEGA-T300A', 'MEGA-T300A', 'mega-t300a', 
  'Automated abrasive cutter...', 'sectioning',
  'https://...', 'active', ...
) RETURNING id;

-- Step 2: Create category-specific record
-- (Using the id from step 1)
INSERT INTO equipment_sectioning (
  equipment_id,
  blade_size_mm,
  blade_size_inches,
  max_cutting_capacity_mm,
  automation_level,
  ...
) VALUES (
  '<equipment_id_from_step_1>',
  300,
  12,
  100,
  'automated',
  ...
);
```

### Application Code Pattern (TypeScript)

```typescript
async function createEquipment(baseData: Equipment, categoryData: any) {
  const supabase = createClient()
  
  // Step 1: Create base equipment
  const { data: equipment, error: equipmentError } = await supabase
    .from('equipment')
    .insert(baseData)
    .select()
    .single()
  
  if (equipmentError) throw equipmentError
  
  // Step 2: Create category-specific record
  let categoryError = null
  
  switch (baseData.category) {
    case 'sectioning':
      const { error } = await supabase
        .from('equipment_sectioning')
        .insert({
          equipment_id: equipment.id,
          ...categoryData
        })
      categoryError = error
      break
      
    case 'grinding-polishing':
      const { error: gpError } = await supabase
        .from('equipment_grinding_polishing')
        .insert({
          equipment_id: equipment.id,
          ...categoryData
        })
      categoryError = gpError
      break
      
    // ... other categories
  }
  
  if (categoryError) {
    // Rollback: delete the equipment record
    await supabase.from('equipment').delete().eq('id', equipment.id)
    throw categoryError
  }
  
  return equipment
}
```

### Updating Equipment

```typescript
async function updateEquipment(
  equipmentId: string, 
  baseData: Partial<Equipment>, 
  categoryData: any
) {
  const supabase = createClient()
  
  // Step 1: Update base equipment
  const { error: equipmentError } = await supabase
    .from('equipment')
    .update(baseData)
    .eq('id', equipmentId)
  
  if (equipmentError) throw equipmentError
  
  // Step 2: Upsert category-specific record
  // (Upsert = insert if doesn't exist, update if it does)
  const categoryTable = getCategoryTable(baseData.category)
  
  const { error: categoryError } = await supabase
    .from(categoryTable)
    .upsert({
      equipment_id: equipmentId,
      ...categoryData
    }, {
      onConflict: 'equipment_id'
    })
  
  if (categoryError) throw categoryError
}
```

### Fetching Equipment with Category Data

```typescript
async function getEquipmentWithDetails(equipmentId: string) {
  const supabase = createClient()
  
  // Get base equipment
  const { data: equipment, error } = await supabase
    .from('equipment')
    .select('*')
    .eq('id', equipmentId)
    .single()
  
  if (error) throw error
  
  // Get category-specific data based on category
  let categoryData = null
  
  switch (equipment.category) {
    case 'sectioning':
      const { data: sectioning } = await supabase
        .from('equipment_sectioning')
        .select('*')
        .eq('equipment_id', equipmentId)
        .single()
      categoryData = sectioning
      break
      
    case 'grinding-polishing':
      const { data: grinding } = await supabase
        .from('equipment_grinding_polishing')
        .select('*')
        .eq('equipment_id', equipmentId)
        .single()
      categoryData = grinding
      break
      
    // ... other categories
  }
  
  return {
    ...equipment,
    categoryData
  }
}
```

### Using Supabase Joins (More Efficient)

```typescript
// Get all equipment with their category-specific data in one query
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
  .eq('id', equipmentId)
  .single()

// Only one of the category tables will have data (based on category)
// The others will be null
```

### Transaction Safety

**Important**: The two-step process (equipment + category table) is not atomic by default. If step 2 fails, you'll have orphaned equipment records.

**Solutions**:
1. **Use database transactions** (if using Supabase Postgres functions)
2. **Rollback manually** (delete equipment if category insert fails)
3. **Use database triggers** to auto-create category records (more complex)

For now, the application code should handle rollback manually.

