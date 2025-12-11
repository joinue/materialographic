-- Fix newsletter subscriptions RLS policy
-- Simplify the SELECT policy to allow all authenticated users to view subscriptions
-- (matching the pattern used in blog_posts and other admin tables)

-- Drop the existing complex policy
DROP POLICY IF EXISTS "Admins can view all newsletter subscriptions" ON newsletter_subscriptions;

-- Create a simple policy that allows authenticated users to view all subscriptions
CREATE POLICY "Authenticated users can view all newsletter subscriptions"
  ON newsletter_subscriptions
  FOR SELECT
  TO authenticated
  USING (true);

