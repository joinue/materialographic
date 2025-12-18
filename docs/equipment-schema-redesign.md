# Equipment Schema Redesign Proposal

## Current Issues

The current `equipment` table has many nullable fields because different equipment categories have different specifications:

- **Sectioning**: `blade_size_mm`, `blade_size_inches`, `max_cutting_capacity_mm`, `max_cutting_capacity_inches`
- **Grinding/Polishing**: `wheel_size_inches`, `automation_level`
- **Mounting**: No specific fields (but could use pressure, temperature, etc.)
- **Microscopy**: No specific fields (but could use magnification, resolution, etc.)
- **Hardness Testing**: No specific fields (but could use test methods, load ranges, etc.)

This leads to:
- Many NULL values
- Hard to add category-specific attributes
- Less type safety
- Confusing admin forms with irrelevant fields

## Proposed Design: Base Table + Category-Specific Tables

### Option 1: Table Per Category (Recommended)

**Base `equipment` table** (common fields):
```sql
equipment
  - id (PK)
  - name
  - item_id (UNIQUE)
  - slug (UNIQUE)
  - description
  - category (sectioning, mounting, grinding-polishing, microscopy, hardness-testing, lab-furniture)
  - subcategory
  - is_pace_product
  - product_url
  - image_url
  - suitable_for_material_types[]
  - suitable_for_hardness[]
  - suitable_for_sample_sizes[]
  - suitable_for_sample_shapes[]
  - suitable_for_throughput[]
  - suitable_for_applications[]
  - min_budget_level
  - tags[]
  - status
  - sort_order
  - created_at
  - updated_at
```

**Category-specific tables** (one-to-one relationship):

```sql
equipment_sectioning
  - equipment_id (FK -> equipment.id, UNIQUE)
  - blade_size_mm
  - blade_size_inches
  - max_cutting_capacity_mm
  - max_cutting_capacity_inches
  - automation_level
  - cutting_speed_rpm
  - blade_type (abrasive, diamond, etc.)
  - cooling_system (water, air, none)
  - sample_holder_type

equipment_mounting
  - equipment_id (FK -> equipment.id, UNIQUE)
  - mounting_type (compression, castable, vacuum)
  - max_pressure_psi
  - max_temperature_celsius
  - chamber_size_mm
  - heating_capability
  - cooling_capability
  - vacuum_level

equipment_grinding_polishing
  - equipment_id (FK -> equipment.id, UNIQUE)
  - wheel_size_inches[]
  - automation_level
  - speed_range_rpm
  - force_range_n
  - number_of_stations
  - platen_material
  - cooling_system

equipment_microscopy
  - equipment_id (FK -> equipment.id, UNIQUE)
  - microscope_type (metallurgical, stereo, digital)
  - magnification_range
  - camera_resolution
  - illumination_type
  - image_analysis_capable
  - measurement_capabilities[]

equipment_hardness_testing
  - equipment_id (FK -> equipment.id, UNIQUE)
  - test_methods[] (rockwell, brinell, vickers, knoop)
  - load_range_n
  - max_indentation_depth_mm
  - automation_level
  - data_export_capabilities

equipment_lab_furniture
  - equipment_id (FK -> equipment.id, UNIQUE)
  - furniture_type (bench, cabinet, hood, etc.)
  - dimensions_mm
  - material
  - weight_capacity_kg
  - ventilation_required
```

### Option 2: Single Table with JSONB (Simpler but less type-safe)

Keep single table but add:
```sql
equipment
  - ... (all common fields)
  - category_specific_data JSONB  -- Flexible but harder to query/validate
```

### Option 3: Polymorphic with Type Column

```sql
equipment
  - ... (common fields)
  - equipment_type (sectioning, mounting, etc.)
  - type_specific_id (references appropriate table)
```

## Recommendation: Option 1 (Table Per Category)

### Benefits:
1. **Type Safety**: Each category has exactly the fields it needs
2. **Better Queries**: Can query category-specific attributes efficiently
3. **Easier Admin Forms**: Only show relevant fields per category
4. **Extensibility**: Easy to add new fields to specific categories
5. **Data Integrity**: Foreign keys ensure data consistency
6. **Performance**: Smaller tables, better indexes

### Implementation Strategy:

1. **Migration Path**:
   - Create new category-specific tables
   - Migrate existing data from `equipment` to appropriate tables
   - Keep `equipment` table as base
   - Update application code to join tables

2. **Views for Convenience**:
   ```sql
   CREATE VIEW equipment_with_details AS
   SELECT 
     e.*,
     s.*,
     m.*,
     gp.*,
     mic.*,
     ht.*,
     lf.*
   FROM equipment e
   LEFT JOIN equipment_sectioning s ON e.id = s.equipment_id
   LEFT JOIN equipment_mounting m ON e.id = m.equipment_id
   -- ... etc
   ```

3. **Application Code**:
   - Update TypeScript interfaces to be category-specific
   - Create category-specific admin forms
   - Use conditional rendering based on category

### Example Category-Specific Admin Form:

```typescript
// For sectioning equipment
if (category === 'sectioning') {
  return <SectioningEquipmentForm equipment={equipment} />
}
// For grinding-polishing
if (category === 'grinding-polishing') {
  return <GrindingPolishingEquipmentForm equipment={equipment} />
}
```

## Migration Considerations

1. **Backward Compatibility**: Create views that mimic old structure
2. **Data Migration**: Script to move data from single table to normalized structure
3. **API Updates**: Update all queries to join appropriate tables
4. **Admin Interface**: Update forms to be category-aware

## Next Steps

If you want to proceed:
1. I can create the migration to add category-specific tables
2. Create a data migration script
3. Update the admin forms to be category-specific
4. Update TypeScript interfaces

Would you like me to proceed with this redesign?

