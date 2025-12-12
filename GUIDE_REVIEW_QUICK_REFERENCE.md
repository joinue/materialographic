# Guide Page Review - Quick Reference

## Critical Issues Found (Fix Immediately)

### 1. Commercial CTAs
**Pages Affected:** sectioning, stainless-steel-preparation, aerospace-applications, additive-manufacturing-preparation, composites-preparation, carbon-steel-preparation, pcb-chip-preparation

**Issue:** "Shop [Product]" buttons in CTA sections

**Fix:** Remove or replace with: "For purchasing options, see commercial examples at [supplier website]"

### 2. ProductLink Component
**File:** `components/ProductLink.tsx`

**Issue:** Uses "View Consumables Shop →" (commercial language)

**Fix:** Rewrite to educational language (see full report for code)

### 3. Excessive Outbound Links
**Pages Affected:** equipment-overview (20+), sectioning (8), stainless-steel-preparation (6), polishing-methods (6+)

**Issue:** Too many commercial links (max should be 2-3)

**Fix:** Consolidate to 1-2 links at end of page in "Commercial Resources" section

### 4. Image Links in First Screen
**Pages Affected:** sectioning, polishing-methods, stainless-steel-preparation

**Issue:** Product images linked to shop in introduction section (first 300 words)

**Fix:** Remove link wrappers, keep images for illustration only

---

## Scorecard Summary

| Page | Score | Status | Main Issues |
|------|-------|--------|-------------|
| failure-analysis | 98/100 | ✅ Excellent | None - use as template |
| equipment-overview | 83/100 | ⚠️ Needs Work | 20+ commercial links |
| polishing-methods | 83/100 | ⚠️ Needs Work | Image links in intro, multiple ProductLinks |
| sectioning | 79/100 | ⚠️ Needs Work | Commercial CTA, multiple links |
| stainless-steel-preparation | 82/100 | ⚠️ Needs Work | "Shop Consumables" CTA, 6 ProductLinks |

---

## Automated Test Results

### Commercial CTA Detector
- **FAIL:** 7 pages with "Shop [Product]" buttons
- **WARN:** Multiple pages with "High-quality"/"Premium" language

### Outbound Link Count
- **FAIL:** 4 pages with >5 links
- **WARN:** Multiple pages with 3-5 links

### Anchor Text Quality
- **FAIL:** "View Consumables Shop →" (ProductLink component)
- **FAIL:** "Shop [Product]" buttons
- **WARN:** "View [Equipment] →" (equipment-overview)

---

## Quick Fix Checklist

- [ ] Remove all "Shop [Product]" CTA buttons
- [ ] Rewrite ProductLink component (`components/ProductLink.tsx`)
- [ ] Remove link wrappers from product images
- [ ] Change "Recommended Equipment" to "Example Equipment"
- [ ] Update ProductLink descriptions (remove "High-quality", "Premium")
- [ ] Consolidate commercial links to end of pages
- [ ] Add "Commercial Resources" section template

---

## Link Policy (Proposed)

1. **Maximum 2-3 commercial links per guide page**
2. **Links must appear after all educational content**
3. **Use educational language:** "commercial examples", "supplier website"
4. **No commercial CTAs:** Remove "Shop", "Buy", "Add to cart"
5. **Images for illustration only:** Remove link wrappers from product images

---

## Best Practice Example

**Reference:** `/guides/failure-analysis` (Score: 98/100)

This page demonstrates:
- ✅ Pure educational tone
- ✅ No commercial links
- ✅ Excellent structure
- ✅ Internal navigation only

**Use as template for refactoring other guides.**

