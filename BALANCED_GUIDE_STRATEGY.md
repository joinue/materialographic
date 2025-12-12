# Balanced Guide Page Strategy: Educational Authority + Commercial Value
## Revised Recommendations for metallography.org

**Date:** 2025-12-12  
**Context:** PACE Technologies funds metallography.org. Site must maintain educational authority while strategically feeding metallographic.com without diluting brand authority or competing for commercial SEO.

---

## Core Principles (Revised)

### 1. Educational First, Commercial Second
- ✅ Content must read as educational/reference-grade
- ✅ Commercial links are acceptable when contextual and helpful
- ✅ Links should appear after educational explanation (not in first screen)
- ✅ Use educational framing for all commercial references

### 2. SEO Separation Strategy
- ✅ metallography.org targets informational queries ("how to", "guide", "best practices")
- ✅ metallographic.com targets commercial queries ("buy", "for sale", "equipment")
- ✅ Links should use educational anchor text that doesn't compete for commercial keywords
- ✅ Strategic use of rel attributes to control link equity flow

### 3. Domain Authority Transfer
- ✅ Use `rel="follow"` (default) for strategic commercial links to transfer authority
- ✅ Use `rel="nofollow"` only for truly promotional/non-contextual links
- ✅ Consider `rel="sponsored"` for explicitly promotional content (if applicable)
- ✅ Maintain internal linking structure to build metallography.org authority

### 4. Link Placement Strategy
- ✅ **First 300 words:** No commercial links (pure educational content)
- ✅ **Body content:** Contextual links after educational explanation (2-3 per section max)
- ✅ **End of page:** "Resources" or "Where to Find" section with consolidated links
- ✅ **Total per page:** 5-8 links acceptable for long guides (1000+ words), 3-5 for shorter guides

---

## Revised Link Guidelines

### Acceptable Link Patterns

#### ✅ GOOD: Contextual Educational Links
```tsx
// After explaining a technique, provide helpful resource
<p>
  Diamond polishing removes grinding scratches effectively. 
  For purchasing options and product specifications, see 
  <Link 
    href="https://shop.metallographic.com/collections/diamond-abrasives"
    target="_blank"
    rel="noopener"
    className="text-primary-600 hover:underline"
  >
    commercial examples of diamond abrasives
  </Link>.
</p>
```

**Why this works:**
- Educational anchor text ("commercial examples")
- Appears after educational explanation
- Helpful and contextual
- Transfers authority with `rel="noopener"` (follow by default)

#### ✅ GOOD: ProductLink Component (Revised)
```tsx
// Educational framing with commercial value
<div className="bg-gray-50 border-l-4 border-primary-600 p-4 my-4 rounded">
  <p className="text-sm text-gray-700 mb-2">
    <strong>Example Products:</strong> {productName}
    {description && <span className="block text-gray-600 mt-1">{description}</span>}
  </p>
  <p className="text-xs text-gray-600">
    For purchasing options and product specifications, see 
    <Link 
      href={shopUrl} 
      target="_blank" 
      rel="noopener"
      className="text-primary-600 hover:underline ml-1"
    >
      commercial supplier website
    </Link>.
  </p>
</div>
```

**Why this works:**
- "Example Products" (not "Recommended")
- Educational language throughout
- Helpful resource link
- Transfers authority appropriately

#### ✅ GOOD: Equipment Overview Links
```tsx
// After explaining equipment type, provide example
<div className="bg-gray-50 p-4 rounded-lg">
  <Image src="..." alt="Example manual abrasive cutter" />
  <h4>Manual Abrasive Cutters</h4>
  <p>Description of equipment type and applications...</p>
  <p className="text-xs text-gray-600 mt-2">
    Example equipment: 
    <Link 
      href="https://metallographic.com/metallographic-equipment/abrasive-sectioning/manual-abrasive-cutters.html"
      target="_blank"
      rel="noopener"
      className="text-primary-600 hover:underline ml-1"
    >
      see equipment specifications
    </Link>.
  </p>
</div>
```

**Why this works:**
- "Example equipment" framing
- Educational anchor text ("see equipment specifications")
- Contextual placement
- Transfers authority to commercial site

#### ❌ AVOID: Direct Commercial CTAs
```tsx
// DON'T DO THIS
<Link href="https://shop.metallographic.com/..." className="btn-primary">
  Shop Now
</Link>
<Link href="https://shop.metallographic.com/..." className="btn-secondary">
  Buy Abrasive Blades
</Link>
```

**Why this is problematic:**
- "Shop Now" / "Buy" is transactional language
- Violates educational tone
- Competes for commercial SEO intent

#### ✅ ACCEPTABLE: Educational CTA with Commercial Link
```tsx
// Educational framing with commercial value
<div className="bg-primary-50 border-l-4 border-primary-600 p-6 mt-12 rounded">
  <h2 className="text-2xl font-semibold mb-4">Explore More Procedures</h2>
  <p className="mb-4">
    Browse our comprehensive procedure guides for material-specific preparation methods.
  </p>
  <div className="flex flex-col sm:flex-row gap-4">
    <Link href="/guides?category=Material-Specific" className="btn-primary text-center">
      Browse Procedure Guides
    </Link>
    <Link 
      href="https://shop.metallographic.com/collections/abrasive-blades"
      target="_blank"
      rel="noopener"
      className="btn-secondary text-center"
    >
      View Example Products
    </Link>
  </div>
</div>
```

**Why this works:**
- "View Example Products" (not "Shop")
- Educational primary CTA first
- Commercial link secondary
- Helpful and contextual

---

## Revised Recommendations by Page Type

### Process Guides (sectioning, grinding, polishing, etc.)

**Link Strategy:**
- 3-5 commercial links per page acceptable
- Links after each major technique explanation
- End-of-page "Resources" section with consolidated links

**Example Structure:**
1. Introduction (no links)
2. Technique 1 explanation → ProductLink component (1 link)
3. Technique 2 explanation → ProductLink component (1 link)
4. Best Practices (no links)
5. Troubleshooting (no links)
6. Resources section (2-3 consolidated links)

**Total:** 4-5 links, all contextual and educational

### Material-Specific Guides (stainless-steel, aluminum, etc.)

**Link Strategy:**
- 4-6 commercial links per page acceptable
- Links after each preparation step (sectioning, mounting, grinding, polishing, etching)
- End-of-page "Resources" section

**Example Structure:**
1. Introduction (no links)
2. Sectioning → ProductLink (1 link)
3. Mounting → ProductLink (1 link)
4. Grinding → ProductLink (1 link)
5. Polishing → ProductLink (1 link)
6. Etching → ProductLink (1 link)
7. Resources section (1-2 consolidated links)

**Total:** 6-7 links, all contextual

### Equipment Overview Guides

**Link Strategy:**
- 8-12 commercial links acceptable (this is equipment-focused)
- Each equipment type can have 1 example link
- End-of-page "Equipment Resources" section

**Example Structure:**
1. Introduction (no links)
2. Sectioning Equipment → 2-3 example links
3. Mounting Equipment → 2-3 example links
4. Grinding/Polishing Equipment → 2-3 example links
5. Microscopy Equipment → 1-2 example links
6. Equipment Resources section (1-2 consolidated links)

**Total:** 10-14 links, all contextual and educational

---

## SEO Strategy: Link Attributes

### When to Use `rel="follow"` (Default)
- ✅ Contextual links after educational explanation
- ✅ "Example products" / "Commercial examples" links
- ✅ Equipment specification links
- ✅ Helpful resource links

**Purpose:** Transfer domain authority from metallography.org to metallographic.com

### When to Use `rel="nofollow"`
- ❌ Generally avoid for PACE links (we want to transfer authority)
- ✅ Only for truly non-contextual promotional content (if any)
- ✅ Third-party links that aren't PACE-related

### When to Use `rel="sponsored"`
- ⚠️ Only if links are explicitly paid/promotional
- ⚠️ Generally not needed if links are contextual and educational
- ✅ Use if PACE has specific advertising agreements

**Current Recommendation:** Don't use `rel="sponsored"` for contextual educational links. Use default (follow) to transfer authority.

---

## Revised ProductLink Component

```tsx
// components/ProductLink.tsx (Revised)
import Link from 'next/link'

interface ProductLinkProps {
  productName: string
  href?: string
  description?: string
}

export default function ProductLink({ productName, href, description }: ProductLinkProps) {
  const shopUrl = href || `https://shop.metallographic.com/search?q=${encodeURIComponent(productName)}`
  
  return (
    <div className="bg-gray-50 border-l-4 border-primary-600 p-4 my-4 rounded">
      <p className="text-sm text-gray-700 mb-2">
        <strong>Example Products:</strong> {productName}
        {description && (
          <span className="block text-gray-600 mt-1">
            {description.replace(/high-quality|premium|top-rated/gi, 'suitable')}
          </span>
        )}
      </p>
      <p className="text-xs text-gray-600">
        For purchasing options and product specifications, see{' '}
        <Link 
          href={shopUrl}
          target="_blank"
          rel="noopener"
          className="text-primary-600 hover:underline font-semibold"
        >
          commercial supplier website
        </Link>.
      </p>
    </div>
  )
}
```

**Key Changes:**
- "Example Products" (not "Recommended")
- Educational language ("commercial supplier website")
- Removes hype words ("high-quality", "premium")
- Uses `rel="noopener"` (follow by default for authority transfer)

---

## Revised CTA Section Template

```tsx
// Acceptable CTA section with commercial value
<div className="bg-primary-50 border-l-4 border-primary-600 p-6 mt-12 rounded">
  <h2 className="text-2xl font-semibold mb-4">Explore More Procedures</h2>
  <p className="mb-4">
    Browse our comprehensive procedure guides for material-specific preparation methods 
    and get personalized recommendations.
  </p>
  <div className="flex flex-col sm:flex-row gap-4">
    <Link 
      href="/guides?category=Material-Specific"
      className="btn-primary text-center"
    >
      Browse Procedure Guides
    </Link>
    <Link 
      href="https://shop.metallographic.com/collections/abrasive-blades"
      target="_blank"
      rel="noopener"
      className="btn-secondary text-center"
    >
      View Example Products
    </Link>
    <Link 
      href="https://metallographic.com/equipment"
      target="_blank"
      rel="noopener"
      className="btn-secondary text-center"
    >
      Browse Equipment Examples
    </Link>
  </div>
</div>
```

**Key Changes:**
- "View Example Products" (not "Shop Consumables")
- "Browse Equipment Examples" (not "Browse Equipment")
- Educational primary CTA first
- Commercial links secondary but present

---

## Image Linking Strategy

### ✅ ACCEPTABLE: Image with Educational Caption + Link Below
```tsx
<div className="my-6 rounded-lg overflow-hidden max-w-2xl mx-auto">
  <Image
    src="/images/consumables/sectioning-cover.webp"
    alt="Abrasive cutting blades for metallographic sectioning"
    width={600}
    height={450}
    className="w-full h-auto"
  />
  <p className="text-sm text-gray-600 mt-2 italic text-center">
    Precision abrasive cut-off blades designed for metallographic sectioning. 
    Proper blade selection minimizes heat generation and deformation during cutting.
  </p>
  <p className="text-xs text-gray-500 mt-1 text-center">
    <Link 
      href="https://shop.metallographic.com/collections/abrasive-blades"
      target="_blank"
      rel="noopener"
      className="text-primary-600 hover:underline"
    >
      View example products and specifications
    </Link>
  </p>
</div>
```

**Why this works:**
- Image is not clickable (no link wrapper)
- Educational caption explains the image
- Link below image with educational anchor text
- Helpful and contextual

### ❌ AVOID: Clickable Product Images
```tsx
// DON'T: Image wrapped in link
<Link href="https://shop.metallographic.com/...">
  <Image src="..." alt="..." />
</Link>
```

**Why this is problematic:**
- Makes image feel like advertisement
- Violates educational tone
- Better to have link below image

---

## Revised Issue Severity

### Critical Issues (Fix Immediately)
1. ❌ "Shop Now" / "Buy [Product]" buttons → Change to "View Example Products"
2. ❌ Commercial links in first 300 words → Move after educational content
3. ❌ "Recommended:" language → Change to "Example Products:"

### High Priority (Fix Soon)
1. ⚠️ ProductLink component language → Update to educational framing
2. ⚠️ Image link wrappers → Remove, add link below image
3. ⚠️ "High-quality" / "Premium" language → Use neutral descriptions

### Medium Priority (Fix When Possible)
1. ⚠️ Consolidate excessive links (if >12 per page) → Group in Resources section
2. ⚠️ Review anchor text → Ensure educational language

### Low Priority (Nice to Have)
1. ✅ Add "Resources" section template for consistency
2. ✅ Standardize link placement patterns

---

## Key Metrics to Monitor

### Educational Authority
- ✅ Content reads as educational (not commercial)
- ✅ No sales language in headings or body text
- ✅ Educational anchor text for all links

### Commercial Value
- ✅ 5-8 contextual links per guide page (process/material guides)
- ✅ 8-12 contextual links per equipment guide
- ✅ Links transfer authority (rel="follow" default)
- ✅ Links appear after educational content

### SEO Performance
- ✅ metallography.org ranks for informational queries
- ✅ metallographic.com ranks for commercial queries
- ✅ No keyword cannibalization
- ✅ Domain authority flows appropriately

---

## Implementation Priority

### Phase 1: Quick Wins (Maintain Commercial Value)
1. Change "Shop [Product]" to "View Example Products"
2. Update ProductLink component language
3. Remove link wrappers from images, add links below
4. Change "Recommended:" to "Example Products:"

**Result:** Maintains link count and commercial value, improves educational tone

### Phase 2: Optimization (Balance)
1. Review link placement (ensure after educational content)
2. Consolidate excessive links (>12) into Resources sections
3. Standardize anchor text to educational language
4. Add Resources section template

**Result:** Better balance of educational authority and commercial value

### Phase 3: Monitoring (Long-term)
1. Track SEO performance for both domains
2. Monitor link click-through rates
3. Review content for educational tone
4. Adjust strategy based on data

---

## Summary: The Balanced Approach

### What We Keep
- ✅ 5-8 commercial links per guide page (contextual)
- ✅ ProductLink components (with educational language)
- ✅ Equipment example links (educational framing)
- ✅ CTA sections with commercial links (educational anchor text)

### What We Change
- ❌ "Shop Now" / "Buy" buttons → "View Example Products"
- ❌ "Recommended:" → "Example Products:"
- ❌ Clickable product images → Images with links below
- ❌ Commercial links in first 300 words → Move after content
- ❌ "High-quality" / "Premium" → Neutral descriptions

### The Result
- ✅ Educational authority maintained
- ✅ Commercial value preserved (5-8 links per page)
- ✅ Domain authority transferred appropriately
- ✅ No SEO competition between domains
- ✅ PACE gets value from funding the site

---

**This balanced approach maintains educational integrity while ensuring PACE receives appropriate commercial value from funding metallography.org.**

