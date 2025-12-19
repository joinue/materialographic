-- Migration: Seed jobs table with positions from careers.html
-- This populates the jobs table with the current open positions

-- Only insert if jobs don't already exist
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM jobs WHERE title = 'Mechanical Engineer II' AND location = 'Tucson, AZ') THEN
    INSERT INTO jobs (title, location, job_type, status, summary, description, key_responsibilities, qualifications, preferred_qualifications, order_index) VALUES
(
  'Mechanical Engineer II',
  'Tucson, AZ',
  'full-time',
  'active',
  'This role supports day-to-day engineering work, customer support, and product development. The ideal candidate has prior industry experience and can contribute quickly while learning existing systems.',
  '<p><strong>(Engineering Support & Product Development)</strong></p><p>This role supports day-to-day engineering work, customer support, and product development. The ideal candidate has prior industry experience and can contribute quickly while learning existing systems.</p>',
  '["Support product design, documentation, and engineering changes", "Assist with troubleshooting customer and production issues", "Generate drawings, specs, and technical documentation", "Work closely with operations and sales to support customer needs", "Participate in continuous improvement initiatives", "Support root-cause analysis and corrective actions for field or production issues"]',
  '["Bachelor''s degree in Mechanical Engineering or related field", "2-5 years of relevant engineering experience", "Strong CAD skills (SolidWorks or equivalent)", "Comfortable working cross-functionally", "Hands-on, practical engineering mindset", "Requires mechanical and electrical skills (interface programming skills are a bonus)", "Machine shop experience is also valuable", "Position requires developing assembly drawings and writing product and service manuals"]',
  '["Experience with lab, industrial, or manufacturing equipment", "Familiarity with, or interest in learning, metallography and sample preparation processes"]',
  0
),
(
  'Chemical Process Specialist',
  'Tucson, AZ',
  'full-time',
  'active',
  'This role is responsible for consumables formulation, mixing, handling, and quality control, with a strong foundation in physical chemistry. The position supports chemical systems used in consumables and processes.',
  '<p>This role is responsible for consumables formulation, mixing, handling, and quality control, with a strong foundation in physical chemistry. The position supports chemical systems used in consumables and processes.</p><p><em>This is a hands-on technical role focused on practical chemistry, not academic research.</em></p>',
  '["Mix, prepare, and scale consumable formulations per defined recipes", "Handle various chemicals safely and consistently, includes updating GHS Safety Data Sheets (SDS)", "Support development and optimization of consumable formulations", "Perform basic analytical checks (viscosity, pH, operating a particle size analyzer)", "Maintain documentation, batch records, COA''s and SOPs", "Ensure compliance with safety, handling, and storage requirements", "Support troubleshooting of consumable-related issues", "Certified in OSHA safety and DOT Dangerous Goods shipping a plus (will also train as required)"]',
  '[]',
  '[]',
  1
),
(
  'Sales Operations & Support Coordinator',
  'Tucson, AZ',
  'full-time',
  'active',
  'This role is a force multiplier—a critical support role for the sales team. The Sales Operations & Support Coordinator ensures quotes move quickly, follow-ups happen on time, orders are clean, and CRM data is accurate, allowing our technical sales reps to spend more time selling and supporting our customers.',
  '<p><strong>(Quoting, CRM, Order Hygiene, Sales Enablement)</strong></p><p>This role is a force multiplier—a critical support role for the sales team. The Sales Operations & Support Coordinator ensures quotes move quickly, follow-ups happen on time, orders are clean, and CRM data is accurate, allowing our technical sales reps to spend more time selling and supporting our customers.</p><p><em>This role offers a growth path into a full sales position as the team and business expand.</em></p>',
  '["Prepare and send quotes promptly and accurately on behalf of our sales reps", "Track quote status and ensure timely follow-up", "Verify pricing, lead times, and configurations", "Support clean order handoffs from quote to fulfillment", "Communicate with staff in multiple departments to achieve daily goals/support customers", "Maintain CRM accuracy (contacts, opportunities, activities)", "Clean up incomplete or outdated records", "Track pipeline activity and basic performance metrics", "Support reporting and forecasting accuracy", "Proactively think and suggest improvements", "Proactively follow up on quotes, open items, and customer questions", "Coordinate between sales, operations, and engineering", "Ensure nothing \"falls through the cracks\""]',
  '["1+ years in sales support, operations, or customer-facing admin roles", "Strong attention to detail and follow-through", "Comfortable with CRM systems and quoting tools", "Clear written and verbal communication skills", "Organized, proactive, and process-oriented", "Ability to stay on task", "Knowledge of Microsoft Outlook", "Ability to travel if needed"]',
  '["Experience in industrial, technical, or B2B sales environments", "Familiarity with HubSpot CRM specifically", "Interest in moving into a sales role over time"]',
  2
),
(
  'Operations & Consumables Technician',
  'Tucson, AZ',
  'full-time',
  'active',
  'This role supports daily operations by managing warehouse activities, consumables processing (including pour-outs and packaging), and outbound shipping. The position is hands-on and execution-focused, with an opportunity to assist one day per week with administrative overflow supporting Order Processing and Customer Service.',
  '<p><strong>(Warehouse, Consumables Processing, Packaging & Shipping)</strong></p><p>This role supports daily operations by managing warehouse activities, consumables processing (including pour-outs and packaging), and outbound shipping. The position is hands-on and execution-focused, with an opportunity to assist one day per week with administrative overflow supporting Order Processing and Customer Service.</p><p><em>This role is designed for someone who can become productive quickly and grow into broader operational support.</em></p>',
  '["Receive, inspect, and log incoming materials and consumables", "Maintain organized, accurate inventory (raw materials, packaged consumables, finished goods)", "Pick, pack, and ship customer orders accurately and on time", "Coordinate outbound shipments (domestic and international) and prepare shipping documentation", "Perform consumables pour-outs into bottles or containers per established procedures", "Label, package, and batch consumables accurately", "Maintain cleanliness and safety in consumables handling areas", "Follow SOPs for storage, handling, and shelf-life control", "Assist with order entry, documentation, and general admin overflow", "Support our Front Office with data cleanup, filing, and basic customer/order follow-ups", "Help maintain order accuracy and internal documentation"]',
  '["1–3 years in warehouse, operations, or production support roles", "Comfortable with hands-on, repetitive, detail-oriented work", "Basic computer skills (ERP, inventory systems, spreadsheets)", "Strong organizational skills and reliability", "Ability to lift up to 50 lbs and work on your feet"]',
  '["Experience handling industrial or lab consumables", "Familiarity with shipping software and carriers", "Experience supporting admin or customer service teams"]',
  3
);
  END IF;
END $$;

