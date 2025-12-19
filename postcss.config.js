module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
    // Add cssnano for production CSS minification and optimization
    // Note: Next.js already minifies CSS, but cssnano provides additional optimizations
    ...(process.env.NODE_ENV === 'production' ? {
      cssnano: {
        preset: ['default', {
          discardComments: {
            removeAll: true,
          },
          normalizeWhitespace: true,
          // Reduce calc() expressions where possible
          calc: true,
          // Merge duplicate rules
          mergeRules: true,
          // Reduce CSS where possible
          reduceIdents: false, // Keep animation names
          zindex: false, // Don't optimize z-index values
        }],
      },
    } : {}),
  },
}

