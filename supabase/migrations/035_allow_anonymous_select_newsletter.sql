-- Allow anonymous users to SELECT newsletter subscriptions
-- This is needed for the API route to check if an email already exists
-- The API route runs as anonymous user (using anon key)

-- Allow anonymous users to view subscriptions (for API checks)
CREATE POLICY "Anonymous can check newsletter subscriptions"
  ON newsletter_subscriptions
  FOR SELECT
  TO anon
  USING (true);

