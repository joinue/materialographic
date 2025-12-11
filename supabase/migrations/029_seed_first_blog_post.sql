-- Seed the first blog post: Welcome to the Metallography.org Blog
INSERT INTO blog_posts (
  title,
  slug,
  excerpt,
  content,
  category,
  tags,
  image,
  author,
  read_time,
  status,
  featured,
  published_at
) VALUES (
  'Welcome to the Metallography.org Blog',
  'welcome-to-metallography-org-blog',
  'We''re excited to launch our blog dedicated to metallographic sample preparation, analysis techniques, and industry insights. Join us as we share expert knowledge, practical tips, and real-world case studies.',
  '<p>Welcome to the Metallography.org blog! We''re thrilled to launch this new resource for the metallography community. Whether you''re a seasoned metallographer or just starting your journey in sample preparation and analysis, this blog is designed to support your work.</p>

<h2>What You Can Expect</h2>

<p>Our blog will feature a variety of content to help you excel in metallography:</p>

<ul>
  <li><strong>Tips & Techniques:</strong> Practical advice for improving your sample preparation workflow, from sectioning and mounting to polishing and etching</li>
  <li><strong>Case Studies:</strong> Real-world examples of metallographic analysis and problem-solving</li>
  <li><strong>Industry News:</strong> Updates on standards, equipment innovations, and metallography trends</li>
  <li><strong>Best Practices:</strong> Proven methods for consistent, high-quality results</li>
  <li><strong>Material-Specific Guides:</strong> Deep dives into preparing and analyzing specific materials</li>
</ul>

<h2>Why Metallography Matters</h2>

<p>Metallography is the science of examining the microstructure of materials, particularly metals and alloys. It plays a crucial role in:</p>

<ul>
  <li>Quality control and assurance</li>
  <li>Failure analysis</li>
  <li>Research and development</li>
  <li>Material characterization</li>
  <li>Process optimization</li>
</ul>

<p>Proper sample preparation is the foundation of accurate metallographic analysis. Even the most advanced microscopes can''t reveal what poor preparation obscures.</p>

<h2>Getting Started</h2>

<p>If you''re new to metallography, we recommend starting with our comprehensive <a href="/guides">sample preparation guides</a>. These step-by-step procedures cover everything from initial sectioning through final etching.</p>

<p>For experienced metallographers, explore our <a href="/materials">materials database</a> to find specific preparation techniques for hundreds of different materials, or check out our <a href="/resources">resources section</a> for reference materials and tools.</p>

<h2>Join the Community</h2>

<p>We''re building this resource for you, and we''d love to hear your feedback. Have a technique to share? Encountered a challenging material? Found a better way to do something? <a href="/contact">Get in touch</a> – we''d love to feature your expertise.</p>

<p>Check back regularly for new articles, or explore our existing resources while you wait. Happy metallographing!</p>',
  'Announcement',
  ARRAY['metallography', 'sample preparation', 'microstructure', 'quality control', 'materials analysis'],
  '/logo.png',
  'Metallography.org Team',
  '3 min read',
  'published',
  true,
  '2025-12-11T12:00:00Z'
);

