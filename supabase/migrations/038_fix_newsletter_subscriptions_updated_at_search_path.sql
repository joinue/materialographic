-- ============================================================================
-- Fix mutable search_path on update_newsletter_subscriptions_updated_at function
-- ============================================================================
-- This migration fixes the security issue where the function has a mutable
-- search_path, which could allow search path manipulation attacks.

-- Recreate the function with a fixed search_path
CREATE OR REPLACE FUNCTION update_newsletter_subscriptions_updated_at()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$;

-- Drop and recreate the trigger to ensure it uses the updated function
DROP TRIGGER IF EXISTS update_newsletter_subscriptions_updated_at ON newsletter_subscriptions;
CREATE TRIGGER update_newsletter_subscriptions_updated_at
  BEFORE UPDATE ON newsletter_subscriptions
  FOR EACH ROW
  EXECUTE FUNCTION update_newsletter_subscriptions_updated_at();



