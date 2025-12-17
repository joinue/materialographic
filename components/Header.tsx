'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { ChevronRight, Menu, X, ChevronDown, Search, LogOut } from 'lucide-react'
import GlobalSearch from '@/components/GlobalSearch'
import { createClient } from '@/lib/supabase-client'

export default function Header() {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)
  const [activeDropdown, setActiveDropdown] = useState<string | null>(null)
  const [searchOpen, setSearchOpen] = useState(false)
  const [mobileExpandedSection, setMobileExpandedSection] = useState<string | null>(null)
  const [isAdmin, setIsAdmin] = useState(false)
  const [isScrolled, setIsScrolled] = useState(false)
  const router = useRouter()

  // Handle scroll effect
  useEffect(() => {
    const handleScroll = () => {
      const scrollPosition = window.scrollY
      setIsScrolled(scrollPosition > 50)
    }

    window.addEventListener('scroll', handleScroll)
    return () => window.removeEventListener('scroll', handleScroll)
  }, [])

  // Check if user is logged in as admin
  useEffect(() => {
    const checkUser = async () => {
      try {
        const supabase = createClient()
        const { data: { user } } = await supabase.auth.getUser()
        setIsAdmin(!!user)
      } catch (error) {
        setIsAdmin(false)
      }
    }

    checkUser()

    // Listen for auth state changes
    const supabase = createClient()
    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setIsAdmin(!!session?.user)
    })

    return () => {
      subscription.unsubscribe()
    }
  }, [])

  // Keyboard shortcut for search (Cmd/Ctrl + K)
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
        e.preventDefault()
        setSearchOpen(true)
      }
    }

    window.addEventListener('keydown', handleKeyDown)
    return () => window.removeEventListener('keydown', handleKeyDown)
  }, [])

  const handleLogout = async () => {
    try {
      const supabase = createClient()
      await supabase.auth.signOut()
      router.push('/')
      router.refresh()
    } catch (error) {
      console.error('Logout error:', error)
    }
  }

  return (
    <header className="fixed top-0 left-0 right-0 z-50 bg-transparent">
      <nav className="w-full">
        <div className={`hidden lg:flex items-center px-8 bg-white border-b border-gray-200 shadow-sm w-full transition-all duration-300 ${
          isScrolled ? 'min-h-20' : 'min-h-24'
        }`}>
          {/* Logo */}
          <div className={`flex items-center pr-8 transition-all duration-300 ${
            isScrolled ? 'py-3' : 'py-4'
          }`}>
            <Link href="/" className="flex items-center">
              <div className={`relative w-auto transition-all duration-300 ${
                isScrolled ? 'h-16' : 'h-20'
              }`}>
                <Image 
                  src="/images/pace/materialographic-logo.png" 
                  alt="Materialographic.com" 
                  width={160} 
                  height={160}
                  className={`w-auto object-contain transition-all duration-300 ${
                    isScrolled ? 'h-16' : 'h-20'
                  }`}
                  priority
                  fetchPriority="high"
                  quality={100}
                />
              </div>
            </Link>
          </div>
          
          {/* Desktop Navigation with Dropdowns - Centered */}
          <div className="flex items-center space-x-0 flex-1 justify-center">
              {/* Equipment */}
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('equipment')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/equipment" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Equipment
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'equipment' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-80 bg-white rounded-2xl shadow-xl border border-gray-200 py-3 z-50">
                      <Link href="/equipment" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        All Equipment
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">By Process</p>
                        <Link href="/equipment/sectioning" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Sectioning
                        </Link>
                        <Link href="/equipment/mounting" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Mounting
                        </Link>
                        <Link href="/equipment/grinding-polishing" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Grinding & Polishing
                        </Link>
                        <Link href="/equipment/microscopy" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Microscopy
                        </Link>
                        <Link href="/equipment/hardness-testing" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Hardness Testing
                        </Link>
                        <Link href="/equipment/lab-furniture" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Lab Furniture
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              {/* Consumables */}
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('consumables')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/consumables" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Consumables
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'consumables' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-80 bg-white rounded-2xl shadow-xl border border-gray-200 py-3 z-50">
                      <Link href="/consumables" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        All Consumables
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <p className="px-3 py-1.5 text-xs font-semibold text-gray-500 uppercase tracking-wider">By Process</p>
                        <Link href="/consumables/sectioning" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Sectioning
                        </Link>
                        <Link href="/consumables/mounting" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Mounting
                        </Link>
                        <Link href="/consumables/grinding-lapping" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Grinding & Lapping
                        </Link>
                        <Link href="/consumables/polishing" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Polishing
                        </Link>
                        <Link href="/consumables/etching" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Etching
                        </Link>
                        <Link href="/consumables/cleaning" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Cleaning
                        </Link>
                        <Link href="/consumables/hardness-testing" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Hardness Testing
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              {/* Services */}
              <div 
                className="relative"
                onMouseEnter={() => setActiveDropdown('services')}
                onMouseLeave={() => setActiveDropdown(null)}
              >
                <Link 
                  href="/quote" 
                  className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200 flex items-center gap-1"
                >
                  Services
                  <ChevronDown className="w-3.5 h-3.5" />
                </Link>
                {activeDropdown === 'services' && (
                  <>
                    {/* Invisible bridge to prevent gap */}
                    <div className="absolute top-full left-0 w-full h-2"></div>
                    <div className="absolute top-full left-0 mt-2 w-72 bg-white rounded-2xl shadow-xl border border-gray-200 py-3 z-50">
                      <Link href="/quote" className="block px-5 py-2.5 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mx-2">
                        Request Quote
                      </Link>
                      <div className="border-t border-gray-200 my-2 mx-2"></div>
                      <div className="px-2">
                        <Link href="/contact" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Contact Us
                        </Link>
                        <Link href="/builder" className="block px-5 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                          Build Your Lab
                        </Link>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              {/* Resources Mega Menu - Combining Guides, Resources, Tools, Databases */}
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
                    <div className="absolute top-full left-0 mt-2 w-[800px] bg-white rounded-2xl shadow-xl border border-gray-200 py-4 z-50">
                      <div className="grid grid-cols-4 gap-6 px-4">
                        {/* Guides Column */}
                        <div>
                          <Link href="/guides" className="block px-3 py-2 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mb-2">
                            Guides
                          </Link>
                          <div className="space-y-1">
                            <Link href="/guides?category=Basics" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Basics
                            </Link>
                            <Link href="/guides?category=Process" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Process
                            </Link>
                            <Link href="/guides?category=Material-Specific" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Material-Specific
                            </Link>
                            <Link href="/guides?category=Application-Specific" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Application-Specific
                            </Link>
                            <Link href="/guides?category=Troubleshooting" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Troubleshooting
                            </Link>
                          </div>
                        </div>
                        
                        {/* Resources Column */}
                        <div>
                          <Link href="/resources" className="block px-3 py-2 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mb-2">
                            Resources
                          </Link>
                          <div className="space-y-1">
                            <Link href="/glossary" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Glossary
                            </Link>
                            <Link href="/resources/checklist" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Sample Prep Checklist
                            </Link>
                            <Link href="/resources/grit-size-chart" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Grit Size Chart
                            </Link>
                            <Link href="/resources/common-etchants-guide" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Common Etchants
                            </Link>
                            <Link href="/resources?category=Reference Charts" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Reference Charts
                            </Link>
                          </div>
                        </div>
                        
                        {/* Tools Column */}
                        <div>
                          <Link href="/tools" className="block px-3 py-2 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mb-2">
                            Tools
                          </Link>
                          <div className="space-y-1">
                            <Link href="/tools/grit-size-converter" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Grit Size Converter
                            </Link>
                            <Link href="/tools/etchant-selector" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Etchant Selector
                            </Link>
                            <Link href="/tools/polishing-time-calculator" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Polishing Time Calculator
                            </Link>
                            <Link href="/tools?category=Calculators" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              All Calculators
                            </Link>
                            <Link href="/tools?category=Reference" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Reference Tools
                            </Link>
                          </div>
                        </div>
                        
                        {/* Databases Column */}
                        <div>
                          <Link href="/databases" className="block px-3 py-2 text-sm font-semibold text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200 mb-2">
                            Databases
                          </Link>
                          <div className="space-y-1">
                            <Link href="/materials" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Materials Database
                            </Link>
                            <Link href="/etchants" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Etchants Database
                            </Link>
                            <Link href="/standards" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Standards Database
                            </Link>
                            <Link href="/microstructures" className="block px-3 py-1.5 text-sm font-medium text-gray-700 hover:text-primary-600 hover:bg-primary-50/50 rounded-lg transition-all duration-200">
                              Microstructure Gallery
                            </Link>
                          </div>
                        </div>
                      </div>
                    </div>
                  </>
                )}
              </div>
              
              <span className="text-gray-300 mx-1">|</span>
              
              {/* Blog */}
              <Link 
                href="/blog" 
                className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-primary-600 transition-colors duration-200"
              >
                Blog
              </Link>
            </div>

          {/* Action Buttons */}
          <div className="hidden lg:flex items-center space-x-3">
            <button
              onClick={() => setSearchOpen(true)}
              className="p-2.5 text-gray-700 hover:text-primary-600 hover:bg-gray-50 rounded-full transition-all duration-200 relative group"
              aria-label="Search"
              title="Search (Ctrl+K or Cmd+K)"
            >
              <Search className="w-5 h-5" />
              <span className="absolute -bottom-1 -right-1 w-2 h-2 bg-primary-600 rounded-full opacity-0 group-hover:opacity-100 transition-opacity"></span>
            </button>
            {isAdmin ? (
              <>
                <Link 
                  href="/admin" 
                  className="px-5 py-2 bg-primary-600 text-white rounded-full font-semibold hover:bg-primary-700 transition-all duration-200 text-sm shadow-md hover:shadow-lg"
                >
                  Admin
                </Link>
                <button
                  onClick={handleLogout}
                  className="p-2.5 text-gray-700 hover:text-red-600 hover:bg-gray-50 rounded-full transition-all duration-200"
                  aria-label="Logout"
                  title="Logout"
                >
                  <LogOut className="w-5 h-5" />
                </button>
              </>
            ) : (
              <>
                <Link 
                  href="https://shop.metallographic.com" 
                  target="_blank"
                  rel="noopener noreferrer"
                  className="px-5 py-2 bg-white text-gray-900 rounded-full font-semibold hover:bg-gray-50 transition-all duration-200 border border-gray-200 text-sm shadow-sm hover:shadow-md"
                >
                  Stock Your Lab
                </Link>
                <Link 
                  href="/quote" 
                  className="px-5 py-2 bg-gray-900 text-white hover:text-white rounded-full font-semibold hover:bg-gray-800 transition-all duration-200 flex items-center space-x-2 text-sm shadow-md hover:shadow-lg"
                >
                  <span>Request Quote</span>
                  <ChevronRight className="w-4 h-4" />
                </Link>
              </>
            )}
          </div>
        </div>

        {/* Mobile Nav Bar - Pill Shaped */}
        <div className="lg:hidden flex items-center h-16 px-6 rounded-full bg-white border border-gray-200 shadow-lg shadow-gray-900/5 mt-3">
          {/* Mobile Logo */}
          <div className="flex items-center">
            <Link href="/" className="flex items-center">
              <div className="relative h-12 w-auto">
                <Image 
                  src="/images/pace/tri-structure.png" 
                  alt="Materialographic.com" 
                  width={96} 
                  height={96}
                  className="h-12 w-auto object-contain"
                  priority
                  fetchPriority="high"
                  quality={100}
                />
              </div>
            </Link>
          </div>

          {/* Mobile menu button */}
          <button
            className="ml-auto p-2 rounded-lg transition-all duration-200 text-gray-700 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2"
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            aria-label="Toggle menu"
            aria-expanded={mobileMenuOpen}
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
          <div className="lg:hidden py-4 px-6 rounded-2xl mt-3 shadow-xl transition-all duration-300 bg-white border border-gray-200 max-h-[calc(100vh-120px)] overflow-y-auto">
            {/* Equipment Section */}
            <div className="mb-2">
              <div className="flex items-center justify-between py-2.5 border-b border-gray-200">
                <Link 
                  href="/equipment" 
                  className="flex-1 text-gray-900 hover:text-primary-600 font-semibold"
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Equipment
                </Link>
                <button
                  onClick={(e) => {
                    e.preventDefault()
                    setMobileExpandedSection(mobileExpandedSection === 'equipment' ? null : 'equipment')
                  }}
                  className="p-1 hover:bg-gray-100 rounded transition-colors"
                  aria-label="Toggle Equipment submenu"
                >
                  <ChevronDown className={`w-4 h-4 transition-transform duration-200 ${mobileExpandedSection === 'equipment' ? 'rotate-180' : ''}`} />
                </button>
              </div>
              {mobileExpandedSection === 'equipment' && (
                <div className="pl-4 pt-2 pb-2 space-y-1 animate-in slide-in-from-top-2 duration-200">
                  <Link href="/equipment/sectioning" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Sectioning</Link>
                  <Link href="/equipment/mounting" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Mounting</Link>
                  <Link href="/equipment/grinding-polishing" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Grinding & Polishing</Link>
                  <Link href="/equipment/microscopy" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Microscopy</Link>
                  <Link href="/equipment/hardness-testing" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Hardness Testing</Link>
                  <Link href="/equipment/lab-furniture" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Lab Furniture</Link>
                </div>
              )}
            </div>

            {/* Consumables Section */}
            <div className="mb-2">
              <div className="flex items-center justify-between py-2.5 border-b border-gray-200">
                <Link 
                  href="/consumables" 
                  className="flex-1 text-gray-900 hover:text-primary-600 font-semibold"
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Consumables
                </Link>
                <button
                  onClick={(e) => {
                    e.preventDefault()
                    setMobileExpandedSection(mobileExpandedSection === 'consumables' ? null : 'consumables')
                  }}
                  className="p-1 hover:bg-gray-100 rounded transition-colors"
                  aria-label="Toggle Consumables submenu"
                >
                  <ChevronDown className={`w-4 h-4 transition-transform duration-200 ${mobileExpandedSection === 'consumables' ? 'rotate-180' : ''}`} />
                </button>
              </div>
              {mobileExpandedSection === 'consumables' && (
                <div className="pl-4 pt-2 pb-2 space-y-1 animate-in slide-in-from-top-2 duration-200">
                  <Link href="/consumables/sectioning" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Sectioning</Link>
                  <Link href="/consumables/mounting" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Mounting</Link>
                  <Link href="/consumables/grinding-lapping" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Grinding & Lapping</Link>
                  <Link href="/consumables/polishing" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Polishing</Link>
                  <Link href="/consumables/etching" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Etching</Link>
                  <Link href="/consumables/cleaning" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Cleaning</Link>
                  <Link href="/consumables/hardness-testing" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Hardness Testing</Link>
                </div>
              )}
            </div>

            {/* Services Section */}
            <div className="mb-2">
              <div className="flex items-center justify-between py-2.5 border-b border-gray-200">
                <Link 
                  href="/quote" 
                  className="flex-1 text-gray-900 hover:text-primary-600 font-semibold"
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Services
                </Link>
                <button
                  onClick={(e) => {
                    e.preventDefault()
                    setMobileExpandedSection(mobileExpandedSection === 'services' ? null : 'services')
                  }}
                  className="p-1 hover:bg-gray-100 rounded transition-colors"
                  aria-label="Toggle Services submenu"
                >
                  <ChevronDown className={`w-4 h-4 transition-transform duration-200 ${mobileExpandedSection === 'services' ? 'rotate-180' : ''}`} />
                </button>
              </div>
              {mobileExpandedSection === 'services' && (
                <div className="pl-4 pt-2 pb-2 space-y-1 animate-in slide-in-from-top-2 duration-200">
                  <Link href="/quote" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Request Quote</Link>
                  <Link href="/contact" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Contact Us</Link>
                  <Link href="/builder" className="block py-1.5 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Build Your Lab</Link>
                </div>
              )}
            </div>

            {/* Resources Mega Menu Section - Combining Guides, Resources, Tools, Databases */}
            <div className="mb-2">
              <div className="flex items-center justify-between py-2.5 border-b border-gray-200">
                <Link 
                  href="/resources" 
                  className="flex-1 text-gray-900 hover:text-primary-600 font-semibold"
                  onClick={() => setMobileMenuOpen(false)}
                >
                  Resources
                </Link>
                <button
                  onClick={(e) => {
                    e.preventDefault()
                    setMobileExpandedSection(mobileExpandedSection === 'resources' ? null : 'resources')
                  }}
                  className="p-1 hover:bg-gray-100 rounded transition-colors"
                  aria-label="Toggle Resources submenu"
                >
                  <ChevronDown className={`w-4 h-4 transition-transform duration-200 ${mobileExpandedSection === 'resources' ? 'rotate-180' : ''}`} />
                </button>
              </div>
              {mobileExpandedSection === 'resources' && (
                <div className="pl-4 pt-2 pb-2 space-y-3 animate-in slide-in-from-top-2 duration-200">
                  {/* Guides Subsection */}
                  <div>
                    <Link href="/guides" className="block py-2 text-sm font-semibold text-primary-600">Guides</Link>
                    <div className="pl-2 space-y-1">
                      <Link href="/guides?category=Basics" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Basics</Link>
                      <Link href="/guides?category=Process" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Process</Link>
                      <Link href="/guides?category=Material-Specific" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Material-Specific</Link>
                      <Link href="/guides?category=Application-Specific" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Application-Specific</Link>
                      <Link href="/guides?category=Troubleshooting" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Troubleshooting</Link>
                    </div>
                  </div>
                  
                  {/* Resources Subsection */}
                  <div>
                    <Link href="/resources" className="block py-2 text-sm font-semibold text-primary-600">Resources</Link>
                    <div className="pl-2 space-y-1">
                      <Link href="/glossary" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Glossary</Link>
                      <Link href="/resources/checklist" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Sample Prep Checklist</Link>
                      <Link href="/resources/grit-size-chart" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Grit Size Chart</Link>
                      <Link href="/resources/common-etchants-guide" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Common Etchants</Link>
                    </div>
                  </div>
                  
                  {/* Tools Subsection */}
                  <div>
                    <Link href="/tools" className="block py-2 text-sm font-semibold text-primary-600">Tools</Link>
                    <div className="pl-2 space-y-1">
                      <Link href="/tools/grit-size-converter" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Grit Size Converter</Link>
                      <Link href="/tools/etchant-selector" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Etchant Selector</Link>
                      <Link href="/tools/polishing-time-calculator" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Polishing Time Calculator</Link>
                    </div>
                  </div>
                  
                  {/* Databases Subsection */}
                  <div>
                    <Link href="/databases" className="block py-2 text-sm font-semibold text-primary-600">Databases</Link>
                    <div className="pl-2 space-y-1">
                      <Link href="/materials" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Materials Database</Link>
                      <Link href="/etchants" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Etchants Database</Link>
                      <Link href="/standards" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Standards Database</Link>
                      <Link href="/microstructures" className="block py-1 text-sm text-gray-600 hover:text-primary-600" onClick={() => setMobileMenuOpen(false)}>Microstructure Gallery</Link>
                    </div>
                  </div>
                </div>
              )}
            </div>

            {/* Blog Section */}
            <div className="mb-2">
              <Link 
                href="/blog" 
                className="block py-2.5 text-gray-900 hover:text-primary-600 font-semibold border-b border-gray-200"
                onClick={() => setMobileMenuOpen(false)}
              >
                Blog
              </Link>
            </div>

            <div className="flex flex-col space-y-3 mt-4 pt-4 border-t border-gray-200">
              <button
                onClick={() => {
                  setMobileMenuOpen(false)
                  setSearchOpen(true)
                }}
                className="px-5 py-2 bg-gray-100 text-gray-900 rounded-full font-semibold hover:bg-gray-200 transition-all duration-200 border border-gray-200 text-center text-sm shadow-sm hover:shadow-md flex items-center justify-center gap-2"
              >
                <Search className="w-4 h-4" />
                Search
              </button>
              {isAdmin ? (
                <>
                  <Link 
                    href="/admin" 
                    className="px-5 py-2 bg-primary-600 text-white rounded-full font-semibold hover:bg-primary-700 transition-all duration-200 text-center text-sm shadow-md hover:shadow-lg"
                    onClick={() => setMobileMenuOpen(false)}
                  >
                    Admin
                  </Link>
                  <button
                    onClick={() => {
                      setMobileMenuOpen(false)
                      handleLogout()
                    }}
                    className="px-5 py-2 bg-white text-gray-900 rounded-full font-semibold hover:bg-gray-50 transition-all duration-200 border border-gray-200 text-center text-sm shadow-sm hover:shadow-md flex items-center justify-center gap-2"
                  >
                    <LogOut className="w-4 h-4" />
                    Logout
                  </button>
                </>
              ) : (
                <>
                  <Link 
                    href="https://shop.metallographic.com" 
                    target="_blank"
                    rel="noopener noreferrer"
                    className="px-5 py-2 bg-white text-gray-900 rounded-full font-semibold hover:bg-gray-50 transition-all duration-200 border border-gray-200 text-center text-sm shadow-sm hover:shadow-md"
                    onClick={() => setMobileMenuOpen(false)}
                  >
                    Stock Your Lab
                  </Link>
                  <Link 
                    href="/builder" 
                    className="px-5 py-2 bg-gray-900 text-white hover:text-white rounded-full font-semibold hover:bg-gray-800 transition-all duration-200 flex items-center justify-center space-x-2 text-sm shadow-md hover:shadow-lg"
                    onClick={() => setMobileMenuOpen(false)}
                  >
                    <span>Build Your Lab</span>
                    <ChevronRight className="w-4 h-4" />
                  </Link>
                </>
              )}
            </div>
          </div>
        )}
      </nav>

      {/* Global Search */}
      <GlobalSearch isOpen={searchOpen} onClose={() => setSearchOpen(false)} />
    </header>
  )
}

