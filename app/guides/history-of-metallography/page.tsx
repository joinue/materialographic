import { Metadata } from 'next'
import Image from 'next/image'
import GuideSideNav from '@/components/GuideSideNav'
import Link from 'next/link'

export const metadata: Metadata = {
  title: 'History of Metallography Guide | Metallography.org',
  description: 'Explore the evolution of metallography from its origins to modern techniques. Understand how the field has developed over time.',
}

const sections = [
  { id: 'introduction', label: 'Introduction' },
  { id: 'ancient-foundations', label: 'Ancient Foundations (pre-1800s)' },
  { id: 'birth-of-metallography', label: 'Birth of Metallography (1800–1860)' },
  { id: 'industrial-revolution', label: 'Industrial Revolution & Scientific Expansion (1860–1930)' },
  { id: 'electron-microscopy', label: 'Electron Microscopy Era (1930–1970)' },
  { id: 'digital-analytical', label: 'Digital and Analytical Metallography (1970–Present)' },
  { id: 'resources', label: 'Recommended Resources' },
]

export default function HistoryOfMetallographyGuide() {
  return (
    <article className="py-12">
      <GuideSideNav sections={sections} />
      <div className="container-custom lg:pl-0 xl:pl-0">
        <div className="max-w-4xl mx-auto lg:max-w-4xl xl:max-w-[1024px]">
          {/* Breadcrumb */}
          <nav className="text-sm text-gray-600 mb-6">
            <Link href="/">Home</Link> / <Link href="/guides">Guides</Link> / History of Metallography
          </nav>

          {/* Header */}
          <header className="mb-8">
            <span className="text-sm font-semibold text-primary-600 uppercase tracking-wide mb-2 block">
              Basics Guide
            </span>
            <h1 className="text-4xl font-bold mb-4">History of Metallography</h1>
            <p className="text-xl text-gray-600">
              Explore the evolution of metallography from its origins to modern techniques. Understand how 
              the field has developed over time and the key innovations that shaped metallographic analysis.
            </p>
          </header>

          {/* Table of Contents - Mobile/Tablet (below lg/1024px) */}
          <div className="lg:hidden bg-gray-50 border-l-4 border-primary-600 p-6 mb-8 rounded">
            <h2 className="text-xl font-semibold mb-4">Table of Contents</h2>
            <ul className="space-y-2">
              <li><a href="#introduction" className="text-primary-600 hover:underline">Introduction</a></li>
              <li><a href="#ancient-foundations" className="text-primary-600 hover:underline">Ancient Foundations (pre-1800s)</a></li>
              <li><a href="#birth-of-metallography" className="text-primary-600 hover:underline">Birth of Metallography (1800–1860)</a></li>
              <li><a href="#industrial-revolution" className="text-primary-600 hover:underline">Industrial Revolution & Scientific Expansion (1860–1930)</a></li>
              <li><a href="#electron-microscopy" className="text-primary-600 hover:underline">Electron Microscopy Era (1930–1970)</a></li>
              <li><a href="#digital-analytical" className="text-primary-600 hover:underline">Digital and Analytical Metallography (1970–Present)</a></li>
              <li><a href="#resources" className="text-primary-600 hover:underline">Recommended Resources</a></li>
            </ul>
          </div>

          {/* Content */}
          <div className="prose prose-lg max-w-none">
            <section id="introduction" className="scroll-mt-24">
              <h2>Introduction</h2>
              <p>
                Metallography, the study of the microstructure of metals and alloys, has evolved over 
                thousands of years—shaped by human curiosity, industrial needs, and advances in microscopy. 
                From early empirical observations to today's sophisticated analytical techniques, the field 
                has continuously evolved to provide deeper insights into material properties and behavior.
              </p>
              <div className="my-6 rounded-lg overflow-hidden max-w-2xl mx-auto">
                <Image
                  src="/images/microstructures/Pearlite-ferrite.JPG"
                  alt="Example microstructure showing the beauty and complexity revealed through metallography"
                  width={600}
                  height={450}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">Pearlite and ferrite microstructure - the type of structures that metallography reveals and helps us understand</p>
              </div>
              <p>
                Understanding the history of metallography helps us appreciate the techniques we use today 
                and provides context for why certain methods became standard practice. This guide traces 
                the key milestones in metallographic development, from ancient metalworking to modern 
                automated analysis systems.
              </p>
            </section>

            <section id="ancient-foundations" className="scroll-mt-24">
              <h2>Ancient Foundations (pre-1800s)</h2>
              <p>
                Early civilizations such as the Egyptians, Chinese, and Mesopotamians used metals extensively 
                and developed heat-treating techniques intuitively. Although they did not have microscopes, 
                they recognized that processing affected properties such as hardness, brittleness, and ductility.
              </p>
              <div className="my-6 rounded-lg overflow-hidden max-w-2xl mx-auto">
                <Image
                  src="/images/microstructures/Gray iron, 2%25 nital, 400X.JPG"
                  alt="Gray iron microstructure - the type of material ancient metalworkers worked with"
                  width={600}
                  height={450}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">Gray iron microstructure - ancient metalworkers worked with similar materials, though they couldn't see these structures</p>
              </div>
              <p>
                These empirical observations laid the groundwork for later scientific study. Ancient 
                metalworkers learned through trial and error that:
              </p>
              <ul>
                <li>Heating and cooling rates affected metal properties</li>
                <li>Different metal compositions produced different behaviors</li>
                <li>Mechanical working (forging, hammering) could alter material characteristics</li>
                <li>Quenching in various media produced different results</li>
              </ul>
              <p>
                While these early practitioners lacked the tools to see microstructures, their understanding 
                of the relationship between processing and properties was remarkably sophisticated and 
                formed the foundation for modern metallurgical science.
              </p>
            </section>

            <section id="birth-of-metallography" className="scroll-mt-24">
              <h2>Birth of Metallography (1800–1860)</h2>
              <p>
                The invention of the optical microscope in the 17th century made metal microstructure visible, 
                but polishing and etching methods were still primitive. The true birth of metallography as 
                a scientific discipline came in the mid-19th century.
              </p>
              
              <h3>Henry Clifton Sorby: The Father of Metallography</h3>
              <div className="my-6 rounded-lg overflow-hidden max-w-md mx-auto">
                <Image
                  src="/images/sorby.jpg"
                  alt="Henry Clifton Sorby, the Father of Metallography"
                  width={400}
                  height={500}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">Henry Clifton Sorby (1826–1908), considered the "Father of Metallography"</p>
              </div>
              <p>
                <strong>Henry Clifton Sorby (1826–1908)</strong> is considered the "Father of Metallography." 
                In the mid-1800s, Sorby developed reliable mechanical polishing and chemical etching techniques 
                that revolutionized the field.
              </p>
              
              <div className="bg-blue-50 border-l-4 border-blue-600 p-4 my-6 rounded">
                <p className="text-sm text-gray-700">
                  <strong>Key Achievement:</strong> Sorby published the first micrographs showing pearlite, 
                  ferrite, and other structures in steel. His work proved that microstructure governs 
                  mechanical properties, establishing the fundamental principle that still guides 
                  metallographic analysis today.
                </p>
              </div>

              <p>
                Sorby's contributions included:
              </p>
              <ul>
                <li>Development of systematic sample preparation methods</li>
                <li>Creation of techniques for examining metal specimens under reflected light</li>
                <li>First detailed observations of steel microstructures (pearlite, ferrite)</li>
                <li>Establishment of the connection between microstructure and mechanical properties</li>
              </ul>
              
              <p>
                His techniques laid the foundation for all modern metallographic practices, and the 
                fundamental principles he established remain relevant today.
              </p>
            </section>

            <section id="industrial-revolution" className="scroll-mt-24">
              <h2>Industrial Revolution & Scientific Expansion (1860–1930)</h2>
              <p>
                The rapid development of steelmaking processes (Bessemer, Siemens-Martin) during the 
                Industrial Revolution increased demand for metallurgical science and drove significant 
                advances in metallography.
              </p>

              <h3>Key Researchers and Contributions</h3>
              <p>
                Researchers such as <strong>Osmond</strong>, <strong>Howe</strong>, <strong>Tschernoff</strong>, 
                and <strong>Bain</strong> refined understanding of phase transformations in metals. Their work 
                helped explain how different heat treatments produced different microstructures and properties.
              </p>

              <h3>Phase Diagrams and Predictive Power</h3>
              <div className="my-6 rounded-lg overflow-hidden max-w-md mx-auto">
                <Image
                  src="/images/hume-rothery.jpeg"
                  alt="Hume-Rothery, pioneer in phase diagram development"
                  width={400}
                  height={500}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">Hume-Rothery, key contributor to metallurgical phase diagrams</p>
              </div>
              <p>
                Advances in metallurgical phase diagrams, notably by <strong>Hume-Rothery</strong> and 
                <strong>Guillet</strong>, provided predictive power. These diagrams allowed metallographers to:
              </p>
              <ul>
                <li>Predict phase formation at different temperatures and compositions</li>
                <li>Understand equilibrium and non-equilibrium transformations</li>
                <li>Design heat treatments to achieve desired microstructures</li>
                <li>Explain the relationship between composition, processing, and properties</li>
              </ul>

              <h3>Documentation and Teaching</h3>
              <p>
                The introduction of <strong>photomicrography</strong> allowed documentation and teaching of 
                microstructures. This development was crucial for:
              </p>
              <ul>
                <li>Sharing knowledge across laboratories and countries</li>
                <li>Creating reference collections of microstructures</li>
                <li>Teaching metallography to new generations</li>
                <li>Standardizing terminology and classification</li>
              </ul>
              <div className="my-6 rounded-lg overflow-hidden max-w-2xl mx-auto">
                <Image
                  src="/images/microstructures/Ferrite-Pearlite steel.JPG"
                  alt="Example of early photomicrography showing ferrite and pearlite in steel"
                  width={600}
                  height={450}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">Example microstructure showing ferrite and pearlite in steel - the type of structures that early metallographers like Sorby first documented</p>
              </div>

              <h3>Standardization and ASTM Committee E-4</h3>
              <p>
                The need for standardized methods led to the formation of <strong>ASTM Committee E-4 on Metallography</strong> 
                in 1916 (initially as "Committee E-4 on Magnification Scales for Micrographs," renamed in 1920). This committee, 
                organized by <strong>Edgar Marburg</strong> with founding members including <strong>Dr. Henry Marion Howe</strong> 
                (first ASTM president) and <strong>George Kimball Burgess</strong> (Director of the National Bureau of Standards), 
                began developing standards that would shape the field. The first standard, E 2 (Methods for Preparation of 
                Micrographs of Metals and Alloys), was introduced in 1917, establishing foundational practices that continue 
                to guide metallography today.
              </p>

              <p>
                By the end of this period, metallography had become an established scientific discipline 
                with standardized methods, theoretical foundations, and practical applications in industry.
              </p>
            </section>

            <section id="electron-microscopy" className="scroll-mt-24">
              <h2>Electron Microscopy Era (1930–1970)</h2>
              <p>
                The development of the transmission electron microscope (TEM) and later the scanning 
                electron microscope (SEM) revolutionized metallography, enabling observation of structures 
                at previously unimaginable scales.
              </p>

              <h3>Transmission Electron Microscopy (TEM)</h3>
              <ul>
                <li><strong>1931:</strong> First TEM developed by <strong>Ernst Ruska</strong> and 
                <strong>Max Knoll</strong></li>
                <li><strong>1940s-1950s:</strong> TEM became commercially available, enabling observation 
                of dislocations, fine precipitates, and nanoscale structures</li>
                <li>Scientists could now see defects and microstructural features that were impossible to 
                observe with optical microscopes</li>
              </ul>
              <div className="my-6 rounded-lg overflow-hidden max-w-2xl mx-auto">
                <Image
                  src="/images/microstructures/SiAlON, KOH molten salt etch, 20,000X (SEM).JPG"
                  alt="High magnification SEM image showing the capabilities of electron microscopy"
                  width={600}
                  height={450}
                  className="w-full h-auto"
                />
                <p className="text-sm text-gray-600 mt-2 italic text-center">SEM image at 20,000X magnification - demonstrating the resolution capabilities that electron microscopy brought to metallography</p>
              </div>

              <h3>Scanning Electron Microscopy (SEM)</h3>
              <ul>
                <li><strong>1965:</strong> First commercial SEM introduced, providing three-dimensional 
                imaging capabilities</li>
                <li>SEM offered superior depth of field compared to optical microscopes</li>
                <li>Enabled detailed examination of fracture surfaces and complex microstructures</li>
              </ul>

              <h3>Impact on Industry</h3>
              <p>
                Metallography became essential for aerospace, automotive, nuclear, and defense industries. 
                The ability to see dislocations, grain boundaries, and nanoscale defects transformed:
              </p>
              <ul>
                <li>Materials development and optimization</li>
                <li>Failure analysis and quality control</li>
                <li>Understanding of material behavior under various conditions</li>
                <li>Design of new alloys and heat treatments</li>
              </ul>

              <p>
                These developments allowed metallographers to study materials at the nanoscale, revealing 
                structures and defects that fundamentally changed our understanding of material behavior.
              </p>
            </section>

            <section id="digital-analytical" className="scroll-mt-24">
              <h2>Digital and Analytical Metallography (1970–Present)</h2>
              <p>
                The latter half of the 20th century and early 21st century brought significant advances 
                in automation, digital imaging, and analytical techniques. Major advancements include:
              </p>

              <h3>Computer-Aided Analysis</h3>
              <ul>
                <li><strong>Computer-aided image analysis</strong> and automated grain size measurement</li>
                <li>Digital cameras replacing film photography (1980s)</li>
                <li>Image analysis software for automated phase quantification (1990s)</li>
                <li>High-resolution digital imaging systems with improved dynamic range (2000s)</li>
              </ul>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 my-6 max-w-2xl mx-auto">
                <div className="rounded-lg overflow-hidden">
                  <Image
                    src="/images/microstructures/431 Stainless steel, Kallings no. 2, 400X.JPG"
                    alt="Modern digital metallographic image of stainless steel"
                    width={300}
                    height={225}
                    className="w-full h-auto"
                  />
                  <p className="text-xs text-gray-600 mt-2 italic text-center">Modern digital imaging enables precise microstructure documentation</p>
                </div>
                <div className="rounded-lg overflow-hidden">
                  <Image
                    src="/images/microstructures/Nodular cast iron, 2%25 nital, 400X (DIC).JPG"
                    alt="DIC microscopy image showing advanced imaging techniques"
                    width={300}
                    height={225}
                    className="w-full h-auto"
                  />
                  <p className="text-xs text-gray-600 mt-2 italic text-center">Differential interference contrast (DIC) provides enhanced detail</p>
                </div>
              </div>

              <h3>Advanced Analytical Techniques</h3>
              <ul>
                <li><strong>EBSD (Electron Backscatter Diffraction)</strong> for crystallographic mapping</li>
                <li><strong>EDS/WDS microanalysis</strong>, combining chemistry with microstructure</li>
                <li><strong>High-resolution SEM</strong> and <strong>FIB (Focused Ion Beam)</strong> for 
                3D microstructural reconstruction</li>
                <li><strong>Automated hardness mapping</strong> and micro-mechanical testing</li>
                <li><strong>X-ray Computed Tomography</strong> for non-destructive 3D imaging</li>
                <li><strong>Atomic Force Microscopy (AFM)</strong> for surface topography at nanometer resolution</li>
              </ul>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 my-6">
                <div className="rounded-lg overflow-hidden">
                  <Link 
                    href="https://metallographic.com/metallographic-equipment/microscopy/metallurgical-microscopes.html"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="block hover:opacity-90 transition-opacity"
                  >
                    <Image
                      src="/images/equipment/microscopy/metallurgical microscopes/im-5000/im-5000-cover.webp"
                      alt="Modern metallurgical microscope"
                      width={300}
                      height={225}
                      className="w-full h-auto"
                    />
                  </Link>
                  <p className="text-xs text-gray-600 mt-2 italic text-center">Modern metallurgical microscopes with digital imaging capabilities</p>
                </div>
                <div className="rounded-lg overflow-hidden">
                  <Link 
                    href="https://metallographic.com/metallographic-equipment/grinding-polishing.html"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="block hover:opacity-90 transition-opacity"
                  >
                    <Image
                      src="/images/equipment/grinding & polishing/manual grinder polishers/nano-1000s/nano-1000s-cover.webp"
                      alt="Automated grinding and polishing equipment"
                      width={300}
                      height={225}
                      className="w-full h-auto"
                    />
                  </Link>
                  <p className="text-xs text-gray-600 mt-2 italic text-center">Automated grinding and polishing systems for consistent preparation</p>
                </div>
              </div>

              <h3>Automation and Standardization</h3>
              <ul>
                <li>Automated grinding and polishing equipment (1960s-1970s)</li>
                <li>Standardized preparation procedures for different material classes (1980s)</li>
                <li>Computer-controlled preparation systems with programmable parameters (1990s)</li>
                <li>Advanced mounting materials and techniques for challenging samples (2000s)</li>
                <li>Machine learning and artificial intelligence for automated microstructure classification (2010s)</li>
              </ul>

              <h3>Current State</h3>
              <p>
                Today, metallography is a cornerstone of materials engineering, failure analysis, quality 
                control, and research. Modern laboratories combine traditional techniques with cutting-edge 
                technology to provide comprehensive material characterization.
              </p>

              <div className="bg-gray-50 border-l-4 border-primary-600 p-6 my-6 rounded">
                <h3 className="text-lg font-semibold mb-2">The Enduring Value of Fundamentals</h3>
                <p className="text-sm text-gray-700">
                  Despite all the technological advances, the fundamental principles established by early 
                  metallographers like Sorby remain relevant today. Proper sample preparation, careful 
                  observation, and systematic analysis are as important now as they were over a century 
                  ago. Modern technology enhances our capabilities, but it doesn't replace the need for 
                  understanding the basics of metallographic practice.
                </p>
              </div>
            </section>

            <section id="resources" className="scroll-mt-24">
              <h2>Recommended Resources to Learn Metallography</h2>
              <p>
                Below are the best options depending on your preferred learning style. These resources 
                provide comprehensive coverage of metallographic principles, techniques, and applications.
              </p>

              <h3>Textbooks (Highly Recommended)</h3>
              
              <div className="space-y-4 my-6">
                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">📘 ASM Handbook – Volume 9: Metallography and Microstructures</h4>
                  <p className="text-gray-700 mb-2">
                    Gold standard reference in the field. Covers preparation, etching, microstructures of 
                    all major alloys, digital imaging, SEM/TEM, failures, and more. Ideal for both 
                    beginners and professionals.
                  </p>
                  <a 
                    href="https://www.asminternational.org" 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:text-primary-700 font-semibold text-sm"
                  >
                    Visit ASM International →
                  </a>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">📘 George F. Vander Voort – "Metallography: Principles and Practice"</h4>
                  <p className="text-gray-700 mb-2">
                    One of the clearest and most practical textbooks. Extremely thorough preparation 
                    guidelines and excellent microstructure images.
                  </p>
                  <a 
                    href="https://www.asminternational.org" 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:text-primary-700 font-semibold text-sm"
                  >
                    Find at ASM International →
                  </a>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">📘 Samuels – "Metallographic Polishing by Mechanical Methods"</h4>
                  <p className="text-gray-700 mb-2">
                    Classic reference on grinding, polishing, and sample preparation. Essential reading 
                    for understanding mechanical preparation techniques.
                  </p>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">📘 "Practical Metallography" by Petzow</h4>
                  <p className="text-gray-700 mb-2">
                    Deep dive into etching, microstructure interpretation, and metal-specific preparation. 
                    Excellent for advanced practitioners.
                  </p>
                </div>
              </div>

              <h3>Professional Organizations</h3>
              
              <div className="space-y-4 my-6">
                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">ASM International</h4>
                  <p className="text-gray-700 mb-2">
                    Courses, webinars, certifications, technical books. Offers live and online classes 
                    in metallography and failure analysis.
                  </p>
                  <a 
                    href="https://www.asminternational.org" 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:text-primary-700 font-semibold text-sm"
                  >
                    Visit ASM International →
                  </a>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">International Metallographic Society (IMS)</h4>
                  <p className="text-gray-700 mb-2">
                    Conference proceedings, competitions, and best-practice methods. Good for staying 
                    current with modern techniques.
                  </p>
                  <a 
                    href="https://www.internationalmetallographicsociety.org" 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:text-primary-700 font-semibold text-sm"
                  >
                    Visit IMS →
                  </a>
                </div>
              </div>

              <h3>Online Resources (Free or Low-Cost)</h3>
              
              <div className="space-y-4 my-6">
                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">Metallurgical Textbook Archives</h4>
                  <p className="text-gray-700 mb-2">
                    Many older—but still valuable—texts are public domain:
                  </p>
                  <ul className="list-disc list-inside text-gray-700 text-sm space-y-1 mb-2">
                    <li>Howe & Campbell – Metallography (early 1900s)</li>
                    <li>Osmond – Microscopic Examination of Iron and Steel</li>
                  </ul>
                  <p className="text-gray-600 text-sm">
                    Search for these in public domain archives and university libraries.
                  </p>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">YouTube Channels</h4>
                  <ul className="list-disc list-inside text-gray-700 text-sm space-y-1">
                    <li>ASM International</li>
                    <li>Materials Science Lecture Series</li>
                    <li>University channels (MIT, Georgia Tech, etc.)</li>
                  </ul>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">Metallography Websites</h4>
                  <p className="text-gray-700 mb-2">
                    Leading equipment and consumable suppliers offer excellent guides, videos, and 
                    application notes:
                  </p>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-2 text-sm">
                    <a 
                      href="https://www.buehler.com" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700"
                    >
                      Buehler →
                    </a>
                    <a 
                      href="https://www.struers.com" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700"
                    >
                      Struers →
                    </a>
                    <a 
                      href="https://metallographic.com" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700"
                    >
                      PACE Technologies →
                    </a>
                    <a 
                      href="https://www.qatm.com" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700"
                    >
                      QATM →
                    </a>
                  </div>
                </div>
              </div>

              <h3>Courses (Online Learning)</h3>
              
              <div className="space-y-4 my-6">
                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">Coursera / edX</h4>
                  <p className="text-gray-700 mb-2">
                    Materials Science courses covering microstructures, phase diagrams, and microscopy. 
                    Many courses are free to audit.
                  </p>
                  <div className="flex gap-4 text-sm">
                    <a 
                      href="https://www.coursera.org" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700 font-semibold"
                    >
                      Visit Coursera →
                    </a>
                    <a 
                      href="https://www.edx.org" 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-primary-600 hover:text-primary-700 font-semibold"
                    >
                      Visit edX →
                    </a>
                  </div>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4">
                  <h4 className="font-semibold text-lg mb-2">ASM Online Metallography Courses</h4>
                  <p className="text-gray-700 mb-2">
                    Hands-on advice for sample prep, imaging, and interpretation. Professional-level 
                    training with certification options.
                  </p>
                  <a 
                    href="https://www.asminternational.org/training" 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-primary-600 hover:text-primary-700 font-semibold text-sm"
                  >
                    View ASM Courses →
                  </a>
                </div>
              </div>

              <div className="bg-primary-50 border-l-4 border-primary-600 p-6 my-8 rounded">
                <h3 className="text-lg font-semibold mb-2">Getting Started</h3>
                <p className="text-sm text-gray-700">
                  For beginners, we recommend starting with the ASM Handbook Volume 9 or Vander Voort's 
                  textbook, combined with hands-on practice. Supplement your learning with online resources 
                  and consider taking a formal course if you're pursuing metallography professionally. 
                  The combination of theoretical knowledge and practical experience is essential for 
                  mastering metallographic techniques.
                </p>
              </div>
            </section>

            {/* Related Guides */}
            <div className="mt-12 pt-8 border-t border-gray-200">
              <h2 className="text-2xl font-semibold mb-4">Related Guides</h2>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <Link href="/guides/introduction-to-metallography" className="text-primary-600 hover:underline font-semibold">
                  → Introduction to Metallography
                </Link>
                <Link href="/guides/purpose-and-applications" className="text-primary-600 hover:underline font-semibold">
                  → Purpose and Applications
                </Link>
                <Link href="/guides/sectioning" className="text-primary-600 hover:underline font-semibold">
                  → Sectioning Techniques
                </Link>
                <Link href="/guides/grinding-techniques" className="text-primary-600 hover:underline font-semibold">
                  → Grinding Techniques
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </article>
  )
}

