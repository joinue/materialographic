import type { EquipmentWithDetails } from './supabase'
import { getEquipmentImageUrl } from './storage'

export function generateProductSchema(
  equipment: EquipmentWithDetails,
  category: string,
  subcategory: string
) {
  const productUrl = `https://materialographic.com/equipment/${category}/${subcategory}/${equipment.slug || equipment.item_id?.toLowerCase()}`
  
  // Get all images
  const images: string[] = []
  if (equipment.image_url) {
    const imageUrl = getEquipmentImageUrl(equipment.image_url)
    if (imageUrl) {
      images.push(imageUrl)
    }
  }
  if (equipment.images && Array.isArray(equipment.images)) {
    equipment.images.forEach((img: any) => {
      if (img?.url) {
        const imgUrl = getEquipmentImageUrl(img.url)
        if (imgUrl && !images.includes(imgUrl)) {
          images.push(imgUrl)
        }
      }
    })
  }

  // Extract specifications based on category
  const specifications: Array<{ name: string; value: string }> = []

  // Grinding & Polishing specifications
  if (equipment.grinding_polishing) {
    const gp = equipment.grinding_polishing
    if (gp.wheel_size_inches && gp.wheel_size_inches.length > 0) {
      specifications.push({
        name: 'Wheel Size',
        value: `${gp.wheel_size_inches.join('", ')}"`
      })
    }
    if (gp.platen_material) {
      specifications.push({
        name: 'Platen Material',
        value: gp.platen_material.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase())
      })
    }
    if (gp.number_of_stations) {
      specifications.push({
        name: 'Number of Stations',
        value: gp.number_of_stations.toString()
      })
    }
    if (gp.automation_level) {
      specifications.push({
        name: 'Automation Level',
        value: gp.automation_level.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase())
      })
    }
    if (gp.speed_range_rpm) {
      specifications.push({
        name: 'Speed Range',
        value: `${gp.speed_range_rpm} RPM`
      })
    }
    if (gp.motor_power_watts) {
      specifications.push({
        name: 'Motor Power',
        value: `${gp.motor_power_watts} W`
      })
    }
    if (gp.weight_kg) {
      specifications.push({
        name: 'Weight',
        value: `${gp.weight_kg} kg`
      })
    }
  }

  // Sectioning specifications
  if (equipment.sectioning) {
    const sec = equipment.sectioning
    if (sec.blade_size_inches) {
      specifications.push({
        name: 'Blade Size',
        value: `${sec.blade_size_inches}"`
      })
    }
    if (sec.max_cutting_capacity_inches) {
      specifications.push({
        name: 'Max Cutting Capacity',
        value: `${sec.max_cutting_capacity_inches}"`
      })
    }
    if (sec.automation_level) {
      specifications.push({
        name: 'Automation Level',
        value: sec.automation_level.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase())
      })
    }
    if (sec.motor_power_watts) {
      specifications.push({
        name: 'Motor Power',
        value: `${sec.motor_power_watts} W`
      })
    }
  }

  // Mounting specifications
  if (equipment.mounting) {
    const mount = equipment.mounting
    if (mount.max_pressure_psi) {
      specifications.push({
        name: 'Max Pressure',
        value: `${mount.max_pressure_psi} PSI`
      })
    }
    if (mount.max_temperature_celsius) {
      specifications.push({
        name: 'Max Temperature',
        value: `${mount.max_temperature_celsius}°C`
      })
    }
    if (mount.mounting_type) {
      specifications.push({
        name: 'Mounting Type',
        value: mount.mounting_type.replace(/-/g, ' ').replace(/\b\w/g, l => l.toUpperCase())
      })
    }
  }

  // Microscopy specifications
  if (equipment.microscopy) {
    const mic = equipment.microscopy
    if (mic.magnification_range) {
      specifications.push({
        name: 'Magnification Range',
        value: mic.magnification_range
      })
    }
    if (mic.objective_lenses) {
      specifications.push({
        name: 'Objective Lens Types',
        value: Array.isArray(mic.objective_lenses) 
          ? mic.objective_lenses.join(', ')
          : mic.objective_lenses
      })
    }
  }

  // Hardness Testing specifications
  if (equipment.hardness_testing) {
    const ht = equipment.hardness_testing
    if (ht.test_methods) {
      specifications.push({
        name: 'Test Types',
        value: Array.isArray(ht.test_methods)
          ? ht.test_methods.join(', ')
          : ht.test_methods
      })
    }
    if (ht.load_range_kgf && ht.load_range_kgf.length > 0) {
      specifications.push({
        name: 'Load Range',
        value: `${ht.load_range_kgf[0]} - ${ht.load_range_kgf[ht.load_range_kgf.length - 1]} kgf`
      })
    }
  }

  const categoryLabels: Record<string, string> = {
    'sectioning': 'Sectioning Equipment',
    'mounting': 'Mounting Equipment',
    'grinding-polishing': 'Grinding & Polishing Equipment',
    'microscopy': 'Microscopy Equipment',
    'hardness-testing': 'Hardness Testing Equipment',
    'lab-furniture': 'Lab Furniture',
  }

  const categoryLabel = categoryLabels[category] || 'Metallographic Equipment'

  return {
    '@context': 'https://schema.org',
    '@type': 'Product',
    name: equipment.name,
    description: equipment.description || `${equipment.name} - ${categoryLabel} for metallographic sample preparation`,
    image: images.length > 0 ? images : undefined,
    brand: {
      '@type': 'Brand',
      name: 'PACE Technologies',
    },
    manufacturer: {
      '@type': 'Organization',
      name: 'PACE Technologies',
      url: 'https://metallographic.com',
    },
    model: equipment.item_id || equipment.name,
    sku: equipment.item_id,
    category: categoryLabel,
    offers: {
      '@type': 'Offer',
      availability: 'https://schema.org/InStock',
      priceCurrency: 'USD',
      url: productUrl,
      seller: {
        '@type': 'Organization',
        name: 'PACE Technologies',
        url: 'https://metallographic.com',
      },
    },
    ...(specifications.length > 0 && {
      additionalProperty: specifications.map(spec => ({
        '@type': 'PropertyValue',
        name: spec.name,
        value: spec.value,
      })),
    }),
  }
}

