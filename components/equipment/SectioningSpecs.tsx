import type { EquipmentSectioning } from '@/lib/supabase'

interface SectioningSpecsProps {
  specs: EquipmentSectioning | null | undefined
}

export default function SectioningSpecs({ specs }: SectioningSpecsProps) {
  if (!specs) return null

  const hasAnySpec = 
    specs.blade_size_mm || specs.blade_size_inches || specs.blade_type ||
    specs.max_cutting_capacity_mm || specs.max_cutting_capacity_inches ||
    specs.automation_level || specs.cutting_speed_rpm || specs.feed_rate_mm_per_min ||
    specs.cooling_system || specs.sample_holder_type || specs.precision_level ||
    specs.motor_power_watts || specs.weight_kg || specs.dimensions_mm

  if (!hasAnySpec) return null

  return (
    <div className="border-t border-gray-200 pt-6">
      <h2 className="text-lg font-semibold text-gray-900 mb-4">Technical Specifications</h2>
      <dl className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {/* Blade Specifications */}
        {specs.blade_size_mm && (
          <>
            <dt className="text-sm text-gray-600">Blade Size (mm)</dt>
            <dd className="text-sm text-gray-900">{specs.blade_size_mm}mm</dd>
          </>
        )}
        {specs.blade_size_inches && (
          <>
            <dt className="text-sm text-gray-600">Blade Size (inches)</dt>
            <dd className="text-sm text-gray-900">{specs.blade_size_inches}"</dd>
          </>
        )}
        {specs.blade_type && (
          <>
            <dt className="text-sm text-gray-600">Blade Type</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.blade_type.replace(/-/g, ' ')}</dd>
          </>
        )}

        {/* Cutting Capacity */}
        {specs.max_cutting_capacity_mm && (
          <>
            <dt className="text-sm text-gray-600">Max Cutting Capacity (mm)</dt>
            <dd className="text-sm text-gray-900">{specs.max_cutting_capacity_mm}mm</dd>
          </>
        )}
        {specs.max_cutting_capacity_inches && (
          <>
            <dt className="text-sm text-gray-600">Max Cutting Capacity (inches)</dt>
            <dd className="text-sm text-gray-900">{specs.max_cutting_capacity_inches}"</dd>
          </>
        )}

        {/* Automation & Performance */}
        {specs.automation_level && (
          <>
            <dt className="text-sm text-gray-600">Automation Level</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.automation_level.replace(/-/g, ' ')}</dd>
          </>
        )}
        {specs.cutting_speed_rpm && (
          <>
            <dt className="text-sm text-gray-600">Cutting Speed</dt>
            <dd className="text-sm text-gray-900">{specs.cutting_speed_rpm} RPM</dd>
          </>
        )}
        {specs.feed_rate_mm_per_min && (
          <>
            <dt className="text-sm text-gray-600">Feed Rate</dt>
            <dd className="text-sm text-gray-900">{specs.feed_rate_mm_per_min} mm/min</dd>
          </>
        )}

        {/* Features */}
        {specs.cooling_system && (
          <>
            <dt className="text-sm text-gray-600">Cooling System</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.cooling_system}</dd>
          </>
        )}
        {specs.sample_holder_type && (
          <>
            <dt className="text-sm text-gray-600">Sample Holder</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.sample_holder_type}</dd>
          </>
        )}
        {specs.precision_level && (
          <>
            <dt className="text-sm text-gray-600">Precision Level</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.precision_level.replace(/-/g, ' ')}</dd>
          </>
        )}

        {/* Additional Specifications */}
        {specs.motor_power_watts && (
          <>
            <dt className="text-sm text-gray-600">Motor Power</dt>
            <dd className="text-sm text-gray-900">{specs.motor_power_watts} W</dd>
          </>
        )}
        {specs.weight_kg && (
          <>
            <dt className="text-sm text-gray-600">Weight</dt>
            <dd className="text-sm text-gray-900">{specs.weight_kg} kg</dd>
          </>
        )}
        {specs.dimensions_mm && (
          <>
            <dt className="text-sm text-gray-600">Dimensions</dt>
            <dd className="text-sm text-gray-900">
              {specs.dimensions_mm.width && `${specs.dimensions_mm.width} × `}
              {specs.dimensions_mm.height && `${specs.dimensions_mm.height} × `}
              {specs.dimensions_mm.depth && `${specs.dimensions_mm.depth}`}
              {specs.dimensions_mm.width || specs.dimensions_mm.height || specs.dimensions_mm.depth ? ' mm' : 'N/A'}
            </dd>
          </>
        )}
      </dl>
    </div>
  )
}

