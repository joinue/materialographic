'use client'

import Link from 'next/link'
import Image from 'next/image'
import { useState } from 'react'
import { ChevronRight, Menu, X } from 'lucide-react'

export default function Header() {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false)

  return (
    <header className="fixed top-0 left-0 right-0 z-50 bg-transparent">
      <nav className="container-custom py-4">
        <div className="flex items-center justify-between h-16 px-6 rounded-full bg-white/70 backdrop-blur-md border border-white/20 shadow-xl shadow-gray-900/10">
          {/* Logo */}
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
          
          {/* Desktop Navigation */}
          <div className="hidden lg:flex items-center space-x-1">
            <Link 
              href="/guides" 
              className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-gray-700 transition-colors duration-200"
            >
              Guides
            </Link>
            <span className="text-gray-300">|</span>
            <Link 
              href="/resources" 
              className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-gray-700 transition-colors duration-200"
            >
              Resources
            </Link>
            <span className="text-gray-300">|</span>
            <Link 
              href="/tools" 
              className="px-4 py-2 text-sm font-medium text-gray-700 hover:text-gray-700 transition-colors duration-200"
            >
              Tools
            </Link>
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
            <Link 
              href="/guides" 
              className="block py-3 text-gray-700 hover:text-gray-700 font-medium border-b border-gray-100 hover:pl-2 transition-all duration-200"
              onClick={() => setMobileMenuOpen(false)}
            >
              Guides
            </Link>
            <Link 
              href="/resources" 
              className="block py-3 text-gray-700 hover:text-gray-700 font-medium border-b border-gray-100 hover:pl-2 transition-all duration-200"
              onClick={() => setMobileMenuOpen(false)}
            >
              Resources
            </Link>
            <Link 
              href="/tools" 
              className="block py-3 text-gray-700 hover:text-gray-700 font-medium border-b border-gray-100 hover:pl-2 transition-all duration-200"
              onClick={() => setMobileMenuOpen(false)}
            >
              Tools
            </Link>
            <div className="flex flex-col space-y-3 mt-4">
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

