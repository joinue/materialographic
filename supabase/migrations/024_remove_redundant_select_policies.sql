-- ============================================================================
-- Remove Redundant SELECT Policies
-- ============================================================================
-- This migration removes redundant authenticated SELECT policies that cause
-- performance warnings. Authenticated users can access data via the public
-- policies, eliminating the need for separate authenticated SELECT policies.
--
-- Note: The existing public policies (without TO clause) already apply to
-- both anonymous and authenticated users, so no additional policies are needed
-- for anonymous users.
-- ============================================================================

-- ============================================================================
-- REMOVE REDUNDANT AUTHENTICATED SELECT POLICY ON MATERIALS
-- ============================================================================
-- Drop the redundant authenticated SELECT policy - authenticated users can
-- access via the public policy, eliminating the performance warning
DROP POLICY IF EXISTS "Allow authenticated users to read all materials" ON materials;

-- ============================================================================
-- REMOVE REDUNDANT AUTHENTICATED SELECT POLICY ON CONSUMABLES
-- ============================================================================
-- Drop the redundant authenticated SELECT policy - authenticated users can
-- access via the public policy, eliminating the performance warning
DROP POLICY IF EXISTS "Allow authenticated users to read all consumables" ON consumables;

-- ============================================================================
-- REMOVE REDUNDANT AUTHENTICATED SELECT POLICY ON EQUIPMENT
-- ============================================================================
-- Drop the redundant authenticated SELECT policy - authenticated users can
-- access via the public policy, eliminating the performance warning
DROP POLICY IF EXISTS "Allow authenticated users to read all equipment" ON equipment;

