-- Confirm all existing pending newsletter subscriptions
-- This fixes subscriptions that were created before the UPDATE policy was added

UPDATE newsletter_subscriptions
SET 
  status = 'confirmed',
  confirmed_at = COALESCE(confirmed_at, TIMEZONE('utc', NOW()))
WHERE status = 'pending';

