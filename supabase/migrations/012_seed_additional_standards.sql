-- Seed additional ASTM standards for metallography
INSERT INTO standards (standard, title, description, category, sort_order, tags, organization) VALUES
-- Additional Analysis Standards
('ASTM E1382', 'Standard Test Methods for Determining Average Grain Size Using Semiautomatic and Automatic Image Analysis', 'Test methods for determining average grain size using semiautomatic and automatic image analysis systems. Includes procedures for calibration, measurement, and reporting.', 'Analysis', 21, ARRAY['grain-size', 'image-analysis', 'automatic', 'semiautomatic', 'analysis'], 'ASTM'),
('ASTM E1268', 'Standard Practice for Assessing the Degree of Banding or Orientation of Microstructures', 'Practice for assessing the degree of banding or orientation in microstructures. Includes procedures for measurement and reporting of microstructural directionality.', 'Analysis', 22, ARRAY['banding', 'orientation', 'microstructure', 'analysis'], 'ASTM'),
('ASTM E2283', 'Standard Practice for Extreme Value Analysis of Nonmetallic Inclusions in Steel and Other Microstructural Features', 'Practice for extreme value analysis of nonmetallic inclusions and other microstructural features. Statistical methods for characterizing rare or extreme features.', 'Analysis', 23, ARRAY['inclusions', 'extreme-value', 'statistics', 'analysis'], 'ASTM'),
('ASTM E2142', 'Standard Test Methods for Rating and Classifying Inclusions in Steel Using the Scanning Electron Microscope', 'Test methods for rating and classifying inclusions in steel using scanning electron microscopy. Includes procedures for SEM-based inclusion analysis.', 'Analysis', 24, ARRAY['inclusions', 'sem', 'scanning-electron-microscope', 'steel', 'analysis'], 'ASTM'),
('ASTM E2567', 'Standard Test Method for Determining Nodularity and Nodule Count in Ductile Iron Using Image Analysis', 'Test method for determining nodularity and nodule count in ductile iron using image analysis. Procedures for quantifying graphite nodule characteristics.', 'Analysis', 25, ARRAY['ductile-iron', 'nodularity', 'nodule-count', 'image-analysis', 'graphite'], 'ASTM'),

-- Additional Preparation Standards
('ASTM E1558', 'Standard Guide for Electrolytic Polishing of Metallographic Specimens', 'Guide for electrolytic polishing of metallographic specimens. Includes procedures, equipment requirements, and safety considerations for electrolytic polishing.', 'Preparation', 26, ARRAY['preparation', 'electrolytic-polishing', 'polishing', 'specimen'], 'ASTM'),
('ASTM E2014', 'Standard Guide for Preparation of Plastics and Polymeric Specimens for Microstructural Examination', 'Guide for preparing plastics and polymeric materials for microstructural examination. Covers sectioning, mounting, polishing, and etching techniques.', 'Preparation', 27, ARRAY['preparation', 'plastics', 'polymers', 'specimen'], 'ASTM'),

-- Additional Testing Standards
('ASTM E103', 'Standard Test Method for Rapid Indentation Hardness Testing of Metallic Materials', 'Test method for rapid indentation hardness testing. Procedures for quick hardness measurements using portable or automated systems.', 'Testing', 28, ARRAY['hardness', 'rapid-testing', 'indentation', 'testing'], 'ASTM'),
('ASTM E110', 'Standard Test Method for Rockwell and Brinell Hardness of Metallic Materials by Portable Hardness Testers', 'Test method for Rockwell and Brinell hardness testing using portable hardness testers. Procedures for field and portable hardness measurements.', 'Testing', 29, ARRAY['hardness', 'rockwell', 'brinell', 'portable', 'testing'], 'ASTM'),
('ASTM E448', 'Standard Practice for Scleroscope Hardness Testing of Metallic Materials', 'Practice for scleroscope hardness testing of metallic materials. Procedures for rebound hardness testing using scleroscope instruments.', 'Testing', 30, ARRAY['hardness', 'scleroscope', 'rebound', 'testing'], 'ASTM'),

-- Additional Etching Standards
('ASTM E1077', 'Standard Test Methods for Estimating the Depth of Decarburization of Steel Specimens', 'Test methods for estimating the depth of decarburization in steel specimens. Includes procedures for measurement and reporting of decarburization depth.', 'Etching', 31, ARRAY['decarburization', 'steel', 'etching', 'depth-measurement'], 'ASTM'),
('ASTM E1180', 'Standard Practice for Preparing Sulfur Prints for Macrostructural Examination', 'Practice for preparing sulfur prints for macrostructural examination. Procedures for revealing sulfur distribution in steel and other materials.', 'Etching', 32, ARRAY['sulfur-prints', 'macrostructural', 'etching', 'steel'], 'ASTM'),

-- Additional Documentation Standards
('ASTM E766', 'Standard Practice for Calibrating the Magnification of a Scanning Electron Microscope', 'Practice for calibrating the magnification of scanning electron microscopes. Procedures for ensuring accurate magnification in SEM imaging.', 'Calibration', 33, ARRAY['calibration', 'sem', 'scanning-electron-microscope', 'magnification'], 'ASTM'),
('ASTM E986', 'Standard Practice for Scanning Electron Microscope Beam Size Characterization', 'Practice for characterizing scanning electron microscope beam size. Procedures for measuring and documenting SEM beam characteristics.', 'Calibration', 34, ARRAY['calibration', 'sem', 'beam-size', 'characterization'], 'ASTM'),

-- Additional Reference Standards
('ASTM E1351', 'Standard Terminology Relating to Nondestructive Testing', 'Standard terminology for nondestructive testing methods. Comprehensive definitions of terms used in NDT and metallographic analysis.', 'Reference', 35, ARRAY['terminology', 'nondestructive-testing', 'reference', 'definitions'], 'ASTM'),
('ASTM E1316', 'Standard Terminology for Nondestructive Examinations', 'Standard terminology for nondestructive examinations. Definitions and explanations of terms used in materials testing and examination.', 'Reference', 36, ARRAY['terminology', 'nondestructive-examination', 'reference', 'definitions'], 'ASTM'),

-- ISO Standards (commonly used alongside ASTM)
('ISO 6507', 'Metallic Materials - Vickers Hardness Test', 'International standard for Vickers hardness testing of metallic materials. Test procedures, equipment requirements, and reporting for Vickers hardness measurements.', 'Testing', 37, ARRAY['hardness', 'vickers', 'iso', 'testing'], 'ISO'),
('ISO 6506', 'Metallic Materials - Brinell Hardness Test', 'International standard for Brinell hardness testing of metallic materials. Test procedures, equipment requirements, and reporting for Brinell hardness measurements.', 'Testing', 38, ARRAY['hardness', 'brinell', 'iso', 'testing'], 'ISO'),
('ISO 6508', 'Metallic Materials - Rockwell Hardness Test', 'International standard for Rockwell hardness testing of metallic materials. Test procedures, equipment requirements, and reporting for Rockwell hardness measurements.', 'Testing', 39, ARRAY['hardness', 'rockwell', 'iso', 'testing'], 'ISO'),
('ISO 643', 'Steels - Micrographic Determination of the Apparent Grain Size', 'International standard for micrographic determination of apparent grain size in steels. Procedures for grain size measurement and reporting.', 'Analysis', 40, ARRAY['grain-size', 'steel', 'micrographic', 'iso', 'analysis'], 'ISO'),
('ISO 4967', 'Steel - Determination of Content of Non-metallic Inclusions - Micrographic Method Using Standard Diagrams', 'International standard for determining non-metallic inclusion content in steel using micrographic methods and standard diagrams.', 'Analysis', 41, ARRAY['inclusions', 'steel', 'micrographic', 'iso', 'analysis'], 'ISO')
ON CONFLICT (slug) DO NOTHING;

-- Update slugs for standards that were auto-generated
UPDATE standards SET slug = generate_standard_slug(standard) WHERE slug IS NULL;

