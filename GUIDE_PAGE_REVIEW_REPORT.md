# Metallography.org Guide Page Review Report
## SEO + Trust + Brand Architecture Analysis

**Review Date:** 2025-12-12  
**Reviewer:** AI Assistant  
**Scope:** Comprehensive review of guide pages for educational intent, SEO separation, linking hygiene, and brand architecture compliance

---

## Executive Summary

This report reviews guide pages on metallography.org against criteria for educational intent, SEO separation from commercial domains, outbound linking hygiene, and brand architecture. 

**Important Context:** PACE Technologies funds metallography.org. The site must maintain educational authority while strategically feeding metallographic.com without diluting brand authority or competing for commercial SEO. This review balances educational integrity with commercial value.

### Overall Assessment

**Status:** ⚠️ **Needs Refinement (Balanced Approach)**

Guide pages contain some commercial language and link patterns that need refinement. However, commercial links are acceptable and necessary when contextual and educational. The focus is on **improving language and placement** rather than removing links entirely.

**See `BALANCED_GUIDE_STRATEGY.md` for revised recommendations that balance educational authority with PACE's commercial needs.**

---

## Review Methodology

### Pages Reviewed
1. `/guides/sectioning` - Process guide
2. `/guides/equipment-overview` - Basics guide  
3. `/guides/stainless-steel-preparation` - Material-specific guide
4. `/guides/polishing-methods` - Process guide
5. `/guides/failure-analysis` - Application-specific guide

### Automated Checks Applied
- Commercial CTA Detector (buy, shop, price, discount, deal)
- Outbound Link Count (metallographic.com + shop.metallographic.com)
- Anchor Text Quality Analysis
- Heading Commerciality Check
- Brand Neutrality Analysis
- Content Length Analysis
- Canonical Tag Verification

---

## Detailed Page Reviews

### 1. `/guides/sectioning`

**URL:** `https://metallography.org/guides/sectioning`

#### Scorecard

| Category | Score | Max | Status |
|----------|-------|-----|--------|
| Educational Tone & Intent | 18 | 25 | ⚠️ WARN |
| SEO Intent Separation | 20 | 25 | ✅ PASS |
| Outbound Linking Hygiene | 12 | 20 | ⚠️ WARN |
| On-Page SEO Quality | 14 | 15 | ✅ PASS |
| Structure & UX | 15 | 15 | ✅ PASS |
| **TOTAL** | **79** | **100** | ⚠️ **NEEDS IMPROVEMENT** |

#### Top 10 Issues

1. **CRITICAL: Commercial CTA in Footer Section**
   - **Location:** Lines 1009-1010
   - **Snippet:** `Shop Sectioning Blades` button linking to `https://shop.metallographic.com/collections/abrasive-blades`
   - **Why it matters:** Direct commercial call-to-action violates educational intent. Users should learn first, then optionally find commercial examples.
   - **Proposed change:** Replace with: "For purchasing options, see commercial examples at [supplier website]" or remove entirely. Move to end of page after all educational content.

2. **HIGH: ProductLink Component with "View Consumables Shop"**
   - **Location:** Lines 301-305, 598-602
   - **Snippet:** `<ProductLink productName="Abrasive Cut-Off Blades" href="https://shop.metallographic.com/collections/abrasive-blades" description="High-quality abrasive blades for all material types and applications" />`
   - **Why it matters:** "View Consumables Shop" is transactional language. ProductLink component uses commercial anchor text.
   - **Proposed change:** Rewrite ProductLink component to use educational language: "Example products available from suppliers" or "Commercial examples (PACE Technologies)"

3. **HIGH: Image Links to Shop in First Screen**
   - **Location:** Lines 96-111 (Introduction section)
   - **Snippet:** Image wrapped in Link to `https://shop.metallographic.com/collections/abrasive-blades`
   - **Why it matters:** Commercial link appears in first 300 words, violating "educational content first" principle.
   - **Proposed change:** Remove link wrapper from image, or move image below educational explanation. Add caption: "Example abrasive blades (commercial examples available from suppliers)"

4. **MEDIUM: Multiple Product Links Throughout Page**
   - **Location:** Lines 193-210, 434-466, 301-305, 598-602
   - **Snippet:** 4+ direct links to shop.metallographic.com collections
   - **Why it matters:** Page has 5+ external commercial links, exceeding recommended maximum of 3 for long pages.
   - **Proposed change:** Consolidate to 1-2 links at end of page. Use text like "For purchasing options and commercial examples, see [supplier]"

5. **MEDIUM: SKU Table Without Educational Context**
   - **Location:** Lines 219-282
   - **Snippet:** Large table with MAX-E250, MAX-C300, etc. SKUs
   - **Why it matters:** Looks like product catalog. Needs clear educational framing.
   - **Proposed change:** Add header: "Example Blade Designations (Commercial Examples)" and note: "These are example designations. Consult suppliers for current product availability."

6. **LOW: "Recommended Equipment" Section with Direct Links**
   - **Location:** Lines 922-988
   - **Snippet:** Equipment cards with "View Abrasive Cut-Off Machines →" links
   - **Why it matters:** Section title "Recommended Equipment" implies endorsement. Links are appropriate but should be contextualized.
   - **Proposed change:** Change title to "Example Equipment" or "Equipment Examples". Add note: "These are examples of equipment types. Consult manufacturers for specifications."

7. **LOW: "Explore More Procedures" CTA Section**
   - **Location:** Lines 991-1020
   - **Snippet:** Contains "Shop Sectioning Blades" button
   - **Why it matters:** Mixes educational navigation with commercial CTAs.
   - **Proposed change:** Separate educational links from commercial links. Move commercial link to separate section titled "Commercial Resources" at very end.

8. **LOW: ProductLink Description Uses "High-quality"**
   - **Location:** Line 304
   - **Snippet:** `description="High-quality abrasive blades for all material types and applications"`
   - **Why it matters:** "High-quality" is product hype language, not educational.
   - **Proposed change:** Use neutral language: "Abrasive blades suitable for various material types and applications"

9. **LOW: Missing rel="sponsored" on Commercial Links**
   - **Location:** All shop.metallographic.com links
   - **Snippet:** Links use `rel="noopener noreferrer"` but not `rel="sponsored"`
   - **Why it matters:** If these are affiliate or promotional links, should be marked. However, if purely informational, may not need sponsored tag.
   - **Proposed change:** Review link intent. If promotional, add `rel="sponsored"`. If purely informational examples, current setup is acceptable.

10. **LOW: Canonical Tag Present and Correct**
    - **Location:** Metadata (via getGuideMetadata)
    - **Status:** ✅ Self-canonical to metallography.org
    - **Why it matters:** Prevents duplicate content issues.
    - **Action:** No change needed.

#### Patch Plan

**Quick Fixes (≤30 min):**
1. Remove "Shop Sectioning Blades" button from CTA section (line 1009)
2. Update ProductLink component anchor text from "View Consumables Shop →" to "See commercial examples →"
3. Remove link wrapper from first image (lines 96-111), keep image but remove href
4. Change "Recommended Equipment" to "Example Equipment" (line 923)

**Medium Fixes (≤2 hrs):**
1. Rewrite ProductLink component to use educational language
2. Consolidate commercial links to 1-2 at end of page
3. Add educational context to SKU table (header + note)
4. Separate commercial links section from educational navigation

**Structural Fixes (needs discussion):**
1. Review ProductLink component architecture - should it exist on .org domain?
2. Establish sitewide link policy: max 2-3 commercial links per guide page
3. Create "Commercial Resources" section template for consistent placement

#### Suggested Rewrite Blocks

**ProductLink Component (components/ProductLink.tsx):**
```tsx
// BEFORE:
<Link className="text-sm text-primary-600 hover:text-primary-700 font-semibold">
  View Consumables Shop →
</Link>

// AFTER:
<div className="bg-gray-50 border-l-4 border-gray-400 p-4 my-4 rounded">
  <p className="text-sm text-gray-700 mb-2">
    <strong>Example Products:</strong> {productName}
    {description && <span className="block text-gray-600 mt-1">{description}</span>}
  </p>
  <p className="text-xs text-gray-600">
    Commercial examples available from suppliers. For purchasing options, see 
    <Link href={shopUrl} target="_blank" rel="noopener noreferrer" className="text-primary-600 hover:underline ml-1">
      supplier website
    </Link>.
  </p>
</div>
```

**CTA Section (lines 991-1020):**
```tsx
// BEFORE:
<Link href="https://shop.metallographic.com/collections/abrasive-blades" className="btn-secondary">
  Shop Sectioning Blades
</Link>

// AFTER:
// Remove commercial CTA entirely, or move to separate "Commercial Resources" section at very end:
<div className="mt-12 pt-8 border-t border-gray-300">
  <h3 className="text-lg font-semibold mb-2">Commercial Resources</h3>
  <p className="text-sm text-gray-600 mb-3">
    For purchasing options and commercial examples of sectioning blades and equipment, 
    see <Link href="https://shop.metallographic.com/collections/abrasive-blades" target="_blank" rel="noopener noreferrer" className="text-primary-600 hover:underline">supplier website</Link>.
  </p>
</div>
```

---

### 2. `/guides/equipment-overview`

**URL:** `https://metallography.org/guides/equipment-overview`

#### Scorecard

| Category | Score | Max | Status |
|----------|-------|-----|--------|
| Educational Tone & Intent | 22 | 25 | ✅ PASS |
| SEO Intent Separation | 23 | 25 | ✅ PASS |
| Outbound Linking Hygiene | 8 | 20 | ❌ FAIL |
| On-Page SEO Quality | 15 | 15 | ✅ PASS |
| Structure & UX | 15 | 15 | ✅ PASS |
| **TOTAL** | **83** | **100** | ⚠️ **NEEDS IMPROVEMENT** |

#### Top 10 Issues

1. **CRITICAL: Excessive Outbound Links (20+ links to metallographic.com)**
   - **Location:** Throughout page, lines 146-942
   - **Snippet:** Every equipment card has "View [Equipment] →" link to metallographic.com
   - **Why it matters:** Page has 20+ commercial links, far exceeding recommended maximum of 3. This makes the page look like a product catalog.
   - **Proposed change:** Keep 2-3 example links at end of page. Remove individual links from equipment cards. Add general note: "Equipment examples available from various manufacturers. For specifications and purchasing, consult manufacturer websites."

2. **HIGH: Equipment Cards Function as Product Listings**
   - **Location:** Lines 142-220, 241-317, 334-410, etc.
   - **Snippet:** Each equipment type has dedicated card with image, description, and "View [Equipment] →" link
   - **Why it matters:** Structure mimics e-commerce product listings, not educational content.
   - **Proposed change:** Convert to educational format: remove individual links, use generic images or diagrams, focus on equipment types and applications rather than specific products.

3. **MEDIUM: "Get Personalized Equipment Recommendations" CTA**
   - **Location:** Lines 1039-1051
   - **Snippet:** Prominent CTA box linking to `/builder` tool
   - **Why it matters:** Builder tool may lead to commercial recommendations. Needs review to ensure it's educational.
   - **Proposed change:** Review builder tool. If it leads to product recommendations, reframe as "Equipment Selection Guide" with educational focus.

4. **MEDIUM: PACE Brand Mentioned in Introduction**
   - **Location:** Line 89
   - **Snippet:** "with examples of PACE Technologies equipment"
   - **Why it matters:** Brand mention is acceptable but should be contextualized as example.
   - **Proposed change:** "This guide provides an overview of essential equipment categories, using PACE Technologies equipment as examples. Equipment types and purposes remain consistent across manufacturers."

5. **LOW: "View [Equipment] →" Anchor Text**
   - **Location:** Throughout (e.g., line 178, 216, 275)
   - **Snippet:** "View Manual Cutters →", "View Automated Cutters →"
   - **Why it matters:** "View" implies product browsing, not educational reference.
   - **Proposed change:** Remove links entirely, or use: "Example equipment: [manufacturer website]" at end of section.

6. **LOW: Equipment Images Linked to Commercial Pages**
   - **Location:** All equipment images (lines 145-160, 184-199, etc.)
   - **Snippet:** Images wrapped in Links to metallographic.com product pages
   - **Why it matters:** Every image is a commercial link, creating excessive linking.
   - **Proposed change:** Remove link wrappers. Use images for illustration only.

7. **LOW: YouTube Video Reference**
   - **Location:** Lines 101-113
   - **Snippet:** Links to PACE Technologies YouTube channel
   - **Why it matters:** Educational video content is acceptable, but should be clearly educational.
   - **Proposed change:** ✅ Acceptable as-is. Educational video content is appropriate.

8. **LOW: "Ready to Learn More?" Section**
   - **Location:** Lines 1130-1156
   - **Snippet:** Internal navigation links only - ✅ Good
   - **Why it matters:** Educational navigation is appropriate.
   - **Proposed change:** ✅ No change needed.

9. **LOW: Canonical Tag**
   - **Status:** ✅ Self-canonical
   - **Action:** ✅ No change needed.

10. **LOW: Content Length**
    - **Status:** ✅ Comprehensive (1000+ words)
    - **Action:** ✅ No change needed.

#### Patch Plan

**Quick Fixes (≤30 min):**
1. Remove all "View [Equipment] →" links from equipment cards (20+ links)
2. Remove link wrappers from equipment images
3. Add note at top: "This guide uses equipment examples for illustration. Consult manufacturers for current specifications."

**Medium Fixes (≤2 hrs):**
1. Restructure equipment cards to remove commercial appearance
2. Add single "Equipment Resources" section at end with 2-3 example links
3. Review and potentially reframe builder tool CTA

**Structural Fixes (needs discussion):**
1. Decide if equipment overview should link to commercial sites at all
2. Consider creating generic equipment diagrams instead of product photos
3. Establish policy: equipment guides should be brand-neutral with minimal commercial links

#### Suggested Rewrite Blocks

**Equipment Card Template:**
```tsx
// BEFORE:
<div className="bg-gray-50 p-4 rounded-lg">
  <Link href="https://metallographic.com/..." target="_blank" rel="noopener noreferrer">
    <Image src="..." alt="..." />
  </Link>
  <h4>Manual Abrasive Cutters</h4>
  <p>Description...</p>
  <Link href="https://metallographic.com/..." className="text-primary-600">
    View Manual Cutters →
  </Link>
</div>

// AFTER:
<div className="bg-gray-50 p-4 rounded-lg">
  <Image src="..." alt="Example manual abrasive cutter for metallographic sectioning" />
  <h4>Manual Abrasive Cutters</h4>
  <p>Description...</p>
  <p className="text-xs text-gray-600 mt-2">
    Example equipment type. Various manufacturers offer manual abrasive cutters with similar capabilities.
  </p>
</div>
```

**End-of-Page Resources Section:**
```tsx
<div className="mt-12 pt-8 border-t border-gray-300">
  <h3 className="text-lg font-semibold mb-3">Equipment Resources</h3>
  <p className="text-sm text-gray-600 mb-3">
    For detailed specifications and purchasing options, consult equipment manufacturers. 
    Example manufacturers include:
  </p>
  <ul className="text-sm text-gray-700 space-y-1">
    <li>• <Link href="https://metallographic.com/equipment" target="_blank" rel="noopener noreferrer" className="text-primary-600 hover:underline">PACE Technologies</Link> - Example equipment specifications</li>
    <li>• Other manufacturers - Consult industry directories</li>
  </ul>
</div>
```

---

### 3. `/guides/stainless-steel-preparation`

**URL:** `https://metallography.org/guides/stainless-steel-preparation`

#### Scorecard

| Category | Score | Max | Status |
|----------|-------|-----|--------|
| Educational Tone & Intent | 20 | 25 | ⚠️ WARN |
| SEO Intent Separation | 22 | 25 | ✅ PASS |
| Outbound Linking Hygiene | 10 | 20 | ⚠️ WARN |
| On-Page SEO Quality | 15 | 15 | ✅ PASS |
| Structure & UX | 15 | 15 | ✅ PASS |
| **TOTAL** | **82** | **100** | ⚠️ **NEEDS IMPROVEMENT** |

#### Top 10 Issues

1. **CRITICAL: "Shop Consumables" CTA Button**
   - **Location:** Line 466
   - **Snippet:** `<Link href="https://shop.metallographic.com" className="btn-secondary">Shop Consumables</Link>`
   - **Why it matters:** Direct commercial CTA violates educational intent. "Shop" is transactional language.
   - **Proposed change:** Remove button or replace with: "For purchasing options, see commercial examples at [supplier website]"

2. **HIGH: Multiple ProductLink Components (6 instances)**
   - **Location:** Lines 225-229, 247-251, 291-295, 359-363, 364-368, 428-432
   - **Snippet:** ProductLink components after each preparation step
   - **Why it matters:** 6 commercial links exceed recommended maximum. ProductLink uses "View Consumables Shop" language.
   - **Proposed change:** Consolidate to 1-2 links at end. Rewrite ProductLink component language.

3. **HIGH: Image Links to Shop in Content**
   - **Location:** Lines 199-216, 261-277, 304-342, 395-412
   - **Snippet:** Multiple images wrapped in links to shop.metallographic.com
   - **Why it matters:** Images function as product advertisements, not educational illustrations.
   - **Proposed change:** Remove link wrappers. Use images for illustration only. Add caption: "Example [product type] (commercial examples available)"

4. **MEDIUM: ProductLink Description Uses "High-quality"**
   - **Location:** Lines 228, 294, 362, 367
   - **Snippet:** `description="High-quality abrasive blades..."`, `description="Premium SiC papers..."`
   - **Why it matters:** "High-quality" and "Premium" are product hype terms, not educational.
   - **Proposed change:** Use neutral language: "Abrasive blades suitable for...", "SiC papers in various grit sizes..."

5. **MEDIUM: "Browse Equipment" Link in CTA**
   - **Location:** Line 474
   - **Snippet:** Links to `https://metallographic.com/equipment`
   - **Why it matters:** Acceptable if contextualized, but in CTA section may appear promotional.
   - **Proposed change:** Move to separate "Resources" section, or reframe as "Example equipment specifications"

6. **LOW: MaterialTooltip Usage**
   - **Location:** Throughout (e.g., lines 164, 179, 184)
   - **Snippet:** `<MaterialTooltip materialName="304">304 Stainless Steel</MaterialTooltip>`
   - **Why it matters:** ✅ Good - educational tooltips enhance content.
   - **Proposed change:** ✅ No change needed.

7. **LOW: Related Guides Section**
   - **Location:** Lines 480-496
   - **Snippet:** Internal links to other guides - ✅ Good
   - **Why it matters:** Educational navigation is appropriate.
   - **Proposed change:** ✅ No change needed.

8. **LOW: Canonical Tag**
   - **Status:** ✅ Self-canonical
   - **Action:** ✅ No change needed.

9. **LOW: Content Structure**
   - **Status:** ✅ Good - follows guide structure (intro, methods, troubleshooting)
   - **Action:** ✅ No change needed.

10. **LOW: SEO Keywords**
    - **Status:** ✅ Appropriate - targets informational queries
    - **Action:** ✅ No change needed.

#### Patch Plan

**Quick Fixes (≤30 min):**
1. Remove "Shop Consumables" button (line 466)
2. Remove link wrappers from all product images
3. Change ProductLink descriptions from "High-quality" to neutral language

**Medium Fixes (≤2 hrs):**
1. Consolidate 6 ProductLink components to 1-2 at end of page
2. Rewrite ProductLink component to use educational language
3. Create "Commercial Resources" section at end

**Structural Fixes (needs discussion):**
1. Review ProductLink component - should it exist on .org?
2. Establish policy: material-specific guides should have max 2 commercial links

---

### 4. `/guides/polishing-methods`

**URL:** `https://metallography.org/guides/polishing-methods`

#### Scorecard

| Category | Score | Max | Status |
|----------|-------|-----|--------|
| Educational Tone & Intent | 19 | 25 | ⚠️ WARN |
| SEO Intent Separation | 23 | 25 | ✅ PASS |
| Outbound Linking Hygiene | 11 | 20 | ⚠️ WARN |
| On-Page SEO Quality | 15 | 15 | ✅ PASS |
| Structure & UX | 15 | 15 | ✅ PASS |
| **TOTAL** | **83** | **100** | ⚠️ **NEEDS IMPROVEMENT** |

#### Top 10 Issues

1. **CRITICAL: Image Link in Introduction (First Screen)**
   - **Location:** Lines 98-113
   - **Snippet:** Image in introduction section linked to `https://shop.metallographic.com/collections/final-polishing`
   - **Why it matters:** Commercial link appears in first 300 words, violating "educational content first" principle.
   - **Proposed change:** Remove link wrapper. Keep image for illustration. Add caption: "Example final polishing consumables (commercial examples available from suppliers)"

2. **HIGH: Multiple Product Image Links**
   - **Location:** Lines 132-186 (3 diamond product images), throughout page
   - **Snippet:** Each product image wrapped in link to shop.metallographic.com
   - **Why it matters:** Images function as product advertisements.
   - **Proposed change:** Remove all link wrappers. Use images for illustration.

3. **MEDIUM: ProductLink Components Throughout**
   - **Location:** Multiple instances throughout page
   - **Snippet:** ProductLink after each polishing method section
   - **Why it matters:** Excessive commercial linking.
   - **Proposed change:** Consolidate to end of page.

4. **LOW: YouTube Video**
   - **Location:** Lines 195-199
   - **Snippet:** Educational video content - ✅ Acceptable
   - **Why it matters:** Educational content is appropriate.
   - **Proposed change:** ✅ No change needed.

5. **LOW: Content Quality**
   - **Status:** ✅ Comprehensive educational content
   - **Action:** ✅ No change needed.

---

### 5. `/guides/failure-analysis`

**URL:** `https://metallography.org/guides/failure-analysis`

#### Scorecard

| Category | Score | Max | Status |
|----------|-------|-----|--------|
| Educational Tone & Intent | 24 | 25 | ✅ PASS |
| SEO Intent Separation | 24 | 25 | ✅ PASS |
| Outbound Linking Hygiene | 20 | 20 | ✅ PASS |
| On-Page SEO Quality | 15 | 15 | ✅ PASS |
| Structure & UX | 15 | 15 | ✅ PASS |
| **TOTAL** | **98** | **100** | ✅ **EXCELLENT** |

#### Notes

✅ **This page is a model for other guides.** It:
- Contains no commercial CTAs
- Has no outbound links to commercial sites
- Uses only internal educational links
- Maintains pure educational tone
- Has excellent structure and content

**Recommendation:** Use this page as a template for refactoring other guides.

---

## Sitewide Issues

### 1. ProductLink Component

**File:** `components/ProductLink.tsx`

**Issues:**
- Uses "View Consumables Shop →" anchor text (commercial)
- "Recommended:" label implies endorsement
- Links directly to shop.metallographic.com

**Proposed Fix:**
```tsx
// Rewrite to educational language
<div className="bg-gray-50 border-l-4 border-gray-400 p-4 my-4 rounded">
  <p className="text-sm text-gray-700 mb-2">
    <strong>Example Products:</strong> {productName}
    {description && <span className="block text-gray-600 mt-1">{description}</span>}
  </p>
  <p className="text-xs text-gray-600">
    Commercial examples available from suppliers. For purchasing options, see 
    <Link href={shopUrl} target="_blank" rel="noopener noreferrer" className="text-primary-600 hover:underline ml-1">
      supplier website
    </Link>.
  </p>
</div>
```

### 2. CTA Sections

**Pattern Found:** Multiple guide pages have CTA sections with "Shop [Product]" buttons.

**Fix:** Remove commercial CTAs or move to separate "Commercial Resources" section at very end of page.

### 3. Image Linking

**Pattern Found:** Product images wrapped in links to shop.metallographic.com throughout guide pages.

**Fix:** Remove link wrappers. Use images for illustration only. Add educational captions.

### 4. Link Count Policy

**Current:** No enforced limit, pages have 5-20+ commercial links.

**Proposed Policy:**
- Maximum 2-3 commercial links per guide page
- Links must appear after all educational content
- Links must use educational language ("commercial examples", "supplier website")
- No commercial CTAs ("Shop", "Buy", "Add to cart")

---

## Automated Test Results

### Commercial CTA Detector

**FAIL Pages:**
- `/guides/sectioning` - "Shop Sectioning Blades"
- `/guides/stainless-steel-preparation` - "Shop Consumables"
- `/guides/aerospace-applications` - "Shop Consumables"
- `/guides/additive-manufacturing-preparation` - "Shop Consumables"
- `/guides/composites-preparation` - "Shop Consumables"
- `/guides/carbon-steel-preparation` - "Shop Consumables"
- `/guides/pcb-chip-preparation` - "Shop Consumables"

**WARN Pages:**
- Multiple pages use "High-quality", "Premium" in ProductLink descriptions

### Outbound Link Count

**FAIL Pages (>5 links):**
- `/guides/equipment-overview` - 20+ links
- `/guides/sectioning` - 8 links
- `/guides/stainless-steel-preparation` - 6 links
- `/guides/polishing-methods` - 6+ links

**WARN Pages (3-5 links):**
- Multiple material-specific guides

### Anchor Text Quality

**FAIL Instances:**
- "View Consumables Shop →" (ProductLink component)
- "Shop [Product]" buttons
- "View [Equipment] →" (equipment overview)

**WARN Instances:**
- "Browse Equipment" (acceptable if contextualized)

### Heading Commerciality

**Status:** ✅ **PASS** - No commercial headings found

### Canonical Tags

**Status:** ✅ **PASS** - All pages self-canonical to metallography.org

---

## Recommendations Summary

### Immediate Actions (Critical)

1. **Remove all "Shop [Product]" CTA buttons** from guide pages
2. **Rewrite ProductLink component** to use educational language
3. **Remove link wrappers from product images** - use images for illustration only
4. **Consolidate commercial links** to 1-2 at end of each page

### Short-term Actions (High Priority)

1. **Reduce outbound links** to maximum 2-3 per page
2. **Create "Commercial Resources" section template** for consistent placement
3. **Review equipment-overview page** - consider removing most commercial links
4. **Update all ProductLink instances** to use new educational language

### Long-term Actions (Structural)

1. **Establish sitewide link policy** document
2. **Create guide page template** based on failure-analysis page (excellent example)
3. **Review builder tool** - ensure it's educational, not commercial
4. **Consider brand-neutral equipment images** instead of product photos

---

## Compliance Checklist

### Educational Intent & Tone
- ❌ Remove sales language ("Shop", "Buy", "High-quality")
- ✅ Use educational language ("Example products", "Commercial examples")
- ❌ Remove pricing/SKU lists (or reframe as examples)

### SEO Intent Separation
- ✅ Target informational queries ("how to", "guide", "best practices")
- ✅ Avoid commercial queries ("buy", "for sale", "price")
- ✅ Maintain educational keyword focus

### Outbound Linking Hygiene
- ❌ Reduce links to 2-3 per page maximum
- ❌ Move links after educational content
- ❌ Use educational anchor text
- ✅ Add rel="noopener noreferrer" (already present)

### On-Page SEO Quality
- ✅ Unique title tags
- ✅ Meta descriptions
- ✅ Single H1 per page
- ✅ Logical heading structure
- ✅ Descriptive alt text

### Structure & UX
- ✅ Internal navigation
- ✅ Related guides links
- ❌ Separate commercial links from educational navigation

---

## Next Steps

1. **Review this report** with stakeholders
2. **Prioritize fixes** based on severity
3. **Implement quick fixes** (≤30 min items) immediately
4. **Schedule medium fixes** (≤2 hrs items) for next sprint
5. **Plan structural fixes** (needs discussion) for future roadmap
6. **Apply fixes to all guide pages** using this report as template

---

**Report End**

