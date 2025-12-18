# Equipment Images Upload Guide

This guide explains how to upload equipment images to Supabase storage and connect them to your webpages.

## Overview

Equipment images are currently stored in `public/images/equipment/` and referenced via the `image_url` field in the database. This setup migrates them to Supabase storage for better scalability and performance.

## Prerequisites

1. **Supabase Project Setup**
   - Ensure your Supabase project has the `equipment-images` bucket created (the migration `000_initial_schema.sql` creates this automatically)
   - You need your `SUPABASE_SERVICE_ROLE_KEY` for the upload script

2. **Environment Variables**
   Make sure these are set in your `.env.local` file:
   ```env
   NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
   SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
   ```

3. **Dependencies**
   The script uses `tsx` to run TypeScript files. Install it if needed:
   ```bash
   npm install -D tsx
   ```

## Steps

### 1. Run the Migration (if not already done)

The `000_initial_schema.sql` migration creates the `equipment-images` bucket and sets up storage policies. Make sure this migration has been run:

```bash
# If using Supabase CLI
supabase db reset
# or
supabase migration up
```

### 2. Upload Images to Supabase Storage

Run the upload script:

```bash
npx tsx scripts/upload-equipment-images.ts
```

This script will:
- Scan `public/images/equipment/` for all image files (webp, png, jpg, jpeg)
- Upload each image to the `equipment-images` bucket in Supabase storage
- Update the database `image_url` fields to point to Supabase storage URLs
- Skip files that already exist in storage

### 3. Verify the Upload

After running the script, you should see:
- ✅ Success messages for each uploaded image
- ✅ Updated database records with Supabase storage URLs

You can verify in your Supabase dashboard:
1. Go to Storage → equipment-images
2. Check that all images are present
3. Go to Table Editor → equipment
4. Check that `image_url` fields now point to Supabase storage URLs

## How It Works

### Storage Helper Function

The `lib/storage.ts` file provides helper functions:
- `getEquipmentImageUrl(path)` - Converts local paths or storage paths to full Supabase storage URLs
- Works with both old paths (`/images/equipment/...`) and new storage URLs

### Webpage Integration

All equipment pages have been updated to use `getEquipmentImageUrl()`:
- `app/equipment/page.tsx`
- `app/equipment/[category]/page.tsx`
- `app/equipment/[category]/[subcategory]/page.tsx`
- `app/equipment/[category]/[subcategory]/[slug]/page.tsx`

This ensures images work whether they're:
- Local paths (legacy)
- Supabase storage URLs (new)
- Full HTTP URLs (already migrated)

## Storage Structure

Images are stored in Supabase storage with the same directory structure as `public/images/equipment/`, but with an `equipment/` prefix:

```
equipment-images/
  └── equipment/
      ├── abrasive sectioning/
      │   ├── automated abrasive cutters/
      │   │   ├── mega-t300a/
      │   │   │   └── mega-t300a-cover.webp
      │   │   └── ...
      │   └── ...
      └── ...
```

The `equipment/` folder is the root level in the storage bucket, matching the structure you've already set up.

## Troubleshooting

### Script fails with "Missing environment variables"
- Make sure `.env.local` has `NEXT_PUBLIC_SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY`
- Restart your terminal/IDE after adding environment variables

### Images not showing on website
- Check that the bucket is public (should be set by migration)
- Verify storage policies allow public read access
- Check browser console for CORS errors
- Ensure `getEquipmentImageUrl()` is being used in all equipment pages

### Upload script skips all files
- Files might already be in storage
- Check Supabase dashboard → Storage → equipment-images
- The script will update database URLs even if files already exist

## Next Steps

After uploading images:
1. Test the equipment pages to ensure images load correctly
2. Consider removing images from `public/images/equipment/` after verifying everything works (optional, for cleanup)
3. Update any admin forms that upload equipment images to use Supabase storage directly

## Notes

- The script preserves the directory structure from `public/images/equipment/`
- Images are uploaded with proper content types (webp, png, jpeg)
- The script is idempotent - safe to run multiple times
- Database URLs are updated automatically after upload

