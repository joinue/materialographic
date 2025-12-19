'use client'

import { useEffect, useRef, useState } from 'react'

interface OptimizedVideoProps {
  src: string
  poster?: string
  ariaLabel: string
  className?: string
  autoPlay?: boolean
  loop?: boolean
  muted?: boolean
  playsInline?: boolean
}

export default function OptimizedVideo({
  src,
  poster,
  ariaLabel,
  className = 'w-full h-full object-cover',
  autoPlay = true,
  loop = true,
  muted = true,
  playsInline = true,
}: OptimizedVideoProps) {
  const videoRef = useRef<HTMLVideoElement>(null)
  const [isIntersecting, setIsIntersecting] = useState(false)
  const [hasLoaded, setHasLoaded] = useState(false)

  useEffect(() => {
    const video = videoRef.current
    if (!video) return

    // Intersection Observer to pause/play videos when in/out of viewport
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          setIsIntersecting(entry.isIntersecting)
          
          if (entry.isIntersecting) {
            // Video is in viewport - play if autoplay is enabled
            if (autoPlay && !hasLoaded) {
              video.load() // Load video when it comes into view
              setHasLoaded(true)
            }
            if (autoPlay && video.paused) {
              video.play().catch(() => {
                // Autoplay may fail, ignore silently
              })
            }
          } else {
            // Video is out of viewport - pause to save resources
            if (!video.paused) {
              video.pause()
            }
          }
        })
      },
      {
        threshold: 0.5, // Trigger when 50% of video is visible
        rootMargin: '50px', // Start loading slightly before entering viewport
      }
    )

    observer.observe(video)

    return () => {
      observer.disconnect()
    }
  }, [autoPlay, hasLoaded])

  return (
    <video
      ref={videoRef}
      src={hasLoaded ? src : undefined} // Lazy load source when in viewport
      poster={poster}
      autoPlay={autoPlay && isIntersecting}
      loop={loop}
      muted={muted}
      playsInline={playsInline}
      preload="metadata" // Only load metadata initially
      className={className}
      aria-label={ariaLabel}
    />
  )
}

