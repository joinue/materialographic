'use client'

import { useRef } from 'react'
import jsPDF from 'jspdf'
import { Download } from 'lucide-react'
import Link from 'next/link'

export default function ASTMStandardsReferencePage() {
  const guideRef = useRef<HTMLDivElement>(null)

  const astmStandards = [
    {
      standard: 'ASTM E3',
      title: 'Standard Guide for Preparation of Metallographic Specimens',
      description: 'Comprehensive guide covering all aspects of metallographic specimen preparation including sectioning, mounting, grinding, polishing, and etching procedures.',
      category: 'Preparation',
    },
    {
      standard: 'ASTM E407',
      title: 'Standard Practice for Microetching Metals and Alloys',
      description: 'Procedures for microetching metals and alloys to reveal microstructural features. Includes reagent preparation, application methods, and safety considerations.',
      category: 'Etching',
    },
    {
      standard: 'ASTM E112',
      title: 'Standard Test Methods for Determining Average Grain Size',
      description: 'Methods for determining average grain size using comparison charts, planimetric (Jeffries) method, and intercept method. Includes procedures for different grain structures.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E883',
      title: 'Standard Guide for Reflected-Light Photomicrography',
      description: 'Guidelines for capturing photomicrographs of metallographic specimens, including equipment setup, lighting, magnification selection, and image documentation.',
      category: 'Documentation',
    },
    {
      standard: 'ASTM E384',
      title: 'Standard Test Method for Microindentation Hardness of Materials',
      description: 'Test method for determining microindentation hardness using Knoop and Vickers indenters. Covers test procedures, equipment calibration, and reporting requirements.',
      category: 'Testing',
    },
    {
      standard: 'ASTM E92',
      title: 'Standard Test Methods for Vickers Hardness and Knoop Hardness of Metallic Materials',
      description: 'Test methods for Vickers and Knoop hardness testing. Includes procedures, equipment requirements, and calculation methods.',
      category: 'Testing',
    },
    {
      standard: 'ASTM E18',
      title: 'Standard Test Methods for Rockwell Hardness of Metallic Materials',
      description: 'Test methods for Rockwell hardness testing using various scales (A, B, C, etc.). Covers procedures, equipment calibration, and test conditions.',
      category: 'Testing',
    },
    {
      standard: 'ASTM E10',
      title: 'Standard Test Method for Brinell Hardness of Metallic Materials',
      description: 'Test method for Brinell hardness testing. Includes procedures, indenter specifications, test forces, and measurement requirements.',
      category: 'Testing',
    },
    {
      standard: 'ASTM E140',
      title: 'Standard Hardness Conversion Tables for Metals',
      description: 'Conversion tables for converting between different hardness scales (Rockwell, Brinell, Vickers, Knoop). Provides relationship tables for various materials.',
      category: 'Reference',
    },
    {
      standard: 'ASTM E1245',
      title: 'Standard Practice for Determining the Inclusion or Second-Phase Constituent Content of Metals by Automatic Image Analysis',
      description: 'Practice for quantitative analysis of inclusions and second-phase constituents using automatic image analysis systems.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E45',
      title: 'Standard Test Methods for Determining the Inclusion Content of Steel',
      description: 'Methods for determining the inclusion content of steel using comparison charts and image analysis. Covers rating procedures and reporting.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E562',
      title: 'Standard Test Method for Determining Volume Fraction by Systematic Manual Point Count',
      description: 'Manual point count method for determining volume fraction of phases or constituents in microstructures. Includes procedures and statistical considerations.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E930',
      title: 'Standard Test Methods for Estimating the Largest Observed Grain Size (ALA Grain Size)',
      description: 'Methods for estimating the largest observed grain size in a microstructure, useful for quality control and failure analysis applications.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E1181',
      title: 'Standard Test Methods for Characterizing Duplex Grain Sizes',
      description: 'Methods for characterizing materials with duplex (bimodal) grain size distributions. Includes procedures for measurement and reporting.',
      category: 'Analysis',
    },
    {
      standard: 'ASTM E1951',
      title: 'Standard Guide for Calibrating Reticles and Light Microscope Magnifications',
      description: 'Guide for calibrating microscope magnifications and reticles to ensure accurate measurements. Includes procedures for various calibration methods.',
      category: 'Calibration',
    },
    {
      standard: 'ASTM E2015',
      title: 'Standard Guide for Preparation of Plastics and Polymeric Specimens for Microstructural Examination',
      description: 'Guide for preparing polymeric materials for microstructural examination. Covers sectioning, mounting, polishing, and etching techniques for plastics.',
      category: 'Preparation',
    },
    {
      standard: 'ASTM E340',
      title: 'Standard Practice for Macroetching Metals and Alloys',
      description: 'Practice for macroetching metals and alloys to reveal large-scale structural features. Includes reagent preparation and application methods.',
      category: 'Etching',
    },
    {
      standard: 'ASTM E381',
      title: 'Standard Method of Macroetch Testing, Inspection, and Rating Steel Products, Comprising Bars, Billets, Blooms, and Forgings',
      description: 'Method for macroetch testing of steel products to reveal defects, segregation, and flow lines. Includes rating procedures and acceptance criteria.',
      category: 'Testing',
    },
    {
      standard: 'ASTM E1578',
      title: 'Standard Guide for Laboratory Information Management Systems (LIMS)',
      description: 'Guide for implementing and using Laboratory Information Management Systems for tracking samples, procedures, and results.',
      category: 'Documentation',
    },
    {
      standard: 'ASTM E1919',
      title: 'Standard Guide for Worldwide Published Standards Relating to Metallography',
      description: 'Comprehensive guide listing published standards from various organizations worldwide related to metallography and materials testing.',
      category: 'Reference',
    },
  ]

  const downloadPDF = async () => {
    const pdf = new jsPDF({
      orientation: 'portrait',
      unit: 'mm',
      format: 'a4',
    })

    let logoDataUrl: string | null = null
    try {
      const logoImg = await fetch('/logo.png').then(res => res.blob()).then(blob => {
        return new Promise<string>((resolve) => {
          const reader = new FileReader()
          reader.onloadend = () => resolve(reader.result as string)
          reader.readAsDataURL(blob)
        })
      })
      logoDataUrl = logoImg
    } catch (e) {
      // Continue without logo
    }

    const addFooterLogo = () => {
      if (logoDataUrl) {
        pdf.addImage(logoDataUrl, 'PNG', 190 - 8, 290 - 8, 8, 8)
      }
    }

    pdf.setFontSize(20)
    pdf.setTextColor(37, 99, 235)
    pdf.setFont(undefined, 'bold')
    pdf.text('ASTM Standards Quick Reference', 20, 20)

    if (logoDataUrl) {
      pdf.addImage(logoDataUrl, 'PNG', 20, 25, 8, 8)
    }
    pdf.setFontSize(11)
    pdf.setTextColor(0, 0, 0)
    pdf.setFont(undefined, 'normal')
    pdf.text('Metallography.org', 30, 30)

    pdf.setFontSize(10)
    pdf.setTextColor(100, 100, 100)
    pdf.text(`Generated: ${new Date().toLocaleDateString()}`, 20, 38)

    let yPos = 50
    const lineHeight = 6
    const leftMargin = 20
    const rightMargin = 190

    const checkPageBreak = (requiredSpace: number) => {
      if (yPos + requiredSpace > 275) {
        pdf.addPage()
        yPos = 20
        return true
      }
      return false
    }

    // Introduction
    yPos += 3
    pdf.setFontSize(12)
    pdf.setFont(undefined, 'bold')
    pdf.text('Introduction', leftMargin, yPos)
    yPos += lineHeight

    pdf.setFontSize(10)
    pdf.setFont(undefined, 'normal')
    const introText = 'This guide provides a quick reference to key ASTM standards relevant to metallography and metallographic sample preparation. These standards establish procedures, test methods, and guidelines for consistent and reliable metallographic analysis. Always refer to the complete standard documents for detailed procedures and requirements.'
    const introLines = pdf.splitTextToSize(introText, rightMargin - leftMargin)
    pdf.text(introLines, leftMargin, yPos)
    yPos += introLines.length * lineHeight + 5

    // Group by category
    const categories = ['Preparation', 'Etching', 'Analysis', 'Testing', 'Documentation', 'Calibration', 'Reference']
    
    categories.forEach(category => {
      const categoryStandards = astmStandards.filter(s => s.category === category)
      if (categoryStandards.length === 0) return

      checkPageBreak(30)
      yPos += 3
      pdf.setFontSize(14)
      pdf.setFont(undefined, 'bold')
      pdf.setTextColor(37, 99, 235)
      pdf.text(category, leftMargin, yPos)
      yPos += lineHeight + 1
      pdf.setDrawColor(37, 99, 235)
      pdf.setLineWidth(0.5)
      pdf.line(leftMargin, yPos, rightMargin, yPos)
      yPos += lineHeight + 2
      pdf.setTextColor(0, 0, 0)

      categoryStandards.forEach(standard => {
        checkPageBreak(20)
        pdf.setFontSize(11)
        pdf.setFont(undefined, 'bold')
        pdf.text(standard.standard, leftMargin, yPos)
        yPos += lineHeight

        pdf.setFontSize(10)
        pdf.setFont(undefined, 'bold')
        const titleLines = pdf.splitTextToSize(standard.title, rightMargin - leftMargin - 5)
        pdf.text(titleLines, leftMargin + 5, yPos)
        yPos += titleLines.length * lineHeight

        pdf.setFont(undefined, 'normal')
        const descLines = pdf.splitTextToSize(standard.description, rightMargin - leftMargin - 5)
        pdf.text(descLines, leftMargin + 5, yPos)
        yPos += descLines.length * lineHeight + 3
      })
    })

    // Notes
    checkPageBreak(25)
    yPos += 3
    pdf.setFontSize(12)
    pdf.setFont(undefined, 'bold')
    pdf.setTextColor(37, 99, 235)
    pdf.text('Important Notes', leftMargin, yPos)
    yPos += lineHeight + 2

    pdf.setFontSize(10)
    pdf.setFont(undefined, 'normal')
    pdf.setTextColor(0, 0, 0)
    const notes = [
      '• This is a quick reference guide only. Always refer to the complete ASTM standard documents for detailed procedures.',
      '• ASTM standards are regularly updated. Verify you are using the most current version.',
      '• Standards can be purchased from ASTM International (www.astm.org).',
      '• Many organizations maintain subscriptions to ASTM standards for their laboratories.',
      '• Some standards may have specific material or application limitations.',
      '• Always follow safety guidelines when performing procedures described in standards.',
    ]

    notes.forEach(note => {
      checkPageBreak(8)
      pdf.text(`• ${note}`, leftMargin + 5, yPos)
      yPos += lineHeight
    })

    // Footer
    const pageCount = pdf.internal.getNumberOfPages()
    for (let i = 1; i <= pageCount; i++) {
      pdf.setPage(i)
      addFooterLogo()
      pdf.setFontSize(8)
      pdf.setTextColor(100, 100, 100)
      pdf.text(`Page ${i} of ${pageCount} | metallography.org`, 105, 290, { align: 'center' })
    }

    pdf.save('ASTM-Standards-Quick-Reference.pdf')
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        <div className="max-w-4xl mx-auto">
          <nav className="text-sm text-gray-600 mb-6">
            <Link href="/">Home</Link> / <Link href="/resources">Resources</Link> / ASTM Standards Quick Reference
          </nav>

          <div className="mb-8">
            <h1 className="text-4xl font-bold mb-4 text-gray-900">ASTM Standards Quick Reference</h1>
            <p className="text-xl text-gray-600">
              Quick reference guide to key ASTM standards relevant to metallography and metallographic sample preparation.
            </p>
          </div>

          <div className="card mb-8">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="text-xl font-semibold mb-2">Download PDF Guide</h2>
                <p className="text-gray-600 text-sm">
                  Get a printable reference guide with ASTM standards organized by category, including descriptions and applications.
                </p>
              </div>
              <button
                onClick={downloadPDF}
                className="btn-primary flex items-center gap-2 whitespace-nowrap"
              >
                <Download size={20} />
                Download PDF
              </button>
            </div>
          </div>

          <div ref={guideRef} className="card">
            <div className="bg-blue-50 border-l-4 border-blue-500 p-4 rounded mb-6">
              <p className="text-sm text-gray-700">
                <strong>Note:</strong> This is a quick reference guide only. Always refer to the complete ASTM standard documents for detailed procedures, requirements, and specifications. ASTM standards are regularly updated - verify you are using the most current version.
              </p>
            </div>

            <div className="space-y-8">
              {['Preparation', 'Etching', 'Analysis', 'Testing', 'Documentation', 'Calibration', 'Reference'].map(category => {
                const categoryStandards = astmStandards.filter(s => s.category === category)
                if (categoryStandards.length === 0) return null

                return (
                  <section key={category}>
                    <h3 className="text-lg font-semibold mb-3 text-primary-600">{category}</h3>
                    <div className="space-y-4">
                      {categoryStandards.map((standard, idx) => (
                        <div key={idx} className="border-l-4 border-primary-500 pl-4">
                          <div className="flex items-center gap-2 mb-1">
                            <h4 className="font-semibold">{standard.standard}</h4>
                          </div>
                          <p className="text-sm font-medium text-gray-700 mb-1">{standard.title}</p>
                          <p className="text-sm text-gray-600">{standard.description}</p>
                        </div>
                      ))}
                    </div>
                  </section>
                )
              })}
            </div>

            <div className="mt-8 pt-6 border-t border-gray-200">
              <h3 className="text-lg font-semibold mb-3">Important Notes</h3>
              <ul className="space-y-2 text-sm text-gray-700 list-disc list-inside">
                <li>This is a quick reference guide only. Always refer to the complete ASTM standard documents for detailed procedures.</li>
                <li>ASTM standards are regularly updated. Verify you are using the most current version.</li>
                <li>Standards can be purchased from ASTM International (www.astm.org).</li>
                <li>Many organizations maintain subscriptions to ASTM standards for their laboratories.</li>
                <li>Some standards may have specific material or application limitations.</li>
                <li>Always follow safety guidelines when performing procedures described in standards.</li>
              </ul>
            </div>
          </div>

          <div className="mt-8 bg-primary-50 border-l-4 border-primary-600 p-6 rounded">
            <h3 className="text-lg font-semibold mb-3">Need More Help?</h3>
            <p className="text-gray-700 text-sm mb-4">
              Check out our comprehensive guides for detailed information on metallographic procedures.
            </p>
            <Link href="/guides" className="text-primary-600 font-semibold hover:underline">
              Browse Guides →
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
}

