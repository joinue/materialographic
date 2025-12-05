# Metallography.org

Free educational resources and guides for metallographic sample preparation. This site serves as a content hub and lead generation funnel for metallographic.com and shop.metallographic.com.

## Purpose

- **Educational Content Hub**: Provide free, comprehensive guides and resources
- **SEO & Lead Generation**: Attract organic traffic through valuable content
- **Conversion Funnel**: Guide users to materialsprep.com, shop.metallographic.com, and metallographic.com

## Tech Stack

- **Next.js 14** - React framework with App Router
- **TypeScript** - Type safety
- **Tailwind CSS** - Styling
- **SEO Optimized** - Built-in metadata and optimization

## Getting Started

### Installation

```bash
npm install
```

### Environment Variables

Create a `.env.local` file in the root directory with the following variables:

```env
# Supabase (required)
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key

# Resend (required for contact form)
RESEND_API_KEY=re_your_resend_api_key
# Optional: Custom from email (defaults to onboarding@resend.dev for testing)
# For production, verify your domain in Resend and use: RESEND_FROM_EMAIL=Metallography.org <noreply@metallography.org>
```

**Getting a Resend API Key:**
1. Sign up at [resend.com](https://resend.com) (free tier: 3,000 emails/month)
2. Create an API key in the dashboard
3. Add it to your `.env.local` file
4. For production: Verify your domain in Resend dashboard to use custom "from" addresses

### Development

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

### Build

```bash
npm run build
npm start
```

## Project Structure

```
├── app/
│   ├── layout.tsx          # Root layout with header/footer
│   ├── page.tsx             # Homepage
│   ├── guides/              # Guide pages
│   ├── resources/           # Resource downloads
│   ├── tools/               # Tools and calculators
│   └── blog/                # Blog articles
├── components/
│   ├── Header.tsx           # Navigation header
│   ├── Footer.tsx           # Site footer
│   ├── CTA.tsx              # Call-to-action component
│   └── ProductLink.tsx      # Product recommendation component
└── public/                  # Static assets
```

## Key Features

- **Responsive Design**: Mobile-first, works on all devices
- **SEO Optimized**: Metadata, structured content, semantic HTML
- **Conversion Elements**: CTAs, product links, newsletter signup
- **Cross-linking**: Integration with materialsprep.com and shop.metallographic.com

## Content Strategy

### Guides
- Step-by-step tutorials
- Material-specific preparation methods
- Process guides (grinding, polishing, etching)
- Troubleshooting guides

### Resources
- Downloadable PDFs
- Checklists
- Reference charts
- Quick reference guides

### Tools
- Grit size converters
- Time calculators
- Etchant selectors
- Links to materialsprep.com

### Blog
- Tips and techniques
- Industry news
- Best practices
- Case studies

## Conversion Strategy

1. **Soft CTAs**: Educational content with natural product mentions
2. **Procedure Tool**: Links to materialsprep.com for practical application
3. **Product Recommendations**: Contextual product links within guides
4. **Newsletter**: Email capture for lead nurturing
5. **Shop Links**: Clear navigation to shop.metallographic.com

## Deployment

This site can be deployed to:
- **Vercel** (recommended for Next.js)
- **Netlify**
- **Any static hosting** (after `npm run build`)

## Next Steps

1. Add more guide content
2. Create downloadable resources
3. Build out tool calculators
4. Add blog content
5. Set up analytics
6. Configure email newsletter service
7. Add search functionality
8. Create more sample content pages

## License

Proprietary - All rights reserved

