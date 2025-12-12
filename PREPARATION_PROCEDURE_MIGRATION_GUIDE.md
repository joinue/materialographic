# Preparation Procedure Migration Guide

## Overview
This guide documents the standards and patterns for creating Supabase migrations that update material preparation procedures. Follow these guidelines to ensure consistent formatting and proper rendering in the application.

---

## HTML Formatting Standards

### ✅ **Use HTML, NOT Markdown**
- **DO**: Use `<strong>`, `<br />`, `<ul>`, `<li>` tags
- **DON'T**: Use markdown syntax like `**bold**`, `- bullets`, or `# headings`

### Supported HTML Tags

#### Bold Text
```html
<strong>Text to bold</strong>
```
Use for:
- Section headings (e.g., "Diamond polishing sequence:")
- Important terms and labels (e.g., "9μm diamond:", "Composition:")

#### Line Breaks
```html
<br />
```
Use for:
- Paragraph breaks
- Spacing between sections
- After headings before lists

#### Lists
```html
<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;">
  <li>First item</li>
  <li>Second item</li>
</ul>
```
Use for:
- Step-by-step sequences
- Multiple items or options
- Bulleted information

**Important**: Always include inline styles for lists to control spacing:
- `margin-top: 0.5rem; margin-bottom: 0.5rem;` - tight vertical spacing
- `padding-left: 1.5rem;` - proper indentation

---

## Migration Structure

### Basic Template

```sql
-- Enhance [section] notes for [Material Name]
UPDATE materials
SET [section]_notes = '[HTML formatted content]'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND ([section]_notes IS NULL OR [section]_notes LIKE '%[old-content]%');
```

### WHERE Clause Patterns

Use flexible WHERE clauses that match:
1. The material ID (primary)
2. Slug and name combination (fallback)
3. Current content patterns (to avoid re-updating already formatted content)

**Examples:**
```sql
-- For new content
AND (preparation_notes IS NULL OR preparation_notes = '')

-- For updating existing basic content
AND (sectioning_notes = 'Use abrasive cutoff wheel with coolant' 
     OR sectioning_notes LIKE '%cut-off wheel%')

-- For updating content that might already be partially updated
AND (grinding_notes LIKE '%Start with 120 grit%' 
     OR grinding_notes LIKE '%363 HB%'
     OR grinding_notes NOT LIKE '%<strong>%')
```

---

## Section-Specific Formatting Patterns

### Preparation Notes
- Usually plain text paragraphs
- Use `<br />` for paragraph breaks if needed
- Keep it concise and material-specific

**Example:**
```sql
SET preparation_notes = 'Material description and key challenges. Main points about preparation difficulty.<br /><br />Specific considerations for this material type.'
```

### Sectioning Notes
- Usually plain text paragraphs
- Include specific guidance (wheel type, speed, pressure, allowances)

**Example:**
```sql
SET sectioning_notes = 'Use abrasive cut-off wheel designed for [material type]. Standard cut-off wheel (1.0-1.5 mm thickness). Use adequate coolant flow. Cutting speed: 200-300 RPM. Apply steady, moderate pressure. Leave adequate allowance (~2-3 mm) for grinding.'
```

### Mounting Notes
- Use `<br />` for paragraph breaks between mounting options
- Describe both cold and hot mounting when applicable

**Example:**
```sql
SET mounting_notes = 'Cold mounting with epoxy resin is preferred.<br /><br />Hot compression mounting is acceptable if the part tolerates ~150-180°C and moderate pressure (3000-4000 psi for phenolic).<br /><br />For critical applications, consider glass-filled epoxy-phenolic compression mounting resins.'
```

### Grinding Notes
- Use lists for grinding sequences
- Include pressure, time, and technique guidance

**Example:**
```sql
SET grinding_notes = 'Introduction paragraph about grinding approach.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Remove sectioning damage (30-60 seconds)</li><li><strong>240 grit:</strong> Remove previous scratches (30-60 seconds)</li><li><strong>320 grit:</strong> Further refinement (30-60 seconds)</li></ul>Additional guidance about rotation, pressure, or special considerations.'
```

### Polishing Notes
- Use lists for polishing sequences
- Include pad/cloth recommendations (use general descriptions, not brand names)
- Format: pad type → time → pressure → notes

**Example:**
```sql
SET polishing_notes = 'Introduction about polishing approach.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> 3-5 minutes on a metal mesh pad (e.g., CERMESH) with moderate pressure (30-50 N per 30 mm sample). Description of pad and technique.</li><li><strong>3μm diamond:</strong> 3-5 minutes on a non-woven intermediate pad (e.g., TEXPAN) with moderate pressure.</li><li><strong>1μm diamond:</strong> 2-3 minutes on a low-napped pad (e.g., GOLD PAD) with lighter pressure (20-30 N).</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> 1-2 minutes on a high-napped final polishing pad (e.g., MICROPAD) with light pressure. Description.</li></ul>Additional guidance about lubricants, monitoring, and troubleshooting.'
```

**Important for Polishing Notes:**
- Use general pad descriptions first, then examples in parentheses
- Example: "metal mesh pad (e.g., CERMESH)" not "CERMESH pad"
- Don't mention "PACE" directly - this is an educational site
- Use pad names only as examples: "(e.g., TEXPAN)"

### Etching Notes
- Use lists for each etchant
- Include: Composition, Preparation, Application, Reveals, Rinse, Notes
- Use lists for etching strategy and safety

**Example:**
```sql
SET etching_notes = 'Introduction about etching requirements.<br /><br /><strong>Etchant Name (Type)</strong> - Description:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> Detailed composition</li><li><strong>Preparation:</strong> How to prepare</li><li><strong>Application:</strong> How to apply (immerse/swab, time, technique)</li><li><strong>Reveals:</strong> What it reveals</li><li><strong>Rinse:</strong> Rinsing procedure</li><li><strong>Note:</strong> Additional notes</li></ul><strong>Etching Strategy:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li>Strategy point 1</li><li>Strategy point 2</li></ul><strong>Safety:</strong> Safety warnings and PPE requirements.'
```

---

## Polishing Pad Naming Convention

### ✅ **DO:**
- Use general descriptions: "metal mesh pad", "non-woven intermediate pad", "high-napped final polishing pad"
- Add examples in parentheses: "(e.g., CERMESH)", "(e.g., TEXPAN)"
- Keep it educational and brand-neutral

### ❌ **DON'T:**
- Say "PACE polishing pads" or mention brand names directly
- Use brand-specific terminology like "Texmet" (use "TEXPAN" as example)
- Make it sound like product recommendations

### Pad Type Reference

| Pad Type | General Description | Example |
|----------|-------------------|---------|
| Coarse/Intermediate | Metal mesh pad | CERMESH |
| Intermediate | Non-woven intermediate pad | TEXPAN |
| Intermediate | Porometric polymer pad | Black CHEM 2 |
| Intermediate | Low-napped pad for fine polishing | GOLD PAD |
| Final | High-napped final polishing pad | MICROPAD |
| Final | Wool-based final polishing cloth | MOLTEC 2 |

---

## Complete Migration Example

```sql
-- Enhance preparation procedures for [Material Name]
-- Migration: [number]
-- Date: YYYY-MM-DD

-- ============================================================================
-- UPDATE [MATERIAL NAME] PREPARATION PROCEDURES
-- ============================================================================

-- Add comprehensive preparation notes
UPDATE materials
SET preparation_notes = 'Material description and key challenges. Specific guidance.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (preparation_notes IS NULL OR preparation_notes = '');

-- Enhance sectioning notes
UPDATE materials
SET sectioning_notes = 'Sectioning guidance with specific details.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (sectioning_notes IS NULL OR sectioning_notes LIKE '%[old-content]%');

-- Enhance mounting notes
UPDATE materials
SET mounting_notes = 'Mounting guidance.<br /><br />Additional mounting options.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (mounting_notes IS NULL OR mounting_notes LIKE '%[old-content]%');

-- Enhance grinding notes
UPDATE materials
SET grinding_notes = 'Grinding introduction.<br /><br /><strong>Grinding sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>120 grit:</strong> Description (time)</li><li><strong>240 grit:</strong> Description (time)</li></ul>Additional guidance.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (grinding_notes IS NULL OR grinding_notes LIKE '%[old-content]%');

-- Enhance polishing notes
UPDATE materials
SET polishing_notes = 'Polishing introduction.<br /><br /><strong>Diamond polishing sequence:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>9μm diamond:</strong> Time on pad type (e.g., PADNAME) with pressure. Description.</li></ul><strong>Final polishing:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>0.05μm colloidal silica:</strong> Time on pad type (e.g., PADNAME) with pressure. Description.</li></ul>Additional guidance.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (polishing_notes IS NULL OR polishing_notes LIKE '%[old-content]%');

-- Enhance etching notes
UPDATE materials
SET etching_notes = 'Etching introduction.<br /><br /><strong>Etchant Name</strong> - Description:<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;"><li><strong>Composition:</strong> Details</li><li><strong>Application:</strong> Details</li></ul><strong>Safety:</strong> Warnings.'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND (etching_notes IS NULL OR etching_notes LIKE '%[old-content]%');

-- Set preparation difficulty (if applicable)
UPDATE materials
SET preparation_difficulty = '[easy|medium|hard|expert]'
WHERE (id = '[material-id]'::uuid
   OR (slug = '[material-slug]' AND name = '[Material Name]'))
  AND preparation_difficulty IS NULL;

-- Verify the update
DO $$
DECLARE
  v_material_name TEXT;
  v_notes TEXT;
BEGIN
  SELECT name, [section]_notes
  INTO v_material_name, v_notes
  FROM materials
  WHERE id = '[material-id]'::uuid
     OR (slug = '[material-slug]' AND name = '[Material Name]')
  LIMIT 1;
  
  IF v_material_name IS NULL THEN
    RAISE EXCEPTION 'Material not found';
  END IF;
  
  IF v_notes IS NULL OR length(v_notes) < 50 THEN
    RAISE EXCEPTION 'Notes not properly updated';
  END IF;
  
  RAISE NOTICE 'Successfully updated [Material Name] preparation procedures';
END $$;
```

---

## Component Rendering

The frontend component (`app/materials/[slug]/MaterialTabs.tsx`) is configured to:
- Render HTML using `dangerouslySetInnerHTML`
- Use prose classes for styling
- Display in gray boxes with proper spacing

**No changes needed to component** - it already handles HTML rendering correctly.

---

## Admin Form Display

The admin form (`app/admin/materials/MaterialEditForm.tsx`) is configured to:
- Show raw HTML in monospace font (`font-mono`)
- Display helper text about HTML support
- Use larger textareas (8-16 rows depending on section)
- Allow direct HTML editing

**No changes needed to admin form** - it's already set up for HTML editing.

---

## Checklist for New Migrations

When creating a new preparation procedure migration:

- [ ] Use HTML tags (`<strong>`, `<br />`, `<ul>`, `<li>`) - NOT markdown
- [ ] Include inline styles for lists (`margin-top`, `margin-bottom`, `padding-left`)
- [ ] Use general pad descriptions with examples in parentheses
- [ ] Don't mention brand names directly (no "PACE", use examples like "e.g., TEXPAN")
- [ ] Use flexible WHERE clauses that match material ID, slug/name, or content patterns
- [ ] Include verification block at the end
- [ ] Test that HTML renders correctly (bold, bullets, spacing)
- [ ] Ensure content is educational and brand-neutral

---

## Common Patterns Reference

### List with Bold Labels
```html
<ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;">
  <li><strong>Label:</strong> Description text</li>
  <li><strong>Label:</strong> Description text</li>
</ul>
```

### Section with Heading
```html
<strong>Section Heading:</strong><ul style="margin-top: 0.5rem; margin-bottom: 0.5rem; padding-left: 1.5rem;">
  <li>Content</li>
</ul>
```

### Paragraph Break
```html
First paragraph.<br /><br />Second paragraph.
```

### Multiple Sections
```html
First section content.<br /><br /><strong>Second Section:</strong><ul>...</ul><strong>Third Section:</strong><ul>...</ul>Final guidance.
```

---

## Notes

- All HTML must be properly escaped in SQL strings (use single quotes, escape single quotes with `''`)
- Keep content educational and avoid brand-specific language
- Maintain consistency with existing formatting patterns
- Test migrations in development before production deployment

