'use client'

import { useState } from 'react'

export default function GritSizeConverter() {
  const [inputValue, setInputValue] = useState('')
  const [inputType, setInputType] = useState('fepa')
  const [results, setResults] = useState<Record<string, string | null>>({})

  const conversions: Record<string, Record<string, number>> = {
    '120': { fepa: 120, ansi: 120, jis: 120, micron: 125 },
    '180': { fepa: 180, ansi: 180, jis: 180, micron: 75 },
    '240': { fepa: 240, ansi: 240, jis: 240, micron: 58 },
    '320': { fepa: 320, ansi: 320, jis: 320, micron: 46 },
    '400': { fepa: 400, ansi: 400, jis: 400, micron: 35 },
    '500': { fepa: 500, ansi: 500, jis: 500, micron: 30 },
    '600': { fepa: 600, ansi: 600, jis: 600, micron: 25 },
    '800': { fepa: 800, ansi: 800, jis: 800, micron: 21 },
    '1000': { fepa: 1000, ansi: 1000, jis: 1000, micron: 18 },
    '1200': { fepa: 1200, ansi: 1200, jis: 1200, micron: 15 },
  }

  const handleConvert = () => {
    const value = inputValue.trim()
    if (!value) return

    // Find matching grit
    const match = Object.keys(conversions).find(key => 
      conversions[key][inputType] === parseInt(value)
    )

    if (match) {
      const conversion = conversions[match]
      setResults({
        fepa: conversion.fepa.toString(),
        ansi: conversion.ansi.toString(),
        jis: conversion.jis.toString(),
        micron: `${conversion.micron} μm`,
      })
    } else {
      setResults({
        fepa: 'Not found',
        ansi: 'Not found',
        jis: 'Not found',
        micron: 'Not found',
      })
    }
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-3xl mx-auto">
          <h1 className="text-4xl font-bold mb-4">Grit Size Converter</h1>
          <p className="text-xl text-gray-600 mb-8">
            Convert between different grit size standards: FEPA, ANSI, JIS, and micron measurements.
          </p>

          <div className="card mb-8">
            <div className="mb-6">
              <label htmlFor="inputType" className="block text-sm font-semibold text-gray-700 mb-2">
                Input Type
              </label>
              <select
                id="inputType"
                value={inputType}
                onChange={(e) => setInputType(e.target.value)}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500"
              >
                <option value="fepa">FEPA (P-Grade)</option>
                <option value="ansi">ANSI</option>
                <option value="jis">JIS</option>
                <option value="micron">Micron (μm)</option>
              </select>
            </div>

            <div className="mb-6">
              <label htmlFor="inputValue" className="block text-sm font-semibold text-gray-700 mb-2">
                Value
              </label>
              <input
                id="inputValue"
                type="text"
                value={inputValue}
                onChange={(e) => setInputValue(e.target.value)}
                placeholder={inputType === 'micron' ? 'e.g., 25' : 'e.g., 400'}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500"
              />
            </div>

            <button
              onClick={handleConvert}
              className="btn-primary w-full"
            >
              Convert
            </button>
          </div>

          {Object.keys(results).length > 0 && (
            <div className="card">
              <h2 className="text-2xl font-semibold mb-4">Conversion Results</h2>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <div className="text-sm text-gray-600 mb-1">FEPA</div>
                  <div className="text-lg font-semibold">{results.fepa}</div>
                </div>
                <div>
                  <div className="text-sm text-gray-600 mb-1">ANSI</div>
                  <div className="text-lg font-semibold">{results.ansi}</div>
                </div>
                <div>
                  <div className="text-sm text-gray-600 mb-1">JIS</div>
                  <div className="text-lg font-semibold">{results.jis}</div>
                </div>
                <div>
                  <div className="text-sm text-gray-600 mb-1">Micron</div>
                  <div className="text-lg font-semibold">{results.micron}</div>
                </div>
              </div>
            </div>
          )}

          <div className="mt-8 bg-gray-50 rounded-lg p-6">
            <h3 className="text-lg font-semibold mb-3">About Grit Sizes</h3>
            <p className="text-gray-700 text-sm mb-4">
              Different standards use different numbering systems for abrasive grit sizes. 
              This converter helps you find equivalent sizes across standards.
            </p>
            <ul className="text-sm text-gray-700 space-y-2">
              <li><strong>FEPA:</strong> European standard (P-Grade system)</li>
              <li><strong>ANSI:</strong> American National Standards Institute</li>
              <li><strong>JIS:</strong> Japanese Industrial Standard</li>
              <li><strong>Micron:</strong> Particle size in micrometers</li>
            </ul>
          </div>

          <div className="mt-8 bg-primary-50 border-l-4 border-primary-600 p-6 rounded">
            <h3 className="text-lg font-semibold mb-3">Need More Help?</h3>
            <p className="text-gray-700 text-sm mb-4">
              Check out our comprehensive guides on grinding techniques and sample preparation.
            </p>
            <a href="/guides/grinding-techniques" className="text-primary-600 font-semibold hover:underline">
              View Grinding Techniques Guide →
            </a>
          </div>
        </div>
      </div>
    </div>
  )
}

