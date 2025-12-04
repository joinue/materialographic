'use client'

import { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { ChevronRight, CheckCircle2, Package, Wrench, FlaskConical } from 'lucide-react'

interface Recommendations {
  sectioning: {
    equipment: Array<{
      name: string
      description: string
      image?: string
      link: string
      category: string
    }>
    consumables: Array<{
      name: string
      description: string
      link: string
    }>
  }
  mounting: {
    equipment: Array<{
      name: string
      description: string
      image?: string
      link: string
      category: string
    }>
    consumables: Array<{
      name: string
      description: string
      link: string
    }>
  }
  grinding: {
    equipment: Array<{
      name: string
      description: string
      image?: string
      link: string
      category: string
    }>
    consumables: Array<{
      name: string
      description: string
      link: string
    }>
  }
  polishing: {
    equipment: Array<{
      name: string
      description: string
      image?: string
      link: string
      category: string
    }>
    consumables: Array<{
      name: string
      description: string
      link: string
    }>
  }
  microscopy?: {
    equipment: Array<{
      name: string
      description: string
      image?: string
      link: string
      category: string
    }>
  }
}

export default function BuildYourLab() {
  const [step, setStep] = useState(1)
  const [formData, setFormData] = useState({
    materialType: '',
    materialHardness: '',
    sampleSize: '',
    sampleShape: '',
    throughput: '',
    automation: '',
    budget: '',
    applications: [] as string[],
  })
  const [recommendations, setRecommendations] = useState<Recommendations | null>(null)

  const materialTypes = [
    'Steel (Carbon/Low Alloy)',
    'Stainless Steel',
    'Aluminum',
    'Titanium',
    'Copper/Brass',
    'Nickel Alloys',
    'Hard Metals (Carbides)',
    'Ceramics',
    'Other',
  ]

  const hardnessLevels = [
    'Soft (< 30 HRC)',
    'Medium (30-50 HRC)',
    'Hard (50-65 HRC)',
    'Very Hard (> 65 HRC)',
  ]

  const sampleSizes = [
    'Small (< 25mm)',
    'Medium (25-50mm)',
    'Large (50-100mm)',
    'Very Large (> 100mm)',
  ]

  const throughputOptions = [
    'Low (1-10 samples/day)',
    'Medium (10-50 samples/day)',
    'High (50-200 samples/day)',
    'Very High (> 200 samples/day)',
  ]

  const automationOptions = [
    'Fully Manual',
    'Semi-Automated',
    'Fully Automated',
  ]

  const budgetOptions = [
    'Budget-Conscious (< $50k)',
    'Standard ($50k - $150k)',
    'Premium ($150k - $300k)',
    'Enterprise (> $300k)',
  ]

  const applicationOptions = [
    'Quality Control',
    'Research & Development',
    'Failure Analysis',
    'Material Characterization',
    'Production Testing',
  ]

  const generateRecommendations = () => {
    const recs: Recommendations = {
      sectioning: { equipment: [], consumables: [] },
      mounting: { equipment: [], consumables: [] },
      grinding: { equipment: [], consumables: [] },
      polishing: { equipment: [], consumables: [] },
    }

    // Sectioning Recommendations
    const isHard = formData.materialHardness.includes('Hard') || formData.materialHardness.includes('Very Hard')
    const isLarge = formData.sampleSize.includes('Large') || formData.sampleSize.includes('Very Large')
    const isHighThroughput = formData.throughput.includes('High') || formData.throughput.includes('Very High')
    const isAutomated = formData.automation.includes('Automated')

    if (isHard || formData.materialType.includes('Hard Metals') || formData.materialType.includes('Ceramics')) {
      // Precision wafering for hard materials
      recs.sectioning.equipment.push({
        name: 'PICO Series Precision Cutters',
        description: 'Diamond blade precision cutters ideal for hard materials, ceramics, and delicate samples requiring minimal damage.',
        link: 'https://metallographic.com/metallographic-equipment/precision-wafering.html',
        category: 'Precision Wafering',
      })
      recs.sectioning.consumables.push({
        name: 'Diamond Blades',
        description: 'Premium diamond blades for cutting hard materials with minimal deformation.',
        link: 'https://shop.metallographic.com/collections/diamond-blades',
      })
    } else {
      // Abrasive sectioning for most materials
      if (isHighThroughput || isAutomated) {
        recs.sectioning.equipment.push({
          name: 'MEGA-T Series Automated Abrasive Cutters',
          description: 'Automated abrasive cutters with programmable controls for high-throughput sectioning.',
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning.html',
          category: 'Automated Abrasive Sectioning',
        })
      } else {
        recs.sectioning.equipment.push({
          name: 'MEGA-T Series Manual Abrasive Cutters',
          description: 'Manual abrasive cutters suitable for medium-volume sectioning operations.',
          link: 'https://metallographic.com/metallographic-equipment/abrasive-sectioning.html',
          category: 'Manual Abrasive Sectioning',
        })
      }
      recs.sectioning.consumables.push({
        name: 'Abrasive Cut-Off Wheels',
        description: 'High-quality abrasive wheels for efficient sectioning of most metallic materials.',
        link: 'https://shop.metallographic.com/collections/abrasive-blades',
      })
    }

    // Mounting Recommendations
    if (isHighThroughput || isAutomated) {
      recs.mounting.equipment.push({
        name: 'TP-7500S Hydraulic Mounting Press',
        description: 'Automated hydraulic mounting press with temperature and pressure control for high-volume mounting.',
        link: 'https://metallographic.com/metallographic-equipment/compression-mounting.html',
        category: 'Compression Mounting',
      })
      recs.mounting.consumables.push({
        name: 'Thermosetting Mounting Resins',
        description: 'High-quality thermosetting resins for compression mounting.',
        link: 'https://shop.metallographic.com/collections/mounting-resins',
      })
    } else {
      recs.mounting.equipment.push({
        name: 'TP-7100S Pneumatic Mounting Press',
        description: 'Pneumatic mounting press suitable for medium-volume operations.',
        link: 'https://metallographic.com/metallographic-equipment/compression-mounting.html',
        category: 'Compression Mounting',
      })
      recs.mounting.consumables.push({
        name: 'Mounting Resins',
        description: 'Thermosetting and cold mounting resins for various applications.',
        link: 'https://shop.metallographic.com/collections/mounting-resins',
      })
    }

    // Add cold mounting option for delicate samples
    if (formData.materialType.includes('Aluminum') || formData.materialType.includes('Copper')) {
      recs.mounting.equipment.push({
        name: 'Cold Mounting Systems',
        description: 'UV and vacuum mounting systems for temperature-sensitive materials.',
        link: 'https://metallographic.com/metallographic-equipment/castable-mounting.html',
        category: 'Cold Mounting',
      })
      recs.mounting.consumables.push({
        name: 'Cold Mounting Resins',
        description: 'UV-curable and epoxy mounting resins for cold mounting applications.',
        link: 'https://shop.metallographic.com/collections/mounting-resins',
      })
    }

    // Grinding Recommendations
    if (isHighThroughput || isAutomated) {
      recs.grinding.equipment.push({
        name: 'FEMTO Series Semi-Auto Grinder Polishers',
        description: 'Semi-automated grinding and polishing systems with programmable parameters.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing.html',
        category: 'Semi-Automated Grinding',
      })
    } else {
      recs.grinding.equipment.push({
        name: 'NANO Series Manual Grinder Polishers',
        description: 'Manual grinder polishers for precise control and medium-volume operations.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing.html',
        category: 'Manual Grinding',
      })
    }

    // Add hand grinder for initial rough grinding
    recs.grinding.equipment.push({
      name: 'PENTA Series Hand & Belt Grinders',
      description: 'Hand and belt grinders for initial rough grinding and material removal.',
      link: 'https://metallographic.com/metallographic-equipment/grinding-polishing.html',
      category: 'Hand Grinding',
    })

    // Grinding consumables based on material
    if (formData.materialType.includes('Stainless Steel')) {
      recs.grinding.consumables.push({
        name: 'Silicon Carbide Abrasive Papers',
        description: 'SiC papers for grinding stainless steel and other hard materials.',
        link: 'https://shop.metallographic.com/collections/abrasive-papers',
      })
    } else {
      recs.grinding.consumables.push({
        name: 'Abrasive Papers (SiC/Al2O3)',
        description: 'High-quality abrasive papers for grinding various materials.',
        link: 'https://shop.metallographic.com/collections/abrasive-papers',
      })
    }

    // Polishing Recommendations
    if (isHighThroughput || isAutomated) {
      recs.polishing.equipment.push({
        name: 'ATTO-1000S Controlled Removal Polisher',
        description: 'Automated polishing system with controlled material removal for consistent results.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing.html',
        category: 'Automated Polishing',
      })
    } else {
      recs.polishing.equipment.push({
        name: 'NANO Series Grinder Polishers',
        description: 'Versatile grinder polishers suitable for both grinding and polishing operations.',
        link: 'https://metallographic.com/metallographic-equipment/grinding-polishing.html',
        category: 'Manual Polishing',
      })
    }

    // Polishing consumables
    recs.polishing.consumables.push({
      name: 'Diamond Suspensions',
      description: 'Premium diamond polishing suspensions for final polishing steps.',
      link: 'https://shop.metallographic.com/collections/diamond-suspensions',
    })
    recs.polishing.consumables.push({
      name: 'Polishing Cloths',
      description: 'High-quality polishing cloths for various polishing applications.',
      link: 'https://shop.metallographic.com/collections/polishing-cloths',
    })

    // Add colloidal silica for final polishing
    if (formData.materialType.includes('Stainless Steel') || formData.materialType.includes('Aluminum')) {
      recs.polishing.consumables.push({
        name: 'Colloidal Silica',
        description: 'Final polishing suspension for achieving mirror-like finishes on stainless steel and aluminum.',
        link: 'https://shop.metallographic.com/collections/polishing-suspensions',
      })
    }

    // Microscopy (optional, based on budget)
    if (formData.budget.includes('Premium') || formData.budget.includes('Enterprise')) {
      recs.microscopy = {
        equipment: [
          {
            name: 'IM Series Metallurgical Microscopes',
            description: 'High-quality metallurgical microscopes for microstructure analysis.',
            link: 'https://metallographic.com/metallographic-equipment/microscopy.html',
            category: 'Metallurgical Microscopy',
          },
        ],
      }
    }

    setRecommendations(recs)
    setStep(3)
  }

  const handleInputChange = (field: string, value: string | string[]) => {
    setFormData((prev) => ({
      ...prev,
      [field]: value,
    }))
  }

  const toggleApplication = (app: string) => {
    setFormData((prev) => ({
      ...prev,
      applications: prev.applications.includes(app)
        ? prev.applications.filter((a) => a !== app)
        : [...prev.applications, app],
    }))
  }

  const canProceedToStep2 = () => {
    return formData.materialType && formData.materialHardness && formData.sampleSize
  }

  const canGenerateRecommendations = () => {
    return formData.throughput && formData.automation && formData.budget
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-4xl mx-auto">
          {/* Header */}
          <header className="mb-12 text-center">
            <span className="text-sm font-semibold text-primary-600 uppercase tracking-wide mb-2 block">
              Lab Configuration Tool
            </span>
            <h1 className="text-4xl font-bold mb-4">Build Your Lab</h1>
            <p className="text-xl text-gray-600 max-w-2xl mx-auto">
              Get personalized equipment and consumable recommendations based on your sample specifications, 
              materials, and workflow requirements.
            </p>
          </header>

          {/* Progress Steps */}
          <div className="mb-8">
            <div className="flex items-center justify-center space-x-4">
              <div className={`flex items-center ${step >= 1 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 1 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 1 ? <CheckCircle2 className="w-6 h-6" /> : <span className="font-semibold">1</span>}
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Sample Specs</span>
              </div>
              <div className={`w-16 h-0.5 ${step >= 2 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex items-center ${step >= 2 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 2 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  {step > 2 ? <CheckCircle2 className="w-6 h-6" /> : <span className="font-semibold">2</span>}
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Workflow</span>
              </div>
              <div className={`w-16 h-0.5 ${step >= 3 ? 'bg-primary-600' : 'bg-gray-300'}`} />
              <div className={`flex items-center ${step >= 3 ? 'text-primary-600' : 'text-gray-400'}`}>
                <div className={`w-10 h-10 rounded-full flex items-center justify-center border-2 ${step >= 3 ? 'border-primary-600 bg-primary-50' : 'border-gray-300'}`}>
                  <span className="font-semibold">3</span>
                </div>
                <span className="ml-2 font-medium hidden sm:inline">Recommendations</span>
              </div>
            </div>
          </div>

          {/* Step 1: Sample Specifications */}
          {step === 1 && (
            <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
              <h2 className="text-2xl font-bold mb-6">Sample Specifications</h2>
              
              <div className="space-y-6">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Material Type <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.materialType}
                    onChange={(e) => handleInputChange('materialType', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select material type...</option>
                    {materialTypes.map((type) => (
                      <option key={type} value={type}>
                        {type}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Material Hardness <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.materialHardness}
                    onChange={(e) => handleInputChange('materialHardness', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select hardness level...</option>
                    {hardnessLevels.map((level) => (
                      <option key={level} value={level}>
                        {level}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Sample Size <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.sampleSize}
                    onChange={(e) => handleInputChange('sampleSize', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select sample size...</option>
                    {sampleSizes.map((size) => (
                      <option key={size} value={size}>
                        {size}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Sample Shape
                  </label>
                  <select
                    value={formData.sampleShape}
                    onChange={(e) => handleInputChange('sampleShape', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select sample shape...</option>
                    <option value="Regular">Regular (Rectangular/Cylindrical)</option>
                    <option value="Irregular">Irregular/Complex</option>
                    <option value="Thin">Thin Section</option>
                    <option value="Small">Small/Delicate</option>
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Primary Applications
                  </label>
                  <div className="space-y-2">
                    {applicationOptions.map((app) => (
                      <label key={app} className="flex items-center space-x-2 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={formData.applications.includes(app)}
                          onChange={() => toggleApplication(app)}
                          className="w-4 h-4 text-primary-600 border-gray-300 rounded focus:ring-primary-600"
                        />
                        <span className="text-gray-700">{app}</span>
                      </label>
                    ))}
                  </div>
                </div>
              </div>

              <div className="mt-8 flex justify-end">
                <button
                  onClick={() => setStep(2)}
                  disabled={!canProceedToStep2()}
                  className={`px-6 py-3 rounded-full font-semibold transition-all duration-200 ${
                    canProceedToStep2()
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  Next: Workflow Requirements <ChevronRight className="w-4 h-4 inline ml-1" />
                </button>
              </div>
            </div>
          )}

          {/* Step 2: Workflow Requirements */}
          {step === 2 && (
            <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
              <h2 className="text-2xl font-bold mb-6">Workflow Requirements</h2>
              
              <div className="space-y-6">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Daily Throughput <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.throughput}
                    onChange={(e) => handleInputChange('throughput', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select throughput level...</option>
                    {throughputOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Automation Level <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.automation}
                    onChange={(e) => handleInputChange('automation', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select automation level...</option>
                    {automationOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>

                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">
                    Budget Range <span className="text-red-500">*</span>
                  </label>
                  <select
                    value={formData.budget}
                    onChange={(e) => handleInputChange('budget', e.target.value)}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-600 focus:border-primary-600"
                  >
                    <option value="">Select budget range...</option>
                    {budgetOptions.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                </div>
              </div>

              <div className="mt-8 flex justify-between">
                <button
                  onClick={() => setStep(1)}
                  className="px-6 py-3 rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200"
                >
                  ← Back
                </button>
                <button
                  onClick={generateRecommendations}
                  disabled={!canGenerateRecommendations()}
                  className={`px-6 py-3 rounded-full font-semibold transition-all duration-200 ${
                    canGenerateRecommendations()
                      ? 'bg-primary-600 text-white hover:bg-primary-700 shadow-md hover:shadow-lg'
                      : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                  }`}
                >
                  Generate Recommendations <ChevronRight className="w-4 h-4 inline ml-1" />
                </button>
              </div>
            </div>
          )}

          {/* Step 3: Recommendations */}
          {step === 3 && recommendations && (
            <div className="space-y-8">
              <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                <div className="flex items-center justify-between mb-6">
                  <h2 className="text-2xl font-bold">Your Recommendations</h2>
                  <button
                    onClick={() => {
                      setStep(1)
                      setRecommendations(null)
                      setFormData({
                        materialType: '',
                        materialHardness: '',
                        sampleSize: '',
                        sampleShape: '',
                        throughput: '',
                        automation: '',
                        budget: '',
                        applications: [],
                      })
                    }}
                    className="px-4 py-2 text-sm rounded-full font-semibold bg-gray-100 text-gray-700 hover:bg-gray-200 transition-all duration-200"
                  >
                    Start Over
                  </button>
                </div>
                <p className="text-gray-600 mb-6">
                  Based on your specifications, here are our recommended equipment and consumables for your lab setup.
                </p>
              </div>

              {/* Sectioning */}
              {(recommendations.sectioning.equipment.length > 0 || recommendations.sectioning.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Sectioning</h3>
                  </div>

                  {recommendations.sectioning.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.sectioning.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.sectioning.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.sectioning.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Mounting */}
              {(recommendations.mounting.equipment.length > 0 || recommendations.mounting.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Mounting</h3>
                  </div>

                  {recommendations.mounting.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.mounting.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.mounting.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.mounting.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Grinding */}
              {(recommendations.grinding.equipment.length > 0 || recommendations.grinding.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Grinding</h3>
                  </div>

                  {recommendations.grinding.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.grinding.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.grinding.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.grinding.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Polishing */}
              {(recommendations.polishing.equipment.length > 0 || recommendations.polishing.consumables.length > 0) && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Polishing</h3>
                  </div>

                  {recommendations.polishing.equipment.length > 0 && (
                    <div className="mb-6">
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <Package className="w-5 h-5 mr-2 text-primary-600" />
                        Equipment
                      </h4>
                      <div className="space-y-4">
                        {recommendations.polishing.equipment.map((item, idx) => (
                          <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {recommendations.polishing.consumables.length > 0 && (
                    <div>
                      <h4 className="text-lg font-semibold mb-4 flex items-center">
                        <FlaskConical className="w-5 h-5 mr-2 text-primary-600" />
                        Consumables
                      </h4>
                      <div className="space-y-4">
                        {recommendations.polishing.consumables.map((item, idx) => (
                          <div key={idx} className="bg-primary-50 border-l-4 border-primary-600 p-4 rounded">
                            <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                            <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                            <Link
                              href={item.link}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                            >
                              Shop Consumables <ChevronRight className="w-4 h-4 ml-1" />
                            </Link>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* Microscopy */}
              {recommendations.microscopy && recommendations.microscopy.equipment.length > 0 && (
                <div className="bg-white rounded-lg shadow-lg p-8 border border-gray-200">
                  <div className="flex items-center space-x-3 mb-6">
                    <Wrench className="w-6 h-6 text-primary-600" />
                    <h3 className="text-2xl font-bold">Microscopy</h3>
                  </div>

                  <div>
                    <h4 className="text-lg font-semibold mb-4 flex items-center">
                      <Package className="w-5 h-5 mr-2 text-primary-600" />
                      Equipment
                    </h4>
                    <div className="space-y-4">
                      {recommendations.microscopy.equipment.map((item, idx) => (
                        <div key={idx} className="bg-gray-50 border-l-4 border-primary-600 p-4 rounded">
                          <h5 className="font-semibold text-gray-900 mb-1">{item.name}</h5>
                          <p className="text-sm text-gray-600 mb-2">{item.description}</p>
                          <Link
                            href={item.link}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="text-sm text-primary-600 hover:text-primary-700 font-semibold inline-flex items-center"
                          >
                            View Equipment <ChevronRight className="w-4 h-4 ml-1" />
                          </Link>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>
              )}

              {/* CTA Section */}
              <div className="bg-primary-600 text-white rounded-lg p-8 text-center">
                <h3 className="text-2xl font-bold mb-4">Ready to Build Your Lab?</h3>
                <p className="text-primary-100 mb-6 max-w-2xl mx-auto">
                  Contact our experts for personalized consultation, quotes, and support in setting up your 
                  metallographic laboratory.
                </p>
                <div className="flex flex-col sm:flex-row gap-4 justify-center">
                  <Link
                    href="https://metallographic.com/contact"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white text-primary-600 px-6 py-3 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl"
                  >
                    Contact Sales
                  </Link>
                  <Link
                    href="https://shop.metallographic.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-primary-700 text-white px-6 py-3 rounded-full font-semibold hover:bg-primary-800 transition-all duration-200 inline-block text-sm border border-primary-500"
                  >
                    Shop Consumables
                  </Link>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  )
}

