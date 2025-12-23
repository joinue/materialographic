# Equipment Category Implementation Process

This document outlines the high-level process for implementing equipment categories (sectioning, mounting, grinding-polishing, etc.) based on the patterns established in the sectioning and mounting implementations.

## Overview

Each equipment category follows a consistent pattern:
1. Database schema design and migrations
2. TypeScript interface updates
3. Component implementation with conditional rendering
4. Category page content updates
5. Testing and refinement

## Step-by-Step Process

### 1. Database Schema Design

#### Base Table Structure
- Equipment categories use a base `equipment` table with category-specific detail tables
- Category-specific tables (e.g., `equipment_sectioning`, `equipment_mounting`) have a one-to-one relationship with `equipment`
- Foreign key: `equipment_id` references `equipment.id`

#### Field Type Decisions

**TEXT fields for flexibility:**
- Use TEXT instead of numeric types when values can be:
  - Ranges: "75 to 175 mm", "500-3000 rpm"
  - Descriptive: "Variable (1000-3000 rpm)"
  - Include units: "12.7 mm (0.5 inches)"
- Examples: `max_temperature_celsius`, `max_force_mpa`, `cutting_speed_rpm`

**JSONB for structured data:**
- Dimensions: `{"width": 480, "depth": 580, "height": 370}`
- Arrays of objects: `[{"name": "Accessory", "description": "..."}]`
- Examples: `dimensions_mm`, `optional_accessories`, `table_dimensions_mm`

**Boolean fields:**
- Use for yes/no features: `heating_capability`, `cooling_capability`, `digital_controls`

**Arrays:**
- Use PostgreSQL arrays for simple lists: `safety_features ARRAY['overflow-valve', 'emergency-stop']`

#### View Updates
- Always update `equipment_with_details` view when adding new fields
- View combines base `equipment` table with category-specific tables
- Ensures all new fields are accessible in queries

### 2. Migration Files

#### Pattern: Two-Step Migration Process

**Step 1: Schema Migration**
- Create migration file: `XXX_add_[category]_equipment_fields.sql`
- Add all new columns to category-specific table
- Update `equipment_with_details` view to include new columns
- Use `ADD COLUMN IF NOT EXISTS` to allow safe re-running
- Group related fields with comments

**Step 2: Data Migration**
- Create separate migration for each equipment item: `XXX_update_[item_id]_specifications.sql`
- Use `INSERT ... ON CONFLICT DO NOTHING` to ensure record exists
- Use `UPDATE ... WHERE equipment_id = (SELECT id FROM equipment WHERE item_id = 'ITEM_ID')`
- Include comments explaining the source of specifications

#### Example Structure:
```sql
-- ============================================================================
-- ADD MOUNTING EQUIPMENT FIELDS
-- ============================================================================
-- Adds fields for compression mounting, UV curing, pressure mounting, etc.
-- ============================================================================

ALTER TABLE equipment_mounting
ADD COLUMN IF NOT EXISTS control TEXT,
ADD COLUMN IF NOT EXISTS mount_sizes TEXT,
-- ... more fields

-- Update view
CREATE OR REPLACE VIEW equipment_with_details AS
SELECT 
  e.*,
  m.control,
  m.mount_sizes,
  -- ... more fields
FROM equipment e
LEFT JOIN equipment_mounting m ON e.id = m.equipment_id;
```

### 3. TypeScript Interface Updates

#### Location: `lib/supabase.ts`

**Pattern:**
- Add fields to category-specific interface (e.g., `EquipmentMounting`, `EquipmentSectioning`)
- Match field names exactly with database columns
- Use appropriate TypeScript types:
  - `string | null` for TEXT fields
  - `Record<string, number> | null` for JSONB dimensions
  - `Array<{name: string, description: string}> | null` for JSONB arrays
  - `boolean | null` for boolean fields

**Example:**
```typescript
export interface EquipmentMounting {
  equipment_id: string
  control?: string | null
  mount_sizes?: string | null
  dimensions_mm?: Record<string, number> | null
  optional_accessories?: Array<{name: string, description: string}> | null
  heating_capability?: boolean | null
  // ... more fields
}
```

### 4. Component Implementation

#### Location: `components/equipment/[Category]Specs.tsx`

**Key Patterns:**

**1. Conditional Rendering Based on Equipment Type**
```typescript
// Detect equipment type based on available fields
const isCompressionMounting = 
  currentSpecs.control || 
  currentSpecs.mold_cylinders || 
  currentSpecs.force_type

const isUVCuring = 
  currentSpecs.sample_support_surface_dimension_mm || 
  currentSpecs.uv_curing_time_min ||
  currentSpecs.uv_wavelength_nm

// Only show section if relevant AND has content
{(isCompressionMounting && (
  currentSpecs.control ||
  currentSpecs.mold_cylinders ||
  // ... check for actual content
)) || editMode) && (
  <div>Compression Mounting Specifications</div>
)}
```

**2. Inline Editing Pattern**
```typescript
const [editData, setEditData] = useState<EquipmentMounting | null>(null)

const handleFieldChange = (field: keyof EquipmentMounting, value: string | null) => {
  setEditData(prev => ({ ...prev, [field]: value }))
  onChange?.(field, value)
}

const handleJSONBChange = (field: keyof EquipmentMounting, key: string, value: string) => {
  const current = editData?.[field] as Record<string, any> || {}
  const updated = { ...current, [key]: value || undefined }
  setEditData(prev => ({ ...prev, [field]: updated }))
  onChange?.(field, updated)
}
```

**3. Display Logic**
- Only show sections when there's actual content (not just when detection flags are true)
- Check for specific field values, not just the presence of the field
- Use conditional rendering: `{currentSpecs.field && <div>...</div>}`

**4. Shared Fields**
- Some fields may be shared across equipment types (e.g., `mount_sizes` in both compression and vacuum mounting)
- Don't use shared fields to detect equipment type
- Show shared fields in the appropriate section based on equipment type

### 5. Category Page Content

#### Location: `app/equipment/[category]/page.tsx`

**Structure:**
```typescript
const categoryTechnicalContent: Record<string, {
  heroHeadline: string
  heroDescription: string
  useCases: Array<{ title: string, description: string, anchor?: string | null }>
  processDescription: string
  keySpecifications: string[]
  selectionConsiderations?: Array<{ title: string; description: string }>
  faqs?: Array<{ question: string; answer: string }>
  guideSlug?: string
  guideTitle?: string
  heroImage?: string
  processImage?: string
}> = {
  'category-name': {
    // ... content
  }
}
```

**Best Practices:**
- Use accurate, specific terminology (e.g., "reinforced abrasive wheels" not just "wheels")
- Avoid overgeneralizations (e.g., don't say compression is always faster than castable when UV curing exists)
- Include all relevant equipment types in descriptions
- Update FAQs to reflect actual equipment capabilities

### 6. Common Issues and Solutions

#### Issue: Sections Showing on Wrong Equipment
**Problem:** Detection logic too broad, shared fields triggering wrong sections
**Solution:** 
- Use specific fields for detection, not shared ones
- Add content checks: only show section if relevant fields have values
- Example: Don't use `mount_sizes` to detect compression mounting if vacuum also has it

#### Issue: Empty Sections Appearing
**Problem:** Section header shows even when all fields are null
**Solution:**
- Check for actual content before showing section
- Use pattern: `{(isType && (field1 || field2 || field3)) || editMode) && <section>}`

#### Issue: Terminology Inconsistencies
**Problem:** Using generic terms instead of specific technical terms
**Solution:**
- Use precise terminology throughout (e.g., "castable mounting systems" not "castable mounting presses")
- Check existing documentation for consistent terminology
- Update all references when fixing terminology

#### Issue: Migration Syntax Errors
**Problem:** Premature semicolons in ALTER TABLE statements
**Solution:**
- Use commas between ADD COLUMN statements
- Only use semicolon at end of entire ALTER TABLE block
- Test migrations before committing

### 7. Testing Checklist

- [ ] Migration runs without errors
- [ ] View includes all new fields
- [ ] TypeScript interface matches database schema
- [ ] Component displays all fields correctly
- [ ] Conditional rendering works (sections only show for relevant equipment)
- [ ] Inline editing saves correctly
- [ ] No empty sections appear
- [ ] Shared fields display in correct sections
- [ ] Category page descriptions are accurate
- [ ] Terminology is consistent throughout

## Example: Mounting Equipment Implementation

### What We Did

1. **Database Schema** (`075_add_mounting_equipment_fields.sql`)
   - Added fields for compression mounting (control, mount_sizes, force_type, etc.)
   - Added fields for UV curing (sample_support_surface, uv_curing_time, etc.)
   - Added fields for pressure mounting (operating_pressure_bar, etc.)
   - Added fields for vacuum mounting (bell_jar_description, etc.)
   - Added fields for cooling tank accessories
   - Converted some numeric fields to TEXT for flexibility
   - Updated `equipment_with_details` view

2. **Data Migrations** (076-081)
   - `076_update_tp_7500s_specifications.sql` - Hydraulic compression press
   - `077_update_terauv_specifications.sql` - UV curing system
   - `078_update_teracomp_specifications.sql` - Pressure mounting
   - `079_update_teravac_specifications.sql` - Vacuum mounting
   - `080_update_tp_7100s_specifications.sql` - Pneumatic compression press
   - `081_update_tp_tank_specifications.sql` - Cooling tank accessory

3. **TypeScript Interface** (`lib/supabase.ts`)
   - Updated `EquipmentMounting` interface with all new fields
   - Matched types to database schema (TEXT → string, JSONB → Record/Array)

4. **Component** (`components/equipment/MountingSpecs.tsx`)
   - Added conditional rendering for different mounting types
   - Implemented inline editing with `editData` state
   - Added content checks to prevent empty sections
   - Fixed shared field issues (mount_sizes in both compression and vacuum)

5. **Category Page** (`app/equipment/[category]/page.tsx`)
   - Updated terminology ("castable mounting systems" not "presses")
   - Fixed throughput descriptions to include UV curing
   - Updated process descriptions to be more accurate

## Applying to Grinding-Polishing

When implementing grinding-polishing equipment:

1. **Identify Equipment Types**
   - Manual polishers
   - Semi-automated systems
   - Vibratory polishers
   - Controlled removal polishers
   - Hand/belt grinders

2. **Identify Shared vs. Unique Fields**
   - Shared: dimensions, weight, electrical specs
   - Unique: platen size (manual/semi-auto), force control (automated), vibration frequency (vibratory)

3. **Create Detection Logic**
   - Use unique fields to detect equipment type
   - Don't use shared fields for detection

4. **Implement Conditional Rendering**
   - Show relevant sections based on equipment type
   - Check for content before showing sections

5. **Update Category Content**
   - Ensure descriptions accurately reflect all equipment types
   - Use precise terminology
   - Avoid overgeneralizations

## Key Takeaways

1. **Flexibility First**: Use TEXT and JSONB for fields that need flexibility
2. **Two-Step Migrations**: Schema changes separate from data updates
3. **Conditional Rendering**: Show only relevant sections with content checks
4. **Precise Terminology**: Use specific technical terms consistently
5. **Content Validation**: Don't show sections just because detection flags are true - check for actual content
6. **Shared Fields**: Handle shared fields carefully - don't use them for type detection

