-- ============================================================================
-- Fix overlapping SELECT policies on blog_posts table
-- ============================================================================
-- The table has multiple permissive policies for authenticated users for SELECT.
-- This migration fixes the overlap by restricting the "Anyone can read published
-- blog posts" policy to only anonymous users, so authenticated users only match
-- the "Authenticated users can read all blog posts" policy.

-- Drop the existing policy
DROP POLICY IF EXISTS "Anyone can read published blog posts" ON blog_posts;

-- Recreate the policy to only apply to anonymous users
CREATE POLICY "Anyone can read published blog posts"
  ON blog_posts
  FOR SELECT
  TO anon
  USING (status = 'published');



