'use client'

import { useState } from 'react'
import Link from 'next/link'

type MaterialType = 
  | 'carbon-steel' 
  | 'stainless-steel' 
  | 'aluminum' 
  | 'copper-brass' 
  | 'titanium' 
  | 'nickel-alloys'
  | 'cast-iron'
  | 'tool-steel'
  | 'other'

interface Etchant {
  name: string
  composition: string
  application: string
  method: 'Swab' | 'Immersion' | 'Electrolytic' | 'Swab or Immersion'
  time: string
  notes: string[]
  reveals: string[]
}

const etchantData: Record<MaterialType, Etchant[]> = {
  'carbon-steel': [
    {
      name: '2% Nital Etchant (Nital-2)',
      composition: 'Ethanol, HNO₃ (2%)',
      application: 'General purpose for carbon and low-alloy steels. Reveals ferrite grain boundaries and pearlite structure. Ideal for softer steels.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Most common etchant for carbon steels',
        'Lower concentration for softer steels',
        'Store in dark bottle, replace when yellow',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Ferrite grain boundaries', 'Pearlite structure', 'Martensite', 'Bainite']
    },
    {
      name: '3% Nital Etchant (Nital-3)',
      composition: 'Ethanol, HNO₃ (3%)',
      application: 'Standard concentration for most carbon and low-alloy steels. Good balance for medium-hardness steels.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Standard concentration for most applications',
        'Available as pre-mixed solution from PACE Technologies',
        'Store in dark bottle'
      ],
      reveals: ['Ferrite grain boundaries', 'Pearlite structure', 'Martensite', 'Bainite']
    },
    {
      name: '5% Nital Etchant (Nital-5)',
      composition: 'Ethanol, HNO₃ (5%)',
      application: 'For harder carbon and low-alloy steels. More aggressive etching for high-strength materials.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Higher concentration for harder steels',
        'Available as pre-mixed solution from PACE Technologies',
        'Store in dark bottle'
      ],
      reveals: ['Ferrite grain boundaries', 'Pearlite structure', 'Martensite', 'Bainite']
    },
    {
      name: 'Picral Etchant',
      composition: 'Ethanol, Picric acid (2-4g per 100ml)',
      application: 'Excellent for revealing cementite and pearlite. Does not attack ferrite grain boundaries. Superior for pearlite structures.',
      method: 'Swab or Immersion',
      time: '10-60 seconds',
      notes: [
        'Superior for pearlite structures',
        'Does not reveal ferrite boundaries',
        'Can be combined with Nital for dual etching',
        'Handle with care - picric acid is explosive when dry',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Cementite', 'Pearlite', 'Spheroidized structures', 'Carbides']
    },
    {
      name: "Vilella's Reagent",
      composition: 'Picric Acid (1g), HCl (5ml), Ethanol (100ml)',
      application: 'For ferrite-carbide structures in steels. Reveals grain boundaries and carbide distribution.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Excellent for ferrite-carbide structures',
        'Available as pre-mixed solution from PACE Technologies',
        'Store in dark bottle'
      ],
      reveals: ['Ferrite-carbide structures', 'Grain boundaries', 'Carbide distribution']
    }
  ],
  'stainless-steel': [
    {
      name: "Vilella's Reagent",
      composition: 'Picric Acid (1g), HCl (5ml), Ethanol (100ml)',
      application: 'General purpose for stainless steels. Reveals grain boundaries and general microstructure. Works well for most grades.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Most versatile etchant for stainless steel',
        'Works well for most grades',
        'Available as pre-mixed solution from PACE Technologies',
        'Store in dark bottle'
      ],
      reveals: ['Grain boundaries', 'Austenite structure', 'Ferrite', 'Sigma phase']
    },
    {
      name: "Adler's Etchant",
      composition: 'Copper ammonium chloride (9g), Hydrochloric acid (150ml), Ferric chloride (45g), DI Water (75ml)',
      application: 'Specifically formulated for 300 series austenitic stainless steels and superalloys. Excellent for revealing grain boundaries.',
      method: 'Immersion',
      time: '5-30 seconds',
      notes: [
        'Designed for 300 series austenitic stainless steels',
        'Also effective for superalloys',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Austenite structure', 'Twin boundaries']
    },
    {
      name: "Carpenters (300 Series Stainless Steels)",
      composition: 'FeCl₃ (8.5g), CuCl₂ (2.4g), HCl (122ml), HNO₃ (6ml), Ethanol (122ml)',
      application: 'For duplex and 300 series stainless steels. Reveals grain boundaries and phase structure.',
      method: 'Immersion',
      time: '10-30 seconds at 20°C',
      notes: [
        'Excellent for duplex stainless steels',
        'Also effective for 300 series',
        'Use at room temperature (20°C)',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Ferrite', 'Austenite', 'Phase structure']
    },
    {
      name: "Kallings No. 2",
      composition: 'CuCl₂ (5g), HCl (100ml), Ethanol (100ml)',
      application: 'Excellent for martensitic 400 series stainless steels. Reveals grain boundaries clearly.',
      method: 'Swab or Immersion',
      time: '10-30 seconds at 20°C',
      notes: [
        'Specifically for martensitic 400 stainless steels',
        'Produces good contrast',
        'Use at room temperature (20°C)',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Martensite', 'Ferrite', 'Carbides']
    },
    {
      name: "Fry's Reagent",
      composition: 'HCl (100ml), CuCl₂ (12.5g), DI Water (75ml), Alcohol (65ml)',
      application: 'For martensitic and precipitation-hardening (PH) stainless steels. Reveals martensite structure.',
      method: 'Swab or Immersion',
      time: '10-30 seconds',
      notes: [
        'Excellent for martensitic stainless steels',
        'Also effective for PH stainless steels',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Martensite', 'Grain boundaries', 'Precipitation phases']
    },
    {
      name: 'CU-PASS-SOL (Copper Sulfate Passivation Reagent)',
      composition: 'CuSO₄·5H₂O (40g), H₂SO₄ (1.5ml), DI Water (245ml)',
      application: 'Detects free iron contamination on stainless steel surfaces. Used for passivation testing.',
      method: 'Swab',
      time: '30-60 seconds',
      notes: [
        'Used for passivation testing',
        'Detects free iron on stainless steel',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Free iron contamination', 'Passivation quality']
    }
  ],
  'aluminum': [
    {
      name: "Keller's Reagent",
      composition: 'DI Water (190ml), HNO₃ (5ml), HCl (3ml), HF (2ml)',
      application: 'Standard etchant for aluminum and aluminum alloys. Reveals grain boundaries and precipitates. Most common etchant for aluminum.',
      method: 'Swab or Immersion',
      time: '10-30 seconds',
      notes: [
        'Most common etchant for aluminum',
        'Reveals grain boundaries well',
        'May need adjustment for specific alloys',
        'Handle HF with extreme care',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Precipitates', 'Intermetallics', 'Eutectic structures']
    },
    {
      name: 'Al-NaOH Etchant',
      composition: 'NaOH (25g), Distilled water (250ml)',
      application: 'For aluminum alloys. Reveals grain structure and phase distribution.',
      method: 'Immersion',
      time: '10-30 seconds',
      notes: [
        'Effective for aluminum alloys',
        'Handle with care - strong base',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Phase structure', 'Precipitates']
    },
    {
      name: "Weck's Etch",
      composition: 'Ammonium bifluoride (4.5g), HCl (10ml), Water (240ml)',
      application: 'Tint etch for titanium alloys. Also used for aluminum. Produces colored microstructures for phase identification.',
      method: 'Swab or Immersion',
      time: '30-90 seconds',
      notes: [
        'Color etching technique',
        'Different phases show different colors',
        'Useful for phase identification',
        'Available as pre-mixed solution from PACE Technologies',
        'Handle HF compounds with extreme care'
      ],
      reveals: ['Phase contrast', 'Grain structure', 'Precipitates']
    }
  ],
  'copper-brass': [
    {
      name: 'Copper No. 1',
      composition: 'Nitric acid (125ml), Distilled water (125ml)',
      application: 'Standard etchant for copper and brass. Reveals grain boundaries and twin boundaries.',
      method: 'Immersion',
      time: '5-45 seconds at 20°C',
      notes: [
        'Most common for copper and brass',
        'Use at room temperature (20°C)',
        'Fresh solution works best',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Twin boundaries', 'Alpha phase', 'Beta phase']
    },
    {
      name: 'Copper No. 2',
      composition: 'DI Water (200ml), HCl (50ml), FeCl₃ (10g)',
      application: 'For copper and brass alloys. Reveals grain structure and phases. Alternative to Copper No. 1.',
      method: 'Immersion',
      time: '10-30 seconds at 20°C',
      notes: [
        'Effective for copper and brass',
        'Use at room temperature (20°C)',
        'Available as pre-mixed solution from PACE Technologies',
        'Store in dark bottle'
      ],
      reveals: ['Grain boundaries', 'Phase structure', 'Precipitates']
    },
    {
      name: 'ASTM No. 30',
      composition: 'Ammonia (62.5ml), Hydrogen Peroxide 3% (125ml), DI Water (62.5ml)',
      application: 'Standard ASTM etchant for copper and copper alloys. Reveals grain boundaries and structure.',
      method: 'Swab',
      time: '5-45 seconds',
      notes: [
        'ASTM standard etchant for copper',
        'Fresh solution works best',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Twin boundaries', 'Phase structure']
    },
    {
      name: 'Dichromate Etchant',
      composition: 'H₂SO₄ (36ml), DI Water (445ml), NaCl saturated (18ml), K₂Cr₂O₇ (8.9g)',
      application: 'For Cu-Sn (tin bronze) alloys. Reveals grain boundaries and phase structure.',
      method: 'Swab or Immersion',
      time: '10-30 seconds',
      notes: [
        'Specifically for tin bronze alloys',
        'Handle with care',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Tin phase', 'Bronze structure']
    },
    {
      name: 'Ammonium Persulfate Etchant',
      composition: '(NH₄)₂S₂O₈ (50g), Distilled water (245ml)',
      application: 'For brasses with cobalt. Reveals grain boundaries and phase structure.',
      method: 'Immersion',
      time: '10-30 seconds',
      notes: [
        'Specifically for brasses with cobalt',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Phase structure', 'Cobalt distribution']
    }
  ],
  'titanium': [
    {
      name: "Kroll's Reagent",
      composition: 'DI Water (92ml), HNO₃ (6ml), HF (2ml)',
      application: 'Standard etchant for titanium and titanium alloys. Reveals alpha and beta phases. Most common for titanium.',
      method: 'Swab',
      time: '5-20 seconds',
      notes: [
        'Most common for titanium',
        'Very short etching time required',
        'Handle HF with extreme care',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Alpha phase', 'Beta phase', 'Grain boundaries', 'Widmanstätten structure']
    },
    {
      name: "Weck's Etch",
      composition: 'Ammonium bifluoride (4.5g), HCl (10ml), Water (240ml)',
      application: 'Tint etch for titanium alloys. Produces colored microstructures for phase identification. Different phases show different colors.',
      method: 'Swab or Immersion',
      time: '30-90 seconds',
      notes: [
        'Color etching technique',
        'Different phases show different colors',
        'Useful for phase identification',
        'Available as pre-mixed solution from PACE Technologies',
        'Handle HF compounds with extreme care'
      ],
      reveals: ['Phase contrast', 'Alpha phase', 'Beta phase', 'Grain structure']
    },
    {
      name: "Keller's Reagent",
      composition: 'DI Water (190ml), HNO₃ (5ml), HCl (3ml), HF (2ml)',
      application: 'Also effective for titanium and titanium alloys. Can be used as alternative to Kroll\'s reagent.',
      method: 'Swab or Immersion',
      time: '10-30 seconds',
      notes: [
        'Also used for titanium',
        'Similar to Kroll\'s reagent',
        'Handle HF with extreme care',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Alpha phase', 'Beta phase', 'Grain boundaries']
    }
  ],
  'nickel-alloys': [
    {
      name: 'Inconel Etchant',
      composition: 'Multiple Solutions (HNO₃, HCl, H₂O₂)',
      application: 'Macro etch for nickel alloys including Inconel. Reveals grain boundaries and macro structure.',
      method: 'Swab or Immersion',
      time: '10-30 seconds',
      notes: [
        'Designed for nickel alloys including Inconel',
        'Use fresh solution only',
        'Available as pre-mixed solution from PACE Technologies',
        'Handle in fume hood'
      ],
      reveals: ['Grain boundaries', 'Macro structure', 'Phase distribution']
    },
    {
      name: "Marble's Reagent",
      composition: 'CuSO₄ (10g), HCl (50ml), Water (50ml)',
      application: 'For nickel, nickel-copper, and nickel-iron superalloys. Reveals grain boundaries and phases.',
      method: 'Swab or Immersion',
      time: '5-60 seconds',
      notes: [
        'Excellent for nickel superalloys',
        'Also effective for Ni-Cu and Ni-Fe alloys',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Gamma prime', 'Carbides', 'Intermetallics']
    },
    {
      name: "Kallings No. 2",
      composition: 'CuCl₂ (5g), HCl (100ml), Ethanol (100ml)',
      application: 'For nickel-copper superalloys. Also effective for duplex stainless steels.',
      method: 'Swab or Immersion',
      time: '10-30 seconds at 20°C',
      notes: [
        'Effective for Ni-Cu superalloys',
        'Use at room temperature (20°C)',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Phase structure', 'Intermetallics']
    },
    {
      name: 'ASTM 97',
      composition: 'KOH (187.5g), Distilled water (245ml)',
      application: 'Electrolytic etchant for Fe-Cr-Ni alloys. Provides controlled etching for nickel-containing alloys.',
      method: 'Electrolytic',
      time: '5-15 seconds at 2.5V',
      notes: [
        'Requires electrolytic setup',
        'Use at 2.5V',
        'For Fe-Cr-Ni alloys',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Grain boundaries', 'Phase structure', 'Carbides']
    }
  ],
  'cast-iron': [
    {
      name: '2% Nital Etchant (Nital-2)',
      composition: 'Ethanol, HNO₃ (2%)',
      application: 'Standard etchant for cast iron. Reveals graphite and matrix structure. Graphite appears as dark areas.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Most common for cast iron',
        'Reveals matrix structure',
        'Graphite appears as dark areas',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Graphite', 'Ferrite', 'Pearlite', 'Matrix structure']
    },
    {
      name: '3% Nital Etchant (Nital-3)',
      composition: 'Ethanol, HNO₃ (3%)',
      application: 'For cast iron requiring slightly more aggressive etching. Reveals matrix structure and graphite.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Slightly more aggressive than 2%',
        'Reveals matrix structure',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Graphite', 'Ferrite', 'Pearlite', 'Matrix structure']
    },
    {
      name: 'Picral Etchant',
      composition: 'Ethanol, Picric acid (2-4g per 100ml)',
      application: 'For revealing pearlite in cast iron matrix without attacking graphite. Superior for pearlitic cast irons.',
      method: 'Swab or Immersion',
      time: '10-60 seconds',
      notes: [
        'Good for pearlitic cast irons',
        'Does not attack graphite',
        'Handle with care - picric acid is explosive when dry',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Pearlite', 'Cementite', 'Graphite shape']
    },
    {
      name: "Klemm's Reagent",
      composition: 'Na₂S₂O₃ solution (250ml saturated), K₂S₂O₅ (5g)',
      application: 'For cast iron, brass, bronze, and steel. Color etching technique that reveals structure.',
      method: 'Immersion',
      time: 'Seconds to minutes',
      notes: [
        'Color etching technique',
        'Effective for cast iron',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Graphite', 'Matrix structure', 'Phase contrast']
    }
  ],
  'tool-steel': [
    {
      name: '5% Nital Etchant (Nital-5)',
      composition: 'Ethanol, HNO₃ (5%)',
      application: 'General purpose for tool steels. Reveals martensite and retained austenite. Higher concentration for harder steels.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Standard etchant for tool steels',
        'Higher concentration for harder steels',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Martensite', 'Retained austenite', 'Carbides', 'Grain boundaries']
    },
    {
      name: '8% Nital Etchant (Nital-8)',
      composition: 'Ethanol, HNO₃ (8%)',
      application: 'For very hard tool steels requiring aggressive etching. Reveals martensite and complex structures.',
      method: 'Swab or Immersion',
      time: '5-30 seconds',
      notes: [
        'Most aggressive Nital concentration',
        'For very hard tool steels',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Martensite', 'Retained austenite', 'Carbides', 'Complex phases']
    },
    {
      name: 'Picral Etchant',
      composition: 'Ethanol, Picric acid (2-4g per 100ml)',
      application: 'For revealing carbides in tool steels without attacking matrix. Excellent for carbide visualization.',
      method: 'Swab or Immersion',
      time: '10-60 seconds',
      notes: [
        'Excellent for carbide visualization',
        'Does not attack matrix',
        'Handle with care - picric acid is explosive when dry',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Carbides', 'Carbide distribution', 'Spheroidized structures']
    },
    {
      name: "Beraha's Etchant",
      composition: 'Distilled water (250ml), Na₂S₂O₃ (25g), K₂S₂O₅ (7.5g)',
      application: 'For tool steel. Color etching that colors ferrite, martensite, and other phases differently.',
      method: 'Immersion',
      time: '30-120 seconds',
      notes: [
        'Color etching technique',
        'Colors ferrite, martensite, etc. differently',
        'Useful for phase identification',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Ferrite', 'Martensite', 'Carbides', 'Phase contrast']
    },
    {
      name: "Murakami's Reagent",
      composition: 'K₃Fe(CN)₆ (10g), KOH (10g), Water (100ml)',
      application: 'For revealing carbides in tool steels. Colors different carbides differently. Mix KOH + Water first.',
      method: 'Swab',
      time: '30-120 seconds',
      notes: [
        'Color etching technique',
        'Different carbides show different colors',
        'Useful for carbide identification',
        'Mix KOH + Water first, then add K₃Fe(CN)₆',
        'Available as pre-mixed solution from PACE Technologies'
      ],
      reveals: ['Carbide types', 'Carbide distribution', 'Matrix structure']
    }
  ],
  'other': [
    {
      name: 'General Purpose',
      composition: 'Varies by material',
      application: 'Please select a specific material type for detailed etchant recommendations.',
      method: 'Varies',
      time: 'Varies',
      notes: [
        'Etchant selection depends on material composition',
        'Consult material-specific guides',
        'Test on scrap samples first'
      ],
      reveals: ['Varies by material']
    }
  ]
}

const materialLabels: Record<MaterialType, string> = {
  'carbon-steel': 'Carbon Steel / Low Alloy Steel',
  'stainless-steel': 'Stainless Steel',
  'aluminum': 'Aluminum & Aluminum Alloys',
  'copper-brass': 'Copper & Brass',
  'titanium': 'Titanium & Titanium Alloys',
  'nickel-alloys': 'Nickel Alloys',
  'cast-iron': 'Cast Iron',
  'tool-steel': 'Tool Steel',
  'other': 'Other Materials'
}

export default function EtchantSelector() {
  const [materialType, setMaterialType] = useState<MaterialType | ''>('')
  const [selectedEtchant, setSelectedEtchant] = useState<Etchant | null>(null)

  const handleMaterialChange = (material: MaterialType) => {
    setMaterialType(material)
    setSelectedEtchant(null)
  }

  const handleEtchantSelect = (etchant: Etchant) => {
    setSelectedEtchant(etchant)
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-4xl font-bold mb-4">Etchant Selector</h1>
          <p className="text-xl text-gray-600 mb-4">
            Etching is a critical step in metallographic specimen preparation used to reveal the microstructural features of metals and alloys. 
            By selectively attacking different phases or grain boundaries, etchants enhance contrast and make structures like grains, inclusions, 
            and phase distributions visible under the microscope.
          </p>
          <p className="text-lg text-gray-600 mb-8">
            Select your material type to find the right etchant for your application. All recommended etchants are available as pre-mixed 
            solutions from PACE Technologies for reliable, consistent results.
          </p>

          <div className="card mb-8">
            <div className="mb-6">
              <label htmlFor="materialType" className="block text-sm font-semibold text-gray-700 mb-2">
                Material Type
              </label>
              <select
                id="materialType"
                value={materialType}
                onChange={(e) => handleMaterialChange(e.target.value as MaterialType)}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500"
              >
                <option value="">Select material type...</option>
                {Object.entries(materialLabels).map(([value, label]) => (
                  <option key={value} value={value}>{label}</option>
                ))}
              </select>
            </div>
          </div>

          {materialType && materialType !== 'other' && (
            <div className="card mb-8">
              <h2 className="text-2xl font-semibold mb-4">Recommended Etchants</h2>
              <div className="space-y-4">
                {etchantData[materialType].map((etchant, index) => (
                  <div
                    key={index}
                    className={`border rounded-lg p-4 cursor-pointer transition-all ${
                      selectedEtchant === etchant
                        ? 'border-primary-500 bg-primary-50'
                        : 'border-gray-300 hover:border-primary-300 hover:bg-gray-50'
                    }`}
                    onClick={() => handleEtchantSelect(etchant)}
                  >
                    <div className="flex items-start justify-between">
                      <div className="flex-1">
                        <h3 className="text-lg font-semibold text-gray-900 mb-1">{etchant.name}</h3>
                        <p className="text-sm text-gray-600 mb-2">{etchant.application}</p>
                        <div className="flex flex-wrap gap-3 text-xs text-gray-500">
                          <span><strong>Composition:</strong> {etchant.composition}</span>
                          <span><strong>Method:</strong> {etchant.method}</span>
                          <span><strong>Time:</strong> {etchant.time}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {selectedEtchant && (
            <div className="card mb-8">
              <h2 className="text-2xl font-semibold mb-4">Etchant Details: {selectedEtchant.name}</h2>
              
              <div className="space-y-4">
                <div>
                  <div className="text-sm font-semibold text-gray-700 mb-1">Composition</div>
                  <div className="text-gray-900">{selectedEtchant.composition}</div>
                </div>

                <div>
                  <div className="text-sm font-semibold text-gray-700 mb-1">Application Method</div>
                  <div className="text-gray-900">{selectedEtchant.method}</div>
                </div>

                <div>
                  <div className="text-sm font-semibold text-gray-700 mb-1">Etching Time</div>
                  <div className="text-gray-900">{selectedEtchant.time}</div>
                </div>

                <div>
                  <div className="text-sm font-semibold text-gray-700 mb-2">Reveals</div>
                  <ul className="list-disc list-inside space-y-1 text-gray-700">
                    {selectedEtchant.reveals.map((item, index) => (
                      <li key={index}>{item}</li>
                    ))}
                  </ul>
                </div>

                <div>
                  <div className="text-sm font-semibold text-gray-700 mb-2">Important Notes</div>
                  <ul className="list-disc list-inside space-y-1 text-gray-700">
                    {selectedEtchant.notes.map((note, index) => (
                      <li key={index}>{note}</li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>
          )}

          {materialType && (
            <div className="mt-6 bg-primary-600 text-white rounded-lg p-6 text-center">
              <h3 className="text-lg font-semibold mb-2">Shop Etchants</h3>
              <p className="text-primary-100 text-sm mb-4">
                Purchase pre-mixed etching solutions and reagents from PACE Technologies.
              </p>
              <a
                href="https://shop.metallographic.com/collections/etchants"
                target="_blank"
                rel="noopener noreferrer"
                className="bg-white text-primary-600 px-6 py-2.5 rounded-full font-semibold hover:bg-gray-100 transition-all duration-200 inline-block text-sm shadow-lg hover:shadow-xl hover:scale-105"
              >
                Shop Etchants →
              </a>
            </div>
          )}

          <div className="mt-8 bg-gray-50 rounded-lg p-6">
            <h3 className="text-lg font-semibold mb-3">Key Tips for Etching</h3>
            <ul className="text-sm text-gray-700 space-y-2 list-disc list-inside mb-4">
              <li><strong>Material Compatibility:</strong> Select etchants tailored to your metal type for optimal microstructure contrast</li>
              <li><strong>Surface Prep:</strong> Polish and clean specimens thoroughly to avoid interference from residues or scratches</li>
              <li><strong>Etch Timing:</strong> Control exposure time to prevent over-etching or underdeveloped structural detail</li>
              <li><strong>Safe Handling:</strong> Use PPE and work in ventilated areas when handling chemical etchants</li>
            </ul>
            <h4 className="text-md font-semibold mb-2 mt-4">Safety Guidelines</h4>
            <ul className="text-sm text-gray-700 space-y-2 list-disc list-inside">
              <li>Always work in a well-ventilated area or fume hood</li>
              <li>Wear appropriate personal protective equipment (gloves, goggles, lab coat)</li>
              <li>Handle acids and corrosive chemicals with extreme care</li>
              <li>Store etchants in properly labeled, appropriate containers</li>
              <li>Dispose of used etchants according to local regulations</li>
              <li>Never mix incompatible chemicals</li>
              <li>Have emergency eyewash and safety shower available</li>
            </ul>
          </div>

          <div className="mt-8 bg-primary-50 border-l-4 border-primary-600 p-6 rounded">
            <h3 className="text-lg font-semibold mb-3">Need More Help?</h3>
            <p className="text-gray-700 text-sm mb-4">
              Check out our comprehensive guides on material-specific preparation and etching techniques.
            </p>
            <div className="flex flex-col sm:flex-row gap-3">
              <Link href="/guides/stainless-steel-preparation" className="text-primary-600 font-semibold hover:underline">
                View Stainless Steel Guide →
              </Link>
              <Link href="/guides" className="text-primary-600 font-semibold hover:underline">
                Browse All Guides →
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

