-- Create page_views table for tracking all page visits
CREATE TABLE IF NOT EXISTS page_views (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Page Information
  path TEXT NOT NULL, -- e.g., '/blog/my-post', '/materials/steel'
  full_url TEXT, -- Full URL including query params
  referrer TEXT, -- Where they came from
  
  -- Visitor Information
  ip_address INET,
  user_agent TEXT,
  country_code TEXT, -- ISO country code (e.g., 'US', 'GB')
  country_name TEXT,
  region TEXT, -- State/Province
  city TEXT,
  
  -- Device Information
  device_type TEXT, -- 'desktop', 'mobile', 'tablet'
  browser TEXT,
  os TEXT,
  
  -- Session Information
  session_id TEXT, -- To group views from same session
  is_bot BOOLEAN DEFAULT false,
  
  -- Timestamps
  viewed_at TIMESTAMPTZ DEFAULT TIMEZONE('utc', NOW()) NOT NULL
);

-- Create indexes for common queries
CREATE INDEX IF NOT EXISTS idx_page_views_path ON page_views(path);
CREATE INDEX IF NOT EXISTS idx_page_views_viewed_at ON page_views(viewed_at DESC);
CREATE INDEX IF NOT EXISTS idx_page_views_country_code ON page_views(country_code);
CREATE INDEX IF NOT EXISTS idx_page_views_session_id ON page_views(session_id);
CREATE INDEX IF NOT EXISTS idx_page_views_is_bot ON page_views(is_bot) WHERE is_bot = false;

-- Composite index for analytics queries
CREATE INDEX IF NOT EXISTS idx_page_views_path_date ON page_views(path, viewed_at DESC);

-- Enable RLS
ALTER TABLE page_views ENABLE ROW LEVEL SECURITY;

-- Policy: Anyone can insert page views (for tracking)
CREATE POLICY "Anyone can track page views"
  ON page_views
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

-- Policy: Authenticated users can view all page views (for analytics)
CREATE POLICY "Authenticated users can view page views"
  ON page_views
  FOR SELECT
  TO authenticated
  USING (true);

