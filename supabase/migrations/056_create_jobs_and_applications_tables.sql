-- Migration: Create jobs and job_applications tables for careers page
-- This allows admins to post jobs and manage applications

-- Create jobs table
CREATE TABLE IF NOT EXISTS jobs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  location TEXT NOT NULL,
  job_type TEXT NOT NULL CHECK (job_type IN ('full-time', 'part-time', 'contract', 'internship')),
  status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'active', 'closed')),
  summary TEXT NOT NULL,
  description TEXT, -- Full job description (can be markdown)
  key_responsibilities TEXT, -- JSON array or text
  qualifications TEXT, -- JSON array or text
  preferred_qualifications TEXT, -- JSON array or text
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  order_index INTEGER DEFAULT 0 -- For custom ordering
);

-- Create job_applications table
CREATE TABLE IF NOT EXISTS job_applications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  job_id UUID NOT NULL REFERENCES jobs(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT,
  resume_url TEXT, -- URL to resume file in storage
  cover_letter_url TEXT, -- URL to cover letter file in storage
  status TEXT NOT NULL DEFAULT 'new' CHECK (status IN ('new', 'reviewing', 'interviewing', 'rejected', 'hired')),
  notes TEXT, -- Internal notes for screening
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  ip_address TEXT,
  user_agent TEXT
);

-- Create storage bucket for resumes and cover letters
INSERT INTO storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
VALUES (
  'job-applications',
  'job-applications',
  false,
  5242880, -- 5MB limit
  ARRAY['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document']
)
ON CONFLICT (id) DO NOTHING;

-- Create storage policies for job applications
-- Allow authenticated users (admins) to read all applications
CREATE POLICY "Admins can read job applications"
ON storage.objects FOR SELECT
USING (
  bucket_id = 'job-applications' AND
  auth.role() = 'authenticated'
);

-- Allow public to upload applications (but not read others)
CREATE POLICY "Public can upload job applications"
ON storage.objects FOR INSERT
WITH CHECK (
  bucket_id = 'job-applications' AND
  (storage.foldername(name))[1] = 'applications'
);

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_jobs_status ON jobs(status);
CREATE INDEX IF NOT EXISTS idx_jobs_created_at ON jobs(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_job_applications_job_id ON job_applications(job_id);
CREATE INDEX IF NOT EXISTS idx_job_applications_status ON job_applications(status);
CREATE INDEX IF NOT EXISTS idx_job_applications_created_at ON job_applications(created_at DESC);

-- Create updated_at trigger function if it doesn't exist
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for updated_at
CREATE TRIGGER update_jobs_updated_at
  BEFORE UPDATE ON jobs
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_job_applications_updated_at
  BEFORE UPDATE ON job_applications
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Enable RLS
ALTER TABLE jobs ENABLE ROW LEVEL SECURITY;
ALTER TABLE job_applications ENABLE ROW LEVEL SECURITY;

-- Policies for jobs table
-- Public can read active jobs
CREATE POLICY "Public can read active jobs"
ON jobs FOR SELECT
USING (status = 'active');

-- Authenticated users (admins) can do everything with jobs
CREATE POLICY "Admins can manage jobs"
ON jobs FOR ALL
USING (auth.role() = 'authenticated')
WITH CHECK (auth.role() = 'authenticated');

-- Policies for job_applications table
-- Public can insert applications
CREATE POLICY "Public can submit applications"
ON job_applications FOR INSERT
WITH CHECK (true);

-- Public can read their own applications (by email)
CREATE POLICY "Public can read own applications"
ON job_applications FOR SELECT
USING (
  email = (SELECT email FROM auth.users WHERE id = auth.uid()) OR
  auth.role() = 'authenticated'
);

-- Authenticated users (admins) can do everything with applications
CREATE POLICY "Admins can manage applications"
ON job_applications FOR ALL
USING (auth.role() = 'authenticated')
WITH CHECK (auth.role() = 'authenticated');

-- Add comments
COMMENT ON TABLE jobs IS 'Job postings for the careers page';
COMMENT ON TABLE job_applications IS 'Job applications submitted by candidates';
COMMENT ON COLUMN jobs.status IS 'draft: not visible, active: visible on careers page, closed: no longer accepting applications';
COMMENT ON COLUMN job_applications.status IS 'new: just submitted, reviewing: being reviewed, interviewing: in interview process, rejected: not selected, hired: position filled';

