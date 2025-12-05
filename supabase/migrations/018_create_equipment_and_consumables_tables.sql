-- Create equipment table for lab equipment recommendations
CREATE TABLE IF NOT EXISTS equipment (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  item_id TEXT UNIQUE, -- e.g., "MEGA-T300A", "NANO-1000S"
  slug TEXT UNIQUE,
  description TEXT,
  category TEXT NOT NULL, -- 'sectioning', 'mounting', 'grinding', 'polishing', 'microscopy', 'cleaning', 'hardness'
  subcategory TEXT, -- e.g., 'automated-abrasive-sectioning', 'manual-abrasive-sectioning', 'precision-wafering'
  
  -- Product Attributes
  is_pace_product BOOLEAN DEFAULT true,
  product_url TEXT,
  image_url TEXT,
  
  -- Technical Specifications
  blade_size_mm INTEGER, -- For cutters: 250, 300, 350, 400
  blade_size_inches INTEGER, -- For cutters: 10, 12, 14, 16
  automation_level TEXT CHECK (automation_level IN ('manual', 'semi-automated', 'automated')), -- 'manual', 'semi-automated', 'automated'
  wheel_size_inches INTEGER[], -- For grinders/polishers: [8, 10] or [12, 14]
  max_cutting_capacity_mm NUMERIC,
  max_cutting_capacity_inches NUMERIC,
  
  -- Suitability Attributes (for recommendation matching)
  suitable_for_material_types TEXT[], -- ['steel', 'aluminum', 'titanium', 'ceramics', etc.]
  suitable_for_hardness TEXT[], -- ['soft', 'medium', 'hard', 'very-hard']
  suitable_for_sample_sizes TEXT[], -- ['small', 'medium', 'large', 'very-large']
  suitable_for_sample_shapes TEXT[], -- ['regular', 'irregular', 'thin', 'small-delicate']
  suitable_for_throughput TEXT[], -- ['low', 'medium', 'high', 'very-high']
  suitable_for_applications TEXT[], -- ['quality-control', 'research', 'failure-analysis', etc.]
  min_budget_level TEXT, -- 'budget-conscious', 'standard', 'premium', 'enterprise'
  
  -- Metadata
  tags TEXT[],
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'discontinued', 'draft')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create consumables table for consumable recommendations
CREATE TABLE IF NOT EXISTS consumables (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  
  -- Basic Information
  name TEXT NOT NULL,
  item_id TEXT UNIQUE, -- e.g., "MAX-D300", "WB-0045HC"
  sku TEXT,
  slug TEXT UNIQUE,
  description TEXT,
  category TEXT NOT NULL, -- 'sectioning', 'mounting', 'grinding', 'polishing', 'etching'
  subcategory TEXT, -- e.g., 'abrasive-blades', 'diamond-blades', 'mounting-resins', 'polishing-cloths'
  
  -- Product Attributes
  is_pace_product BOOLEAN DEFAULT true,
  product_url TEXT,
  image_url TEXT,
  list_price NUMERIC,
  
  -- Technical Specifications
  size_mm INTEGER, -- For blades: 250, 300, 350, 400
  size_inches INTEGER, -- For blades: 10, 12, 14, 16
  grit_size TEXT, -- For abrasives: 'coarse', 'medium', 'fine', or specific grit numbers
  material_composition TEXT, -- e.g., 'alumina/resin', 'silicon-carbide/resin-rubber', 'diamond'
  type TEXT, -- e.g., 'abrasive-blade', 'diamond-blade', 'epoxy-resin', 'polishing-cloth'
  
  -- Suitability Attributes (for recommendation matching)
  suitable_for_material_types TEXT[], -- ['steel', 'aluminum', 'titanium', 'ceramics', etc.]
  suitable_for_hardness TEXT[], -- ['soft', 'medium', 'hard', 'very-hard']
  compatible_with_equipment TEXT[], -- Array of equipment item_ids this consumable works with
  recommended_for_applications TEXT[], -- ['quality-control', 'research', 'failure-analysis', etc.]
  
  -- Metadata
  tags TEXT[],
  is_active BOOLEAN DEFAULT true,
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'discontinued', 'draft')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for efficient querying
CREATE INDEX IF NOT EXISTS idx_equipment_category ON equipment(category);
CREATE INDEX IF NOT EXISTS idx_equipment_automation ON equipment(automation_level);
CREATE INDEX IF NOT EXISTS idx_equipment_blade_size ON equipment(blade_size_mm);
CREATE INDEX IF NOT EXISTS idx_equipment_status ON equipment(status);
CREATE INDEX IF NOT EXISTS idx_equipment_item_id ON equipment(item_id);

CREATE INDEX IF NOT EXISTS idx_consumables_category ON consumables(category);
CREATE INDEX IF NOT EXISTS idx_consumables_subcategory ON consumables(subcategory);
CREATE INDEX IF NOT EXISTS idx_consumables_size ON consumables(size_mm);
CREATE INDEX IF NOT EXISTS idx_consumables_status ON consumables(status);
CREATE INDEX IF NOT EXISTS idx_consumables_item_id ON consumables(item_id);

-- Add updated_at trigger function if it doesn't exist
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Add triggers for updated_at
CREATE TRIGGER update_equipment_updated_at BEFORE UPDATE ON equipment
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_consumables_updated_at BEFORE UPDATE ON consumables
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

