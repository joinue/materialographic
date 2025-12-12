-- ============================================================================
-- Fix mutable search_path on update_blog_posts_updated_at function
-- ============================================================================
-- This migration fixes the security issue where the function has a mutable
-- search_path, which could allow search path manipulation attacks.

-- Recreate the function with a fixed search_path
CREATE OR REPLACE FUNCTION update_blog_posts_updated_at()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = ''
AS $$
BEGIN
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$;

