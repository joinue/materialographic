'use client'

import { useEffect, useRef, useState, ReactNode } from 'react'

interface AnimateOnScrollProps {
  children: ReactNode
  animation?: 'fadeIn' | 'fadeInUp' | 'fadeInDown' | 'fadeInLeft' | 'fadeInRight' | 'scaleIn'
  delay?: number
  duration?: number
  threshold?: number
  className?: string
}

export default function AnimateOnScroll({
  children,
  animation = 'fadeInUp',
  delay = 0,
  duration = 600,
  threshold = 0.1,
  className = '',
}: AnimateOnScrollProps) {
  // Start with false, but will check on mount if already visible
  const [isVisible, setIsVisible] = useState(false)
  const elementRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    // Fallback: if IntersectionObserver is not supported, show content immediately
    if (typeof window === 'undefined' || !('IntersectionObserver' in window)) {
      setIsVisible(true)
      return
    }

    const currentElement = elementRef.current
    if (!currentElement) return

    // Check if element is already visible on mount (for above-the-fold content)
    const rect = currentElement.getBoundingClientRect()
    const isInViewport = rect.top < window.innerHeight && rect.bottom > 0
    
    if (isInViewport) {
      setIsVisible(true)
      return
    }

    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setIsVisible(true)
          // Disconnect after first animation to improve performance
          observer.disconnect()
        }
      },
      {
        threshold,
        rootMargin: '0px 0px -50px 0px',
      }
    )

    observer.observe(currentElement)

    return () => {
      observer.disconnect()
    }
  }, [threshold])

  const animationClassMap = {
    fadeIn: 'animate-fadeIn',
    fadeInUp: 'animate-fadeInUp',
    fadeInDown: 'animate-fadeInDown',
    fadeInLeft: 'animate-fadeInLeft',
    fadeInRight: 'animate-fadeInRight',
    scaleIn: 'animate-scaleIn',
  }

  return (
    <div
      ref={elementRef}
      className={`animate-on-scroll ${isVisible ? animationClassMap[animation] : 'opacity-0'} ${className}`}
      style={{
        animationDelay: `${delay}ms`,
        animationDuration: `${duration}ms`,
      }}
    >
      {children}
    </div>
  )
}

