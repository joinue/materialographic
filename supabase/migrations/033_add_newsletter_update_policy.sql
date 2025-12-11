-- Add UPDATE policy for newsletter_subscriptions
-- Allow anyone to update their own subscription (for confirmation/unsubscribe)
-- Allow authenticated users to update any subscription (for admin operations)

-- Policy: Anyone can update subscriptions (for confirmation and unsubscribe)
-- This allows the API route to auto-confirm subscriptions
CREATE POLICY "Anyone can update newsletter subscriptions"
  ON newsletter_subscriptions
  FOR UPDATE
  TO anon, authenticated
  USING (true)
  WITH CHECK (true);

