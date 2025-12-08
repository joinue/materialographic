-- Add admin policies for materials table
-- Allow authenticated users to perform all operations

-- Allow authenticated users to read all materials (including drafts)
CREATE POLICY "Allow authenticated users to read all materials" ON materials
  FOR SELECT
  TO authenticated
  USING (true);

-- Allow authenticated users to insert materials
CREATE POLICY "Allow authenticated users to insert materials" ON materials
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

-- Allow authenticated users to update materials
CREATE POLICY "Allow authenticated users to update materials" ON materials
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Allow authenticated users to delete materials
CREATE POLICY "Allow authenticated users to delete materials" ON materials
  FOR DELETE
  TO authenticated
  USING (true);

