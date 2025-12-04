'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState } from 'react'
import { ChevronRight, Menu, X, ChevronDown } from 'lucide-react'

export default function Header() {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const [activeDropdown, setActiveDropdown] = useState<string | null>(null)

  return (
    <header className="fixed top-0 left-0 right-0 z-50 bg-transparent">
      <nav className="container-custom max-w-[1536px] py-4">
        <div className="flex items-center justify-between h-16 px-6 rounded-full bg-white/60 backdrop-blur-md border border-white/30 shadow-xl shadow-gray-900/10">
          {/* Logo and Navigation */}
          <div className="flex items-center space-x-4">
            <Link href="/" className="flex items-center space-x-3">
              <div className="relative">
                <Image 
                  src="/logo.png" 
                  alt="Metallography.org" 
                  width={50} 
                  height={50}
                  className="h-10 w-auto"
                  priority
                />
              </div>
              <span className="text-xl font-bold tracking-tight text-gray-900">
                Metallography.org
              </span>
            </Link>
            
            {/* Desktop Navigation with Dropdowns */}
            <div className="hidden lg:flex items-center space-x-0">
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('guides')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/guides" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Guides
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'guides' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-72 bg-white/95 backdrop-blur-md rounded-2xl shadow-xl border border-white/30 py-3 z-50">
                      <Link href="/guides" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        All Guides
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">Categories</p>
                        <Link href="/guides?category=Basics" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Basics
                        </Link>
                        <Link href="/guides?category=Process" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Process
                        </Link>
                        <Link href="/guides?category=Material-Specific" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Material-Specific
                        </Link>
                        <Link href="/guides?category=Application-Specific" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Application-Specific
                        </Link>
                        <Link href="/guides?category=Troubleshooting" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Troubleshooting
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('resources')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/resources" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Resources
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'resources' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-80 bg-white/95 backdrop-blur-md rounded-2xl shadow-xl border border-white/30 py-3 z-50">
                      <Link href="/resources" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        All Resources
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">Categories</p>
                        <Link href="/resources?category=Checklists & Quick References" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Checklists & Quick References
                        </Link>
                        <Link href="/resources?category=Reference Charts" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Reference Charts
                        </Link>
                        <Link href="/resources?category=Preparation Guides" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Preparation Guides
                        </Link>
                        <Link href="/resources?category=Troubleshooting" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Troubleshooting
                        </Link>
                      </div>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">Popular</p>
                        <Link href="/resources/checklist" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Sample Prep Checklist
                        </Link>
                        <Link href="/resources/grit-size-chart" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Grit Size Chart
                        </Link>
                        <Link href="/resources/common-etchants-guide" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Common Etchants
                        </Link>
                        <Link href="/resources/hardness-scale-conversion" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Hardness Conversion
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('tools')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/tools" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Tools
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'tools' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-72 bg-white/95 backdrop-blur-md rounded-2xl shadow-xl border border-white/30 py-3 z-50">
                      <Link href="/tools" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        All Tools
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">Categories</p>
                        <Link href="/tools?category=Calculators" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Calculators
                        </Link>
                        <Link href="/tools?category=Reference" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Reference
                        </Link>
                        <Link href="/tools?category=Workflow" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Workflow
                        </Link>
                      </div>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">Popular</p>
                        <Link href="/tools/grit-size-converter" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Grit Size Converter
                        </Link>
                        <Link href="/tools/etchant-selector" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Etchant Selector
                        </Link>
                        <Link href="/tools/polishing-time-calculator" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Polishing Time Calculator
                        </Link>
                        <Link href="https://materialsprep.com" target="_blank" rel="noopener noreferrer" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Procedure Tool →
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
            </div>
          </div>

          {/* Action Buttons */}
          <div className="hidden lg:flex items-center space-x-3">
            <Link 
              href="https://shop.metallographic.com" 
              target="_blank"
              rel="noopener noreferrer"
              className="px-5 py-2 bg-white text-gray-900 rounded-full font-semibold hover:bg-gray-50 transition-all duration-200 border border-gray-200 text-sm shadow-sm hover:shadow-md"
            >
              Shop Consumables
            </Link>
            <Link 
              href="/build" 
              className="px-5 py-2 bg-gray-900 text-white hover:text-white rounded-full font-semibold hover:bg-gray-800 transition-all duration-200 flex items-center space-x-2 text-sm shadow-md hover:shadow-lg"
            >
              <span>Build Your Lab</span>
              <ChevronRight className="w-4 h-4" />
            </Link>
          </div>

          {/* Mobile menu button */}
          <button
            className="lg:hidden p-2 rounded-lg transition-all duration-200 text-gray-700 hover:bg-gray-100"
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            aria-label="Toggle menu"
          >
            {mobileMenuOpen ? (
              <X className="w-6 h-6" />
            ) : (
              <Menu className="w-6 h-6" />
            )}
          </button>
        </div>

        {/* Mobile Navigation */}
        {mobileMenuOpen && (
          <div className="lg:hidden py-4 px-6 rounded-2xl mt-3 shadow-xl backdrop-blur-xl transition-all duration-300 bg-white border border-gray-200">
            {/* Guides Section */}
            <div className="mb-4">
              <Link 
                href="/guides" 
                className="block py-2.5 text-gray-900 hover:text-primary-600 font-semibold border-b border-gray-200"
                onClick={() => setMobileMenuOpen(false)}
              >
                Guides
              </Link>
              <div className="pl-4 pt-2 space-y-1">
                <Link href="/guides?category=Basics" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Basics</Link>
                <Link href="/guides?category=Process" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Process</Link>
                <Link href="/guides?category=Material-Specific" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Material-Specific</Link>
                <Link href="/guides?category=Application-Specific" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Application-Specific</Link>
                <Link href="/guides?category=Troubleshooting" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Troubleshooting</Link>
              </div>
            </div>

            {/* Resources Section */}
            <div className="mb-4">
              <Link 
                href="/resources" 
                className="block py-2.5 text-gray-900 hover:text-primary-600 font-semibold border-b border-gray-200"
                onClick={() => setMobileMenuOpen(false)}
              >
                Resources
              </Link>
              <div className="pl-4 pt-2 space-y-1">
                <Link href="/resources?category=Checklists & Quick References" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Checklists & Quick References</Link>
                <Link href="/resources?category=Reference Charts" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Reference Charts</Link>
                <Link href="/resources?category=Preparation Guides" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Preparation Guides</Link>
                <Link href="/resources?category=Troubleshooting" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Troubleshooting</Link>
              </div>
            </div>

            {/* Tools Section */}
            <div className="mb-4">
              <Link 
                href="/tools" 
                className="block py-2.5 text-gray-900 hover:text-primary-600 font-semibold border-b border-gray-200"
                onClick={() => setMobileMenuOpen(false)}
              >
                Tools
              </Link>
              <div className="pl-4 pt-2 space-y-1">
                <Link href="/tools?category=Calculators" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Calculators</Link>
                <Link href="/tools?category=Reference" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Reference</Link>
                <Link href="/tools?category=Workflow" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Workflow</Link>
              </div>
            </div>

            <div className="flex flex-col space-y-3 mt-4 pt-4 border-t border-gray-200">
              <Link 
                href="https://shop.metallographic.com" 
                target="_blank"
                rel="noopener noreferrer"
                className="px-5 py-2 bg-white text-gray-900 rounded-full font-semibold hover:bg-gray-50 transition-all duration-200 border border-gray-200 text-center text-sm shadow-sm hover:shadow-md"
                onClick={() => setMobileMenuOpen(false)}
              >
                Shop Consumables
              </Link>
              <Link 
                href="/build" 
                className="px-5 py-2 bg-gray-900 text-white hover:text-white rounded-full font-semibold hover:bg-gray-800 transition-all duration-200 flex items-center justify-center space-x-2 text-sm shadow-md hover:shadow-lg"
                onClick={() => setMobileMenuOpen(false)}
              >
                <span>Build Your Lab</span>
                <ChevronRight className="w-4 h-4" />
              </Link>
            </div>
          </div>
        )}
      </nav>
    </header>
  )
}

