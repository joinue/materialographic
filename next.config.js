/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  // Vercel automatically optimizes images, so we can remove unoptimized: true
  // This allows Vercel to use its image optimization service
  images: {
    // Remove unoptimized for production builds on Vercel
    // Vercel will handle image optimization automatically
  },
  // Target modern browsers to reduce legacy JavaScript polyfills
  compiler: {
    // Remove console logs in production (optional, but good for performance)
    removeConsole: process.env.NODE_ENV === 'production' ? {
      exclude: ['error', 'warn'],
    } : false,
  },
  // Optimize for modern browsers
  swcMinify: true,
  // Experimental features for better performance
  experimental: {
    // Optimize package imports to reduce bundle size
    optimizePackageImports: ['lucide-react'],
  },
}

module.exports = nextConfig

