# Quick Reference: Balanced Strategy Summary

## The Core Balance

**Educational Authority** ← → **Commercial Value for PACE**

metallography.org must:
- ✅ Read as educational/reference-grade
- ✅ Feed traffic to metallographic.com (PACE funds the site)
- ✅ Transfer domain authority appropriately
- ✅ Not compete for commercial SEO keywords

---

## Revised Link Guidelines

### Acceptable Link Counts
- **Process Guides:** 5-8 links per page ✅
- **Material-Specific Guides:** 6-8 links per page ✅
- **Equipment Guides:** 8-12 links per page ✅

**Previous recommendation (2-3 links) was too restrictive for PACE's needs.**

### Link Placement Rules
1. **First 300 words:** No commercial links (pure education)
2. **Body content:** Contextual links after educational explanation
3. **End of page:** "Resources" section with consolidated links

### Link Language (Critical Changes)

#### ❌ REMOVE
- "Shop Now" / "Buy [Product]"
- "View Consumables Shop →"
- "Recommended:" (implies endorsement)

#### ✅ USE INSTEAD
- "View Example Products"
- "Commercial examples available from suppliers"
- "Example Products:" (not "Recommended")
- "See equipment specifications"
- "For purchasing options, see supplier website"

---

## What We Change (Maintains Commercial Value)

### 1. ProductLink Component
**Change:** "View Consumables Shop →" → "commercial supplier website"

**Result:** Still links to shop, but educational language

### 2. CTA Buttons
**Change:** "Shop Sectioning Blades" → "View Example Products"

**Result:** Still drives traffic, but educational framing

### 3. Image Links
**Change:** Remove link wrapper, add link below image

**Result:** Image is illustration, link is resource

### 4. Language
**Change:** "High-quality" / "Premium" → "suitable" / "appropriate"

**Result:** Neutral educational language

---

## What We Keep (Commercial Value)

✅ **5-8 links per guide page** (contextual and helpful)
✅ **ProductLink components** (with educational language)
✅ **Equipment example links** (educational framing)
✅ **CTA sections with commercial links** (educational anchor text)
✅ **Domain authority transfer** (rel="follow" default)

---

## SEO Strategy

### Domain Roles
- **metallography.org:** Informational queries ("how to", "guide", "best practices")
- **metallographic.com:** Commercial queries ("buy", "for sale", "equipment")

### Link Attributes
- **Default (follow):** Contextual educational links → Transfers authority to PACE
- **nofollow:** Only for non-contextual promotional content (rare)
- **sponsored:** Only if explicitly paid/promotional (generally not needed)

### Anchor Text Strategy
- Use educational language that doesn't compete for commercial keywords
- "Example products" (not "buy abrasive blades")
- "Equipment specifications" (not "shop equipment")

---

## Implementation Priority

### Phase 1: Language Changes (Maintains Links)
1. "Shop [Product]" → "View Example Products"
2. "Recommended:" → "Example Products:"
3. Update ProductLink component language
4. Remove hype words ("High-quality" → "suitable")

**Impact:** Improves educational tone, maintains all commercial links

### Phase 2: Placement Optimization
1. Move links after educational content (not in first 300 words)
2. Remove image link wrappers, add links below
3. Consolidate excessive links (>12) into Resources sections

**Impact:** Better educational flow, maintains commercial value

### Phase 3: Monitoring
1. Track SEO performance for both domains
2. Monitor link click-through rates
3. Review content for educational tone
4. Adjust based on data

---

## Key Metrics

### Educational Authority ✅
- Content reads as educational
- No sales language
- Educational anchor text

### Commercial Value ✅
- 5-8 contextual links per page
- Links transfer authority (follow)
- Links appear after educational content

### SEO Performance ✅
- metallography.org: Informational queries
- metallographic.com: Commercial queries
- No keyword cannibalization
- Domain authority flows appropriately

---

## Example: Before vs After

### BEFORE (Too Commercial)
```tsx
<ProductLink 
  productName="Abrasive Blades"
  description="High-quality abrasive blades"
/>
// Renders: "Recommended: Abrasive Blades - View Consumables Shop →"

<Link href="..." className="btn-secondary">
  Shop Sectioning Blades
</Link>
```

### AFTER (Balanced)
```tsx
<ProductLink 
  productName="Abrasive Blades"
  description="Abrasive blades suitable for various materials"
/>
// Renders: "Example Products: Abrasive Blades - For purchasing options, see commercial supplier website"

<Link href="..." className="btn-secondary">
  View Example Products
</Link>
```

**Result:** Same links, same commercial value, but educational tone maintained.

---

## Summary

**We're not removing links - we're improving language and placement.**

- ✅ Keep 5-8 links per page
- ✅ Keep ProductLink components
- ✅ Keep equipment example links
- ✅ Change language to educational framing
- ✅ Move links after educational content
- ✅ Use educational anchor text

**This maintains PACE's commercial value while preserving educational authority.**

