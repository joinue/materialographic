'use client'

import { useState, useRef, useEffect } from 'react'
import Link from 'next/link'
import { Info, X } from 'lucide-react'
import { glossaryTerms, type GlossaryTerm } from '@/data/glossary'

// Global tracking of terms that have been shown (per page load)
const shownTerms = new Set<string>()

interface GlossaryTermTooltipProps {
  term: string
  children: React.ReactNode
  showOnFirstOccurrence?: boolean
  className?: string
}

export default function GlossaryTermTooltip({ 
  term, 
  children, 
  showOnFirstOccurrence = true,
  className = '' 
}: GlossaryTermTooltipProps) {
  const [isVisible, setIsVisible] = useState(false)
  const [position, setPosition] = useState<'top' | 'bottom'>('top')
  const [tooltipStyle, setTooltipStyle] = useState<React.CSSProperties>({})
  const [arrowStyle, setArrowStyle] = useState<React.CSSProperties>({})
  const tooltipRef = useRef<HTMLDivElement>(null)
  const triggerRef = useRef<HTMLSpanElement>(null)
  const termKey = term.toLowerCase()

  // Find the glossary term
  const glossaryTerm = glossaryTerms.find(
    t => t.term.toLowerCase() === term.toLowerCase()
  )

  // Don't render if term not found in glossary
  if (!glossaryTerm) {
    return <>{children}</>
  }

  useEffect(() => {
    if (isVisible && tooltipRef.current && triggerRef.current) {
      const tooltip = tooltipRef.current
      const trigger = triggerRef.current
      const rect = trigger.getBoundingClientRect()
      
      // Use requestAnimationFrame to ensure tooltip is rendered
      requestAnimationFrame(() => {
        if (tooltipRef.current && triggerRef.current) {
          const tooltipRect = tooltipRef.current.getBoundingClientRect()
          const viewportWidth = window.innerWidth
          const viewportHeight = window.innerHeight
          const padding = 16 // 1rem padding from viewport edges
          
          // Check if tooltip would go off screen vertically
          const spaceBelow = viewportHeight - rect.bottom
          const spaceAbove = rect.top
          
          const newPosition = spaceBelow < tooltipRect.height + 10 && spaceAbove > spaceBelow
            ? 'bottom'
            : 'top'
          
          setPosition(newPosition)

          // Center tooltip horizontally on the viewport
          const tooltipWidth = tooltipRect.width
          const viewportCenter = viewportWidth / 2
          const tooltipHalfWidth = tooltipWidth / 2
          const triggerCenterX = rect.left + rect.width / 2
          
          // Calculate where tooltip should be to be centered on viewport
          const targetLeft = viewportCenter - tooltipHalfWidth
          const targetRight = viewportCenter + tooltipHalfWidth
          
          // Constrain to viewport with padding
          const minLeft = padding
          const maxRight = viewportWidth - padding
          
          let newTooltipStyle: React.CSSProperties = {}
          let newArrowStyle: React.CSSProperties = {}
          
          // Position tooltip centered on viewport, but constrain if it would overflow
          let actualTooltipLeft: number
          if (targetLeft < minLeft) {
            // Would overflow left - constrain to left edge
            actualTooltipLeft = padding
            newTooltipStyle = {
              left: `${padding - rect.left}px`,
              transform: 'none'
            }
          } else if (targetRight > maxRight) {
            // Would overflow right - constrain to right edge
            actualTooltipLeft = viewportWidth - padding - tooltipWidth
            newTooltipStyle = {
              left: `${actualTooltipLeft - rect.left}px`,
              transform: 'none'
            }
          } else {
            // Center on viewport
            actualTooltipLeft = targetLeft
            newTooltipStyle = {
              left: `${targetLeft - rect.left}px`,
              transform: 'none'
            }
          }
          
          // Position arrow to point to trigger center
          const arrowOffset = triggerCenterX - actualTooltipLeft
          newArrowStyle = {
            left: `${Math.max(16, Math.min(arrowOffset, tooltipWidth - 16))}px`,
            transform: 'translateX(-50%)'
          }
          
          setTooltipStyle(newTooltipStyle)
          setArrowStyle(newArrowStyle)

          // Wait for position to update, then scroll to ensure tooltip is visible
          setTimeout(() => {
            if (tooltipRef.current) {
              const tooltipElement = tooltipRef.current
              const tooltipRect = tooltipElement.getBoundingClientRect()
              const headerHeight = 80 // Approximate header height
              const scrollY = window.scrollY

              // Calculate if tooltip is cut off
              const tooltipTop = tooltipRect.top + scrollY
              const tooltipBottom = tooltipRect.bottom + scrollY
              const viewportTop = scrollY + headerHeight
              const viewportBottom = scrollY + viewportHeight

              // If tooltip is above viewport (below header), scroll up
              if (tooltipRect.top < headerHeight) {
                const scrollAmount = tooltipTop - viewportTop - 10
                window.scrollTo({
                  top: Math.max(0, scrollY + scrollAmount),
                  behavior: 'smooth'
                })
              }
              // If tooltip is below viewport, scroll down
              else if (tooltipRect.bottom > viewportHeight) {
                const scrollAmount = tooltipBottom - viewportBottom + 10
                window.scrollTo({
                  top: scrollY + scrollAmount,
                  behavior: 'smooth'
                })
              }
            }
          }, 100)
        }
      })
    }
  }, [isVisible])

  // Handle click to toggle tooltip
  const handleClick = (e: React.MouseEvent) => {
    e.preventDefault()
    e.stopPropagation()
    
    if (isVisible) {
      setIsVisible(false)
    } else {
      if (!showOnFirstOccurrence || !shownTerms.has(termKey)) {
        setIsVisible(true)
        if (showOnFirstOccurrence) {
          shownTerms.add(termKey)
        }
      } else {
        setIsVisible(true)
      }
    }
  }

  // Close tooltip when clicking outside
  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (
        isVisible &&
        tooltipRef.current &&
        triggerRef.current &&
        !tooltipRef.current.contains(event.target as Node) &&
        !triggerRef.current.contains(event.target as Node)
      ) {
        setIsVisible(false)
      }
    }

    if (isVisible) {
      document.addEventListener('mousedown', handleClickOutside)
      return () => {
        document.removeEventListener('mousedown', handleClickOutside)
      }
    }
  }, [isVisible])

  return (
    <span 
      ref={triggerRef}
      className={`relative inline-block ${className}`}
    >
      <span 
        onClick={handleClick}
        className="border-b border-dotted border-primary-400 text-primary-700 cursor-pointer font-medium hover:border-primary-600 hover:text-primary-800 transition-colors active:text-primary-800"
      >
        {children}
      </span>
      
      {isVisible && (
        <div
          ref={tooltipRef}
          className={`absolute z-[9999] w-80 max-w-[calc(100vw-2rem)] sm:max-w-[90vw] ${
            position === 'top' ? 'bottom-full mb-2' : 'top-full mt-2'
          }`}
          style={tooltipStyle}
        >
          <div className="bg-gray-900 text-white rounded-lg shadow-xl border border-gray-700 p-4 animate-fadeIn">
            <div className="flex items-start justify-between gap-2 mb-2">
              <div className="flex items-start gap-2 flex-1">
                <Info className="w-4 h-4 text-primary-400 flex-shrink-0 mt-0.5" />
                <h4 className="font-semibold text-base text-white">{glossaryTerm.term}</h4>
              </div>
              <button
                onClick={(e) => {
                  e.preventDefault()
                  e.stopPropagation()
                  setIsVisible(false)
                }}
                className="text-gray-400 hover:text-white transition-colors flex-shrink-0"
                aria-label="Close tooltip"
              >
                <X className="w-4 h-4" />
              </button>
            </div>
            <p className="text-sm text-gray-200 leading-relaxed mb-3">
              {glossaryTerm.definition}
            </p>
            {glossaryTerm.example && (
              <div className="bg-gray-800 rounded p-2 mb-3">
                <p className="text-xs text-gray-300 italic">
                  <strong className="text-gray-400">Example:</strong> {glossaryTerm.example}
                </p>
              </div>
            )}
            <div className="flex items-center justify-between pt-2 border-t border-gray-700">
              <span className="text-xs text-gray-400 uppercase tracking-wide">
                {glossaryTerm.category}
              </span>
              <Link
                href={`/glossary#${glossaryTerm.term.toLowerCase().replace(/[^a-z0-9]+/g, '-')}`}
                className="text-xs text-primary-400 hover:text-primary-300 font-medium transition-colors pointer-events-auto"
                onClick={(e) => {
                  e.stopPropagation()
                  setIsVisible(false)
                }}
              >
                View in Glossary →
              </Link>
            </div>
            
            {/* Arrow */}
            <div
              className={`absolute w-0 h-0 ${
                position === 'top'
                  ? 'top-full border-l-4 border-r-4 border-t-4 border-transparent border-t-gray-900'
                  : 'bottom-full border-l-4 border-r-4 border-b-4 border-transparent border-b-gray-900'
              }`}
              style={arrowStyle}
            />
          </div>
        </div>
      )}
    </span>
  )
}

