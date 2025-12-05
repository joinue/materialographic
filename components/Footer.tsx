import Link from 'next/link'

export default function Footer() {
  return (
    <footer className="mt-20">
      {/* Footer Content in Glassmorphic Container - Full Width */}
      <div className="w-full bg-gray-900/95 backdrop-blur-xl border-t border-gray-800/30 shadow-2xl shadow-gray-900/20 relative overflow-hidden rounded-t-3xl">
        {/* Subtle gradient overlay */}
        <div className="absolute inset-0 bg-gradient-to-b from-transparent via-gray-900/50 to-gray-900 pointer-events-none"></div>
        
        <div className="container-custom relative z-10 py-16 md:py-20">
          {/* Main Footer Content */}
          <div className="grid grid-cols-1 md:grid-cols-12 gap-12 mb-12">
            {/* Brand Section - Takes more space */}
            <div className="md:col-span-4">
              <h2 className="text-2xl font-bold text-white tracking-tight mb-6">Metallography.org</h2>
              <p className="text-base text-gray-300 leading-relaxed mb-6 max-w-md">
                Free educational resources and guides for metallographic sample preparation. 
                Expert techniques, best practices, and comprehensive guides.
              </p>
              {/* CTA Buttons */}
              <div className="flex flex-col sm:flex-row gap-3 relative z-20">
                <Link 
                  href="https://www.metallographic.com" 
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-tertiary text-center whitespace-nowrap"
                >
                  Metallographic.com
                </Link>
                <Link 
                  href="https://shop.metallographic.com" 
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-primary text-center whitespace-nowrap"
                >
                  Shop Consumables
                </Link>
                <Link 
                  href="https://metallographic.com/equipment" 
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-secondary text-center whitespace-nowrap"
                >
                  Browse Equipment
                </Link>
              </div>
            </div>
            
            {/* Navigation Links */}
            <div className="md:col-span-2">
              <h4 className="text-white font-semibold mb-6 text-sm uppercase tracking-wider">Resources</h4>
              <ul className="space-y-3">
                <li><Link href="/guides" className="text-gray-400 hover:text-white transition-colors text-sm">Guides</Link></li>
                <li><Link href="/resources" className="text-gray-400 hover:text-white transition-colors text-sm">Resources</Link></li>
                <li><Link href="/tools" className="text-gray-400 hover:text-white transition-colors text-sm">Tools</Link></li>
              </ul>
            </div>
            
            <div className="md:col-span-2">
              <h4 className="text-white font-semibold mb-6 text-sm uppercase tracking-wider">Our Sites</h4>
              <ul className="space-y-3">
                <li>
                  <Link href="https://metallographic.com" target="_blank" rel="noopener noreferrer" className="text-gray-400 hover:text-white transition-colors text-sm">
                    Metallographic.com
                  </Link>
                </li>
                <li>
                  <Link href="https://shop.metallographic.com" target="_blank" rel="noopener noreferrer" className="text-gray-400 hover:text-white transition-colors text-sm">
                    Shop Consumables
                  </Link>
                </li>
                <li>
                  <Link href="https://metallographic.com/equipment" target="_blank" rel="noopener noreferrer" className="text-gray-400 hover:text-white transition-colors text-sm">
                    Shop Equipment
                  </Link>
                </li>
                <li>
                  <Link href="https://materialsprep.com" target="_blank" rel="noopener noreferrer" className="text-gray-400 hover:text-white transition-colors text-sm">
                    Procedure Tool
                  </Link>
                </li>
              </ul>
            </div>
            
            <div className="md:col-span-2">
              <h4 className="text-white font-semibold mb-6 text-sm uppercase tracking-wider">Connect</h4>
              <ul className="space-y-3">
                <li><Link href="/contact" className="text-gray-400 hover:text-white transition-colors text-sm">Contact</Link></li>
                <li><Link href="/about" className="text-gray-400 hover:text-white transition-colors text-sm">About</Link></li>
              </ul>
            </div>
            
            {/* Additional Info Column */}
            <div className="md:col-span-2">
              <h4 className="text-white font-semibold mb-6 text-sm uppercase tracking-wider">Learn More</h4>
              <ul className="space-y-3">
                <li><Link href="/guides" className="text-gray-400 hover:text-white transition-colors text-sm">Getting Started</Link></li>
                <li><Link href="/resources" className="text-gray-400 hover:text-white transition-colors text-sm">Documentation</Link></li>
              </ul>
            </div>
          </div>
          
          {/* Bottom Bar */}
          <div className="border-t border-gray-800 pt-8">
            <div className="flex flex-col md:flex-row justify-between items-center gap-4">
              <div className="flex flex-col md:flex-row items-baseline gap-2 md:gap-3">
                <span className="text-sm text-gray-500">
                  &copy; {new Date().getFullYear()} Metallography.org. All rights reserved.
                </span>
                <span className="hidden md:inline text-gray-600">•</span>
                <span className="text-sm text-gray-500">
                  Owned and operated by <span className="text-gray-400">PACE Technologies Corporation</span>
                </span>
              </div>
              <div className="flex items-center gap-6 text-sm text-gray-500">
                <Link href="/privacy" className="hover:text-gray-300 transition-colors">Privacy</Link>
                <Link href="/terms" className="hover:text-gray-300 transition-colors">Terms</Link>
                <Link href="/sitemap" className="hover:text-gray-300 transition-colors">Sitemap</Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  )
}

