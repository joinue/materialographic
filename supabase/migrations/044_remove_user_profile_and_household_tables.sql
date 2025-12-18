-- ============================================================================
-- Remove user_profile and household-related functions and tables
-- ============================================================================
-- This migration removes functions and tables from a separate project that was deleted:
-- - ensure_user_profile function
-- - households table
-- - household_membership table
-- - Any related triggers, policies, or indexes

-- Drop triggers that might reference ensure_user_profile
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP TRIGGER IF EXISTS on_auth_user_created_profile ON auth.users;
DROP TRIGGER IF EXISTS create_profile_for_new_user ON auth.users;

-- Drop all household and user profile related functions
-- Using CASCADE to handle any dependencies and different function signatures
DROP FUNCTION IF EXISTS public.ensure_user_profile() CASCADE;
DROP FUNCTION IF EXISTS ensure_user_profile() CASCADE;
DROP FUNCTION IF EXISTS public.create_household_membership() CASCADE;
DROP FUNCTION IF EXISTS create_household_membership() CASCADE;
DROP FUNCTION IF EXISTS public.get_user_email() CASCADE;
DROP FUNCTION IF EXISTS get_user_email() CASCADE;
DROP FUNCTION IF EXISTS public.create_user_profile() CASCADE;
DROP FUNCTION IF EXISTS create_user_profile() CASCADE;
DROP FUNCTION IF EXISTS public.handle_new_user() CASCADE;
DROP FUNCTION IF EXISTS handle_new_user() CASCADE;
DROP FUNCTION IF EXISTS public.sync_user_profile() CASCADE;
DROP FUNCTION IF EXISTS sync_user_profile() CASCADE;

-- Drop functions with different signatures (if they exist)
-- PostgreSQL allows function overloading, so we need to handle all variants
DO $$
DECLARE
    func_record RECORD;
BEGIN
    -- Drop all variants of ensure_user_profile
    FOR func_record IN 
        SELECT oid::regprocedure AS func_name
        FROM pg_proc
        WHERE proname = 'ensure_user_profile'
          AND pronamespace = 'public'::regnamespace
    LOOP
        EXECUTE format('DROP FUNCTION IF EXISTS %s CASCADE', func_record.func_name);
    END LOOP;
    
    -- Drop all variants of create_household_membership
    FOR func_record IN 
        SELECT oid::regprocedure AS func_name
        FROM pg_proc
        WHERE proname = 'create_household_membership'
          AND pronamespace = 'public'::regnamespace
    LOOP
        EXECUTE format('DROP FUNCTION IF EXISTS %s CASCADE', func_record.func_name);
    END LOOP;
    
    -- Drop all variants of get_user_email
    FOR func_record IN 
        SELECT oid::regprocedure AS func_name
        FROM pg_proc
        WHERE proname = 'get_user_email'
          AND pronamespace = 'public'::regnamespace
    LOOP
        EXECUTE format('DROP FUNCTION IF EXISTS %s CASCADE', func_record.func_name);
    END LOOP;
    
    -- Drop all variants of sync_user_profile
    FOR func_record IN 
        SELECT oid::regprocedure AS func_name
        FROM pg_proc
        WHERE proname = 'sync_user_profile'
          AND pronamespace = 'public'::regnamespace
    LOOP
        EXECUTE format('DROP FUNCTION IF EXISTS %s CASCADE', func_record.func_name);
    END LOOP;
END $$;

-- Drop household_membership table (drop first due to potential foreign keys)
DROP TABLE IF EXISTS public.household_membership CASCADE;
DROP TABLE IF EXISTS household_membership CASCADE;

-- Drop households table
DROP TABLE IF EXISTS public.households CASCADE;
DROP TABLE IF EXISTS households CASCADE;

-- Drop profiles table if it exists (common with user_profile functions)
DROP TABLE IF EXISTS public.profiles CASCADE;
DROP TABLE IF EXISTS profiles CASCADE;

-- Drop any related policies (in case they weren't dropped with tables)
DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT schemaname, tablename, policyname 
              FROM pg_policies 
              WHERE tablename IN ('profiles', 'households', 'household_membership')
                 OR policyname LIKE '%profile%'
                 OR policyname LIKE '%household%') LOOP
        EXECUTE format('DROP POLICY IF EXISTS %I ON %I.%I', 
                       r.policyname, r.schemaname, r.tablename);
    END LOOP;
END $$;

