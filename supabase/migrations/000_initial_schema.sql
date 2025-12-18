-- ============================================================================
-- INITIAL SCHEMA MIGRATION
-- ============================================================================
-- This migration creates all tables, functions, triggers, indexes, and policies
-- for a fresh Supabase project. Run this as the first migration.
-- ============================================================================

-- ============================================================================
-- HELPER FUNCTIONS
-- ============================================================================

-- Function to update updated_at timestamp (used by multiple tables)
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  NEW.updated_at = TIMEZONE('utc', NOW());
  RETURN NEW;
END;
$$;

-- Function to generate slug from name
CREATE OR REPLACE FUNCTION generate_material_slug(material_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(material_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION generate_etchant_slug(etchant_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(etchant_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION generate_standard_slug(standard_name TEXT)
RETURNS TEXT AS $$
BEGIN
  RETURN lower(regexp_replace(
    regexp_replace(standard_name, '[^a-zA-Z0-9\s]+', '', 'g'),
    '\s+', '-', 'g'
  ));
END;
$$ LANGUAGE plpgsql;

-- Function to auto-generate etchant slugs
CREATE OR REPLACE FUNCTION ensure_etchant_slug()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_etchant_slug(NEW.name);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Function to auto-generate standard slugs
CREATE OR REPLACE FUNCTION ensure_standard_slug()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.slug IS NULL OR NEW.slug = '' THEN
    NEW.slug := generate_standard_slug(NEW.standard);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Function to calculate total preparation time
CREATE OR REPLACE FUNCTION calculate_total_preparation_time()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.total_preparation_time_minutes IS NULL THEN
    NEW.total_preparation_time_minutes := 
      COALESCE(NEW.estimated_sectioning_time_minutes, 0) +
      COALESCE(NEW.estimated_mounting_time_minutes, 0) +
      COALESCE(NEW.estimated_grinding_time_minutes, 0) +
      COALESCE(NEW.estimated_polishing_time_minutes, 0) +
      COALESCE(NEW.estimated_etching_time_minutes, 0);
    
    IF NEW.total_preparation_time_minutes = 0 THEN
      NEW.total_preparation_time_minutes := NULL;
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ============================================================================
-- MATERIALS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS materials (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  slug TEXT UNIQUE,
  category TEXT NOT NULL,
  alternative_names TEXT[],
  tags TEXT[],
  
  -- Material Properties
  hardness TEXT,
  hardness_hb NUMERIC,
  hardness_hrc NUMERIC,
  hardness_hv NUMERIC,
  density NUMERIC,
  melting_point_celsius NUMERIC,
  tensile_strength_mpa NUMERIC,
  yield_strength_mpa NUMERIC,
  
  -- Composition and Structure
  composition TEXT NOT NULL,
  microstructure TEXT NOT NULL,
  
  -- Material Characteristics
  material_type TEXT,
  hardness_category TEXT CHECK (hardness_category IN ('soft', 'medium', 'hard', 'very-hard')),
  work_hardening BOOLEAN DEFAULT false,
  magnetic BOOLEAN,
  corrosion_resistance TEXT CHECK (corrosion_resistance IN ('low', 'medium', 'high', 'excellent')),
  
  -- Heat Treatment
  heat_treatment TEXT,
  annealing_temperature_celsius NUMERIC,
  solution_treatment_temp_celsius NUMERIC,
  aging_temperature_celsius NUMERIC,
  
  -- Preparation Notes (General)
  special_notes TEXT,
  preparation_notes TEXT,
  
  -- Detailed Preparation Notes (by step)
  sectioning_notes TEXT,
  mounting_notes TEXT,
  grinding_notes TEXT,
  polishing_notes TEXT,
  etching_notes TEXT,
  
  -- Preparation Sequences
  recommended_grinding_sequence TEXT[],
  recommended_polishing_sequence TEXT[],
  
  -- Etching
  common_etchants TEXT[],
  
  -- Time estimates
  preparation_difficulty TEXT CHECK (preparation_difficulty IN ('easy', 'medium', 'hard', 'expert')),
  estimated_sectioning_time_minutes INTEGER,
  estimated_mounting_time_minutes INTEGER,
  estimated_grinding_time_minutes INTEGER,
  estimated_polishing_time_minutes INTEGER,
  estimated_etching_time_minutes INTEGER,
  total_preparation_time_minutes INTEGER,
  
  -- Troubleshooting
  common_issues TEXT[],
  troubleshooting_notes TEXT,
  success_criteria TEXT,
  quality_indicators TEXT[],
  
  -- Material grades and variants
  material_grade TEXT,
  temper_condition TEXT,
  parent_material_id UUID REFERENCES materials(id) ON DELETE SET NULL,
  
  -- Enhanced images
  microstructure_images JSONB,
  preparation_step_images JSONB,
  
  -- Media and Images
  microstructure_image_url TEXT,
  material_image_url TEXT,
  
  -- Standards and References
  astm_standards TEXT[],
  iso_standards TEXT[],
  related_guide_slugs TEXT[],
  
  -- Relationships
  related_material_ids UUID[],
  similar_materials UUID[],
  
  -- Applications
  applications TEXT[],
  typical_uses TEXT[],
  detailed_description TEXT,
  
  -- Metadata and Status
  status TEXT DEFAULT 'published' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  
  -- Analytics
  view_count INTEGER DEFAULT 0,
  save_count INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Materials indexes
CREATE INDEX IF NOT EXISTS idx_materials_category ON materials(category);
CREATE INDEX IF NOT EXISTS idx_materials_name ON materials(name);
CREATE INDEX IF NOT EXISTS idx_materials_slug ON materials(slug);
CREATE INDEX IF NOT EXISTS idx_materials_status ON materials(status);
CREATE INDEX IF NOT EXISTS idx_materials_featured ON materials(featured);
CREATE INDEX IF NOT EXISTS idx_materials_hardness_category ON materials(hardness_category);
CREATE INDEX IF NOT EXISTS idx_materials_material_type ON materials(material_type);
CREATE INDEX IF NOT EXISTS idx_materials_sort_order ON materials(sort_order);
CREATE INDEX IF NOT EXISTS idx_materials_preparation_difficulty ON materials(preparation_difficulty);
CREATE INDEX IF NOT EXISTS idx_materials_material_grade ON materials(material_grade);
CREATE INDEX IF NOT EXISTS idx_materials_parent_material_id ON materials(parent_material_id);
CREATE INDEX IF NOT EXISTS idx_materials_total_preparation_time ON materials(total_preparation_time_minutes);

-- GIN indexes for array fields
CREATE INDEX IF NOT EXISTS idx_materials_tags ON materials USING gin(tags);
CREATE INDEX IF NOT EXISTS idx_materials_alternative_names ON materials USING gin(alternative_names);
CREATE INDEX IF NOT EXISTS idx_materials_common_etchants ON materials USING gin(common_etchants);
CREATE INDEX IF NOT EXISTS idx_materials_common_issues ON materials USING gin(common_issues);

-- Full-text search function for materials
CREATE OR REPLACE FUNCTION materials_search_vector(
  p_name TEXT,
  p_category TEXT,
  p_composition TEXT,
  p_microstructure TEXT,
  p_tags TEXT[],
  p_alternative_names TEXT[]
)
RETURNS tsvector AS $$
BEGIN
  RETURN to_tsvector('english', 
    coalesce(p_name, '') || ' ' || 
    coalesce(p_category, '') || ' ' || 
    coalesce(p_composition, '') || ' ' || 
    coalesce(p_microstructure, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(array_to_string(p_alternative_names, ' '), '')
  );
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE INDEX IF NOT EXISTS idx_materials_fulltext_search ON materials 
  USING gin(materials_search_vector(name, category, composition, microstructure, tags, alternative_names));

-- Materials triggers
CREATE TRIGGER update_materials_updated_at
  BEFORE UPDATE ON materials
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER calculate_material_preparation_time
  BEFORE INSERT OR UPDATE ON materials
  FOR EACH ROW
  EXECUTE FUNCTION calculate_total_preparation_time();

-- Materials RLS
ALTER TABLE materials ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to published materials" ON materials
  FOR SELECT
  USING (status = 'published' OR status IS NULL);

CREATE POLICY "Allow authenticated users to read all materials" ON materials
  FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Allow authenticated users to insert materials" ON materials
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to update materials" ON materials
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to delete materials" ON materials
  FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================================
-- ETCHANTS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS etchants (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  slug TEXT UNIQUE,
  alternative_names TEXT[],
  tags TEXT[],
  category TEXT,
  
  -- Composition
  composition TEXT NOT NULL,
  concentration TEXT,
  ingredients JSONB,
  
  -- Application
  application_method TEXT CHECK (application_method IN ('immersion', 'swabbing', 'electrolytic', 'vapor', 'multiple')),
  typical_time_seconds INTEGER,
  temperature_celsius NUMERIC,
  voltage NUMERIC,
  current_density NUMERIC,
  
  -- Safety
  hazards TEXT[],
  safety_notes TEXT,
  ppe_required TEXT[],
  
  -- Results
  reveals TEXT,
  typical_results TEXT,
  color_effects TEXT,
  
  -- Compatibility
  compatible_materials TEXT[],
  incompatible_materials TEXT[],
  
  -- PACE Product Information
  pace_product_available BOOLEAN DEFAULT false,
  pace_product_slug TEXT,
  pace_product_url TEXT,
  
  -- Usage Notes
  preparation_notes TEXT,
  application_notes TEXT,
  troubleshooting_notes TEXT,
  storage_notes TEXT,
  
  -- Alternatives
  alternative_etchants TEXT[],
  similar_etchants TEXT[],
  
  -- Standards and References
  astm_references TEXT[],
  iso_references TEXT[],
  other_references TEXT[],
  
  -- Media
  example_image_url TEXT,
  before_after_image_url TEXT,
  
  -- Relationships
  related_material_ids UUID[],
  related_etchant_ids UUID[],
  
  -- Metadata
  status TEXT DEFAULT 'published' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  view_count INTEGER DEFAULT 0,
  save_count INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Etchants indexes
CREATE INDEX IF NOT EXISTS idx_etchants_slug ON etchants(slug);
CREATE INDEX IF NOT EXISTS idx_etchants_category ON etchants(category);
CREATE INDEX IF NOT EXISTS idx_etchants_status ON etchants(status);
CREATE INDEX IF NOT EXISTS idx_etchants_pace_available ON etchants(pace_product_available) WHERE pace_product_available = true;

-- Full-text search function for etchants
CREATE OR REPLACE FUNCTION etchants_search_vector(
  p_name TEXT,
  p_alternative_names TEXT[],
  p_composition TEXT,
  p_tags TEXT[],
  p_reveals TEXT,
  p_compatible_materials TEXT[]
)
RETURNS tsvector AS $$
BEGIN
  RETURN to_tsvector('english',
    coalesce(p_name, '') || ' ' ||
    coalesce(array_to_string(p_alternative_names, ' '), '') || ' ' ||
    coalesce(p_composition, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(p_reveals, '') || ' ' ||
    coalesce(array_to_string(p_compatible_materials, ' '), '')
  );
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE INDEX IF NOT EXISTS idx_etchants_fulltext_search ON etchants
  USING gin(etchants_search_vector(name, alternative_names, composition, tags, reveals, compatible_materials));

-- Etchants triggers
CREATE TRIGGER update_etchants_updated_at BEFORE UPDATE ON etchants
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER ensure_etchant_slug_trigger
  BEFORE INSERT OR UPDATE ON etchants
  FOR EACH ROW
  EXECUTE FUNCTION ensure_etchant_slug();

-- Etchants RLS
ALTER TABLE etchants ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to published etchants"
  ON etchants FOR SELECT
  USING (status = 'published');

-- ============================================================================
-- STANDARDS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS standards (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  standard TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  slug TEXT UNIQUE,
  
  -- Categorization
  category TEXT NOT NULL,
  tags TEXT[],
  organization TEXT DEFAULT 'ASTM',
  
  -- Additional Information
  scope TEXT,
  key_procedures TEXT[],
  applicable_materials TEXT[],
  related_topics TEXT[],
  
  -- References and Links
  official_url TEXT,
  purchase_url TEXT,
  related_standard_ids UUID[],
  related_guide_slugs TEXT[],
  
  -- Metadata
  status TEXT DEFAULT 'published' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  view_count INTEGER DEFAULT 0,
  save_count INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Standards indexes
CREATE INDEX IF NOT EXISTS idx_standards_slug ON standards(slug);
CREATE INDEX IF NOT EXISTS idx_standards_category ON standards(category);
CREATE INDEX IF NOT EXISTS idx_standards_organization ON standards(organization);
CREATE INDEX IF NOT EXISTS idx_standards_status ON standards(status);
CREATE INDEX IF NOT EXISTS idx_standards_featured ON standards(featured);
CREATE INDEX IF NOT EXISTS idx_standards_sort_order ON standards(sort_order);
CREATE INDEX IF NOT EXISTS idx_standards_standard ON standards(standard);

-- GIN indexes for array fields
CREATE INDEX IF NOT EXISTS idx_standards_tags ON standards USING gin(tags);
CREATE INDEX IF NOT EXISTS idx_standards_applicable_materials ON standards USING gin(applicable_materials);
CREATE INDEX IF NOT EXISTS idx_standards_key_procedures ON standards USING gin(key_procedures);

-- Full-text search function for standards
CREATE OR REPLACE FUNCTION standards_search_vector(
  p_standard TEXT,
  p_title TEXT,
  p_description TEXT,
  p_tags TEXT[],
  p_scope TEXT
)
RETURNS tsvector
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
BEGIN
  RETURN to_tsvector('english',
    coalesce(p_standard, '') || ' ' ||
    coalesce(p_title, '') || ' ' ||
    coalesce(p_description, '') || ' ' ||
    coalesce(array_to_string(p_tags, ' '), '') || ' ' ||
    coalesce(p_scope, '')
  );
END;
$$;

CREATE INDEX IF NOT EXISTS idx_standards_fulltext_search ON standards
  USING gin(standards_search_vector(standard, title, description, tags, scope));

-- Standards triggers
CREATE TRIGGER update_standards_updated_at BEFORE UPDATE ON standards
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER ensure_standard_slug_trigger
  BEFORE INSERT OR UPDATE ON standards
  FOR EACH ROW
  EXECUTE FUNCTION ensure_standard_slug();

-- Standards RLS
ALTER TABLE standards ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to published standards"
  ON standards FOR SELECT
  USING (status = 'published');

-- ============================================================================
-- MATERIAL_ETCHANTS JUNCTION TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS material_etchants (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  material_id UUID NOT NULL REFERENCES materials(id) ON DELETE CASCADE,
  etchant_id UUID NOT NULL REFERENCES etchants(id) ON DELETE CASCADE,
  
  -- Relationship metadata
  is_primary BOOLEAN DEFAULT false,
  is_alternative BOOLEAN DEFAULT false,
  recommended_for TEXT,
  typical_results TEXT,
  application_notes TEXT,
  
  -- Usage metadata
  usage_frequency TEXT CHECK (usage_frequency IN ('common', 'occasional', 'rare')),
  effectiveness_rating INTEGER CHECK (effectiveness_rating >= 1 AND effectiveness_rating <= 5),
  
  -- Sort order for display
  sort_order INTEGER DEFAULT 0,
  
  -- Timestamps
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  
  -- Ensure unique material-etchant pairs
  UNIQUE(material_id, etchant_id)
);

-- Material_etchants indexes
CREATE INDEX IF NOT EXISTS idx_material_etchants_material_id ON material_etchants(material_id);
CREATE INDEX IF NOT EXISTS idx_material_etchants_etchant_id ON material_etchants(etchant_id);
CREATE INDEX IF NOT EXISTS idx_material_etchants_is_primary ON material_etchants(is_primary) WHERE is_primary = true;
CREATE INDEX IF NOT EXISTS idx_material_etchants_sort_order ON material_etchants(material_id, sort_order);

-- Material_etchants triggers
CREATE TRIGGER update_material_etchants_updated_at
  BEFORE UPDATE ON material_etchants
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Material_etchants RLS
ALTER TABLE material_etchants ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to material_etchants" ON material_etchants
  FOR SELECT
  USING (true);

-- ============================================================================
-- EQUIPMENT TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS equipment (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  item_id TEXT UNIQUE,
  slug TEXT UNIQUE,
  description TEXT,
  category TEXT NOT NULL,
  subcategory TEXT,
  
  -- Product Attributes
  is_pace_product BOOLEAN DEFAULT true,
  product_url TEXT,
  image_url TEXT,
  
  -- Technical Specifications
  blade_size_mm INTEGER,
  blade_size_inches INTEGER,
  automation_level TEXT CHECK (automation_level IN ('manual', 'semi-automated', 'automated')),
  wheel_size_inches INTEGER[],
  max_cutting_capacity_mm NUMERIC,
  max_cutting_capacity_inches NUMERIC,
  
  -- Suitability Attributes
  suitable_for_material_types TEXT[],
  suitable_for_hardness TEXT[],
  suitable_for_sample_sizes TEXT[],
  suitable_for_sample_shapes TEXT[],
  suitable_for_throughput TEXT[],
  suitable_for_applications TEXT[],
  min_budget_level TEXT,
  
  -- Metadata
  tags TEXT[],
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'discontinued', 'draft')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Equipment indexes
CREATE INDEX IF NOT EXISTS idx_equipment_category ON equipment(category);
CREATE INDEX IF NOT EXISTS idx_equipment_automation ON equipment(automation_level);
CREATE INDEX IF NOT EXISTS idx_equipment_blade_size ON equipment(blade_size_mm);
CREATE INDEX IF NOT EXISTS idx_equipment_status ON equipment(status);
CREATE INDEX IF NOT EXISTS idx_equipment_item_id ON equipment(item_id);

-- Equipment triggers
CREATE TRIGGER update_equipment_updated_at BEFORE UPDATE ON equipment
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- CONSUMABLES TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS consumables (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  item_id TEXT UNIQUE,
  sku TEXT,
  slug TEXT UNIQUE,
  description TEXT,
  category TEXT NOT NULL,
  subcategory TEXT,
  
  -- Product Attributes
  is_pace_product BOOLEAN DEFAULT true,
  product_url TEXT,
  image_url TEXT,
  list_price NUMERIC,
  
  -- Technical Specifications
  size_mm INTEGER,
  size_inches INTEGER,
  grit_size TEXT,
  material_composition TEXT,
  type TEXT,
  
  -- Suitability Attributes
  suitable_for_material_types TEXT[],
  suitable_for_hardness TEXT[],
  compatible_with_equipment TEXT[],
  recommended_for_applications TEXT[],
  
  -- Metadata
  tags TEXT[],
  is_active BOOLEAN DEFAULT true,
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'discontinued', 'draft')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Consumables indexes
CREATE INDEX IF NOT EXISTS idx_consumables_category ON consumables(category);
CREATE INDEX IF NOT EXISTS idx_consumables_subcategory ON consumables(subcategory);
CREATE INDEX IF NOT EXISTS idx_consumables_size ON consumables(size_mm);
CREATE INDEX IF NOT EXISTS idx_consumables_status ON consumables(status);
CREATE INDEX IF NOT EXISTS idx_consumables_item_id ON consumables(item_id);

-- Consumables triggers
CREATE TRIGGER update_consumables_updated_at BEFORE UPDATE ON consumables
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- SUBCATEGORY_METADATA TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS subcategory_metadata (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Classification
  entity_type TEXT NOT NULL CHECK (entity_type IN ('equipment', 'consumables')),
  category TEXT NOT NULL,
  subcategory_key TEXT NOT NULL,
  subcategory_label TEXT NOT NULL,
  
  -- Display & Navigation
  display_order INTEGER DEFAULT 0,
  description TEXT,
  cover_image_url TEXT,
  
  -- SEO
  meta_title TEXT,
  meta_description TEXT,
  
  -- Metadata
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  
  -- Unique constraint
  UNIQUE(entity_type, category, subcategory_key)
);

-- Subcategory_metadata indexes
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_entity ON subcategory_metadata(entity_type, category);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_active ON subcategory_metadata(is_active);
CREATE INDEX IF NOT EXISTS idx_subcategory_metadata_display_order ON subcategory_metadata(entity_type, category, display_order);

-- Subcategory_metadata triggers
CREATE TRIGGER update_subcategory_metadata_updated_at BEFORE UPDATE ON subcategory_metadata
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- BLOG_POSTS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS blog_posts (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  title TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  excerpt TEXT NOT NULL,
  content TEXT NOT NULL,
  
  -- Categorization
  category TEXT NOT NULL DEFAULT 'General',
  tags TEXT[] DEFAULT '{}',
  
  -- Media
  image TEXT,
  
  -- Metadata
  author TEXT,
  read_time TEXT DEFAULT '2 min read',
  status TEXT DEFAULT 'draft' CHECK (status IN ('draft', 'published', 'archived')),
  featured BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  
  -- Analytics
  view_count INTEGER DEFAULT 0,
  
  -- Publishing
  published_at TIMESTAMPTZ,
  
  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  created_by UUID REFERENCES auth.users(id),
  updated_by UUID REFERENCES auth.users(id)
);

-- Blog_posts indexes
CREATE INDEX IF NOT EXISTS idx_blog_posts_slug ON blog_posts(slug);
CREATE INDEX IF NOT EXISTS idx_blog_posts_status ON blog_posts(status);
CREATE INDEX IF NOT EXISTS idx_blog_posts_category ON blog_posts(category);
CREATE INDEX IF NOT EXISTS idx_blog_posts_featured ON blog_posts(featured);
CREATE INDEX IF NOT EXISTS idx_blog_posts_published_at ON blog_posts(published_at);
CREATE INDEX IF NOT EXISTS idx_blog_posts_sort_order ON blog_posts(sort_order);
CREATE INDEX IF NOT EXISTS idx_blog_posts_created_at ON blog_posts(created_at DESC);

-- GIN index for tags array
CREATE INDEX IF NOT EXISTS idx_blog_posts_tags ON blog_posts USING gin(tags);

-- Blog_posts trigger function
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

-- Blog_posts triggers
DROP TRIGGER IF EXISTS update_blog_posts_updated_at ON blog_posts;
CREATE TRIGGER update_blog_posts_updated_at
  BEFORE UPDATE ON blog_posts
  FOR EACH ROW
  EXECUTE FUNCTION update_blog_posts_updated_at();

-- Blog_posts RLS
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can read published blog posts"
  ON blog_posts
  FOR SELECT
  USING (status = 'published');

CREATE POLICY "Authenticated users can read all blog posts"
  ON blog_posts
  FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Authenticated users can insert blog posts"
  ON blog_posts
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated users can update blog posts"
  ON blog_posts
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can delete blog posts"
  ON blog_posts
  FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================================
-- NEWSLETTER_SUBSCRIPTIONS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS newsletter_subscriptions (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Email Information
  email TEXT UNIQUE NOT NULL,
  
  -- Status
  status TEXT DEFAULT 'pending' CHECK (status IN ('pending', 'confirmed', 'unsubscribed')),
  
  -- Metadata
  source TEXT DEFAULT 'blog',
  ip_address INET,
  user_agent TEXT,
  
  -- Confirmation
  confirmation_token TEXT UNIQUE,
  confirmed_at TIMESTAMPTZ,
  
  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL,
  unsubscribed_at TIMESTAMPTZ
);

-- Newsletter_subscriptions indexes
CREATE INDEX IF NOT EXISTS idx_newsletter_subscriptions_email ON newsletter_subscriptions(email);
CREATE INDEX IF NOT EXISTS idx_newsletter_subscriptions_status ON newsletter_subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_newsletter_subscriptions_confirmation_token ON newsletter_subscriptions(confirmation_token);
CREATE INDEX IF NOT EXISTS idx_newsletter_subscriptions_created_at ON newsletter_subscriptions(created_at DESC);

-- Newsletter_subscriptions trigger function
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

-- Newsletter_subscriptions triggers
DROP TRIGGER IF EXISTS update_newsletter_subscriptions_updated_at ON newsletter_subscriptions;
CREATE TRIGGER update_newsletter_subscriptions_updated_at
  BEFORE UPDATE ON newsletter_subscriptions
  FOR EACH ROW
  EXECUTE FUNCTION update_newsletter_subscriptions_updated_at();

-- Newsletter_subscriptions RLS
ALTER TABLE newsletter_subscriptions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can subscribe to newsletter"
  ON newsletter_subscriptions
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

CREATE POLICY "Anonymous can check newsletter subscriptions"
  ON newsletter_subscriptions
  FOR SELECT
  TO anon
  USING (true);

CREATE POLICY "Anyone can update newsletter subscriptions"
  ON newsletter_subscriptions
  FOR UPDATE
  TO anon, authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Admins can view all newsletter subscriptions"
  ON newsletter_subscriptions
  FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM auth.users
      WHERE auth.users.id = auth.uid()
      AND auth.users.email IN (
        SELECT email FROM auth.users WHERE id = auth.uid()
      )
    )
  );

-- ============================================================================
-- PAGE_VIEWS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS page_views (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Page Information
  path TEXT NOT NULL,
  full_url TEXT,
  referrer TEXT,
  
  -- Visitor Information
  ip_address INET,
  user_agent TEXT,
  country_code TEXT,
  country_name TEXT,
  region TEXT,
  city TEXT,
  
  -- Device Information
  device_type TEXT,
  browser TEXT,
  os TEXT,
  
  -- Session Information
  session_id TEXT,
  is_bot BOOLEAN DEFAULT false,
  
  -- Timestamps
  viewed_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Page_views indexes
CREATE INDEX IF NOT EXISTS idx_page_views_path ON page_views(path);
CREATE INDEX IF NOT EXISTS idx_page_views_viewed_at ON page_views(viewed_at DESC);
CREATE INDEX IF NOT EXISTS idx_page_views_country_code ON page_views(country_code);
CREATE INDEX IF NOT EXISTS idx_page_views_session_id ON page_views(session_id);
CREATE INDEX IF NOT EXISTS idx_page_views_is_bot ON page_views(is_bot) WHERE is_bot = false;
CREATE INDEX IF NOT EXISTS idx_page_views_path_date ON page_views(path, viewed_at DESC);

-- Page_views RLS
ALTER TABLE page_views ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can track page views"
  ON page_views
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated users can view page views"
  ON page_views
  FOR SELECT
  TO authenticated
  USING (true);

-- ============================================================================
-- VIEWS
-- ============================================================================

-- View for materials with etchant counts
CREATE OR REPLACE VIEW materials_with_etchant_info
WITH (security_invoker = true)
AS
SELECT 
  m.*,
  COUNT(DISTINCT me.etchant_id) as etchant_count,
  COUNT(DISTINCT CASE WHEN me.is_primary THEN me.etchant_id END) as primary_etchant_count
FROM materials m
LEFT JOIN material_etchants me ON m.id = me.material_id
GROUP BY m.id;

-- ============================================================================
-- STORAGE BUCKETS AND POLICIES
-- ============================================================================

-- Create blog-images bucket
INSERT INTO storage.buckets (id, name, public)
VALUES ('blog-images', 'blog-images', true)
ON CONFLICT (id) DO NOTHING;

-- Blog images storage policies
CREATE POLICY "Public Access for blog-images"
ON storage.objects
FOR SELECT
USING (bucket_id = 'blog-images');

CREATE POLICY "Authenticated users can upload blog images"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'blog-images');

CREATE POLICY "Authenticated users can update blog images"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'blog-images')
WITH CHECK (bucket_id = 'blog-images');

CREATE POLICY "Authenticated users can delete blog images"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'blog-images');

-- Create equipment-images bucket
INSERT INTO storage.buckets (id, name, public)
VALUES ('equipment-images', 'equipment-images', true)
ON CONFLICT (id) DO NOTHING;

-- Equipment images storage policies
DROP POLICY IF EXISTS "Public Access for equipment-images" ON storage.objects;
CREATE POLICY "Public Access for equipment-images"
ON storage.objects
FOR SELECT
USING (bucket_id = 'equipment-images');

DROP POLICY IF EXISTS "Authenticated users can upload equipment images" ON storage.objects;
CREATE POLICY "Authenticated users can upload equipment images"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'equipment-images');

DROP POLICY IF EXISTS "Authenticated users can update equipment images" ON storage.objects;
CREATE POLICY "Authenticated users can update equipment images"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'equipment-images')
WITH CHECK (bucket_id = 'equipment-images');

DROP POLICY IF EXISTS "Authenticated users can delete equipment images" ON storage.objects;
CREATE POLICY "Authenticated users can delete equipment images"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'equipment-images');

-- Consumable images storage policies (bucket should be created in Supabase dashboard)
DROP POLICY IF EXISTS "Public Access for consumable-images" ON storage.objects;
CREATE POLICY "Public Access for consumable-images"
ON storage.objects
FOR SELECT
USING (bucket_id = 'consumable-images');

DROP POLICY IF EXISTS "Authenticated users can upload consumable images" ON storage.objects;
CREATE POLICY "Authenticated users can upload consumable images"
ON storage.objects
FOR INSERT
TO authenticated
WITH CHECK (bucket_id = 'consumable-images');

DROP POLICY IF EXISTS "Authenticated users can update consumable images" ON storage.objects;
CREATE POLICY "Authenticated users can update consumable images"
ON storage.objects
FOR UPDATE
TO authenticated
USING (bucket_id = 'consumable-images')
WITH CHECK (bucket_id = 'consumable-images');

DROP POLICY IF EXISTS "Authenticated users can delete consumable images" ON storage.objects;
CREATE POLICY "Authenticated users can delete consumable images"
ON storage.objects
FOR DELETE
TO authenticated
USING (bucket_id = 'consumable-images');

-- ============================================================================
-- COMMENTS FOR DOCUMENTATION
-- ============================================================================

COMMENT ON TABLE materials IS 'Comprehensive materials database for metallographic analysis with properties, preparation notes, and relationships. Supports 100+ materials and future user features.';
COMMENT ON COLUMN materials.slug IS 'URL-friendly identifier for SEO (e.g., "titanium-grade-5-ti-6al-4v")';
COMMENT ON COLUMN materials.tags IS 'Searchable tags for flexible categorization (e.g., ["aerospace", "high-strength", "corrosion-resistant"])';
COMMENT ON COLUMN materials.alternative_names IS 'Common trade names, synonyms, or alternative designations';
COMMENT ON COLUMN materials.hardness_category IS 'General hardness classification for filtering and recommendations';
COMMENT ON COLUMN materials.related_material_ids IS 'Materials commonly used together or in similar applications';
COMMENT ON COLUMN materials.similar_materials IS 'Materials with similar properties or preparation requirements';
COMMENT ON COLUMN materials.save_count IS 'Number of times users have saved this material (for future user favorites feature)';
COMMENT ON COLUMN materials.view_count IS 'Number of times this material has been viewed (for analytics)';
COMMENT ON COLUMN materials.status IS 'Publication status: draft (not visible), published (visible), archived (hidden but kept)';

COMMENT ON TABLE etchants IS 'Comprehensive database of metallographic etchants with composition, application methods, safety data, and PACE product links.';
COMMENT ON COLUMN etchants.slug IS 'URL-friendly identifier for SEO (e.g., "2-percent-nital")';
COMMENT ON COLUMN etchants.pace_product_slug IS 'Slug for PACE product URL: shop.metallographic.com/collections/etchants/products/{slug}';
COMMENT ON COLUMN etchants.compatible_materials IS 'Material categories this etchant works well with (e.g., ["carbon-steel", "low-alloy-steel"])';

COMMENT ON TABLE standards IS 'Comprehensive database of metallography and materials testing standards (ASTM, ISO, etc.) with descriptions, categories, and relationships.';
COMMENT ON COLUMN standards.slug IS 'URL-friendly identifier for SEO (e.g., "astm-e3")';
COMMENT ON COLUMN standards.organization IS 'Standards organization: ASTM, ISO, SAE, JIS, etc.';
COMMENT ON COLUMN standards.applicable_materials IS 'Material categories this standard applies to (e.g., ["carbon-steel", "stainless-steel"])';
COMMENT ON COLUMN standards.related_standard_ids IS 'Links to other related standards';

COMMENT ON TABLE material_etchants IS 'Junction table for many-to-many relationship between materials and etchants. Replaces string arrays for better scalability and queryability.';
COMMENT ON COLUMN material_etchants.is_primary IS 'True if this is the primary recommended etchant for this material';
COMMENT ON COLUMN material_etchants.recommended_for IS 'Specific use case or purpose for this etchant-material combination';
COMMENT ON COLUMN material_etchants.effectiveness_rating IS 'Rating 1-5 for how effective this etchant is for this material';

