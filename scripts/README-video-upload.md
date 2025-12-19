# Video Upload to Supabase Storage

This guide explains how to upload videos to Supabase Storage and update your code to use Supabase URLs instead of local file paths.

## Why?

GitHub has a 100MB file size limit. Several videos exceed this limit:
- `abrasive-sectioning-consumables.mp4` - 896.28 MB
- `sectioning.MP4` - 234.96 MB
- `final-polishing.mp4` - 146.89 MB
- `hardness-testing.mp4` - 146.18 MB
- `castable-vacuum-mounting.mp4` - 134.03 MB
- `etching.mp4` - 111.98 MB

By hosting videos on Supabase Storage, we can:
- Keep the repository small
- Serve videos from a CDN
- Avoid GitHub file size limits

## Setup Steps

### 1. Run the Migration

First, create the videos storage bucket in Supabase:

```bash
# If using Supabase CLI
supabase migration up

# Or run the migration manually in Supabase Dashboard > SQL Editor
# File: supabase/migrations/058_create_videos_storage_bucket.sql
```

### 2. Install tsx (if not already installed)

```bash
npm install -D tsx
```

Or use npx (no installation needed):
```bash
npx tsx scripts/upload-videos-to-supabase.ts
```

### 3. Upload Videos

Make sure your `.env.local` has:
```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
```

Then run:
```bash
npx tsx scripts/upload-videos-to-supabase.ts
```

This will:
- Scan `public/videos/` for all video files
- Upload each video to Supabase Storage bucket `videos`
- Show you the public URLs for each video
- Skip files that already exist

### 4. Update Code References

After uploading, you need to update your code to use Supabase URLs. You have two options:

#### Option A: Use the Helper Function (Recommended)

Import and use the helper function:

```typescript
import { getVideoUrl } from '@/lib/video-urls'

// Instead of:
src="/videos/process/sectioning.MP4"

// Use:
src={getVideoUrl("process/sectioning.MP4")}
```

#### Option B: Manual URL Replacement

Replace all `/videos/` paths with Supabase URLs:

```typescript
// Before:
src="/videos/process/sectioning.MP4"

// After (get URL from upload script output):
src="https://your-project.supabase.co/storage/v1/object/public/videos/process/sectioning.MP4"
```

### 5. Files to Update

Main files that reference videos:
- `app/page.tsx` - Homepage process videos
- `app/consumables/[category]/page.tsx` - Consumables video
- `app/guides/sectioning/page.tsx` - Sectioning guide video
- `components/ProcessVideo.tsx` - Process video component

### 6. Test Locally

After updating code:
1. Videos should still work locally (if files exist)
2. In production, videos will load from Supabase
3. Test by setting `NODE_ENV=production` locally

## Helper Functions

The `lib/video-urls.ts` file provides:

- `getVideoUrl(videoPath)` - Always returns Supabase URL
- `getVideoUrlWithFallback(videoPath, useLocal)` - Uses local in dev, Supabase in prod
- `shouldUseSupabase(videoPath)` - Checks if video should use Supabase

## Example Usage

```tsx
import { getVideoUrl } from '@/lib/video-urls'

// In your component:
<video src={getVideoUrl("process/sectioning.MP4")} />

// Or with OptimizedVideo component:
<OptimizedVideo
  src={getVideoUrl("process/sectioning.MP4")}
  ariaLabel="Sectioning process video"
/>
```

## Troubleshooting

### Videos not loading?
- Check that the bucket is public in Supabase Dashboard
- Verify the storage path matches exactly (case-sensitive)
- Check browser console for CORS errors

### Upload fails?
- Verify `SUPABASE_SERVICE_ROLE_KEY` is set correctly
- Check file size doesn't exceed 1GB (bucket limit)
- Ensure bucket exists: `supabase/migrations/058_create_videos_storage_bucket.sql`

### Want to keep some videos local?
- Remove specific files from `.gitignore`
- Use `getVideoUrlWithFallback()` with `useLocal: true` for those videos

