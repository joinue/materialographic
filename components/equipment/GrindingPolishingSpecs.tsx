import type { EquipmentGrindingPolishing } from '@/lib/supabase'

interface GrindingPolishingSpecsProps {
  specs: EquipmentGrindingPolishing | null | undefined
}

export default function GrindingPolishingSpecs({ specs }: GrindingPolishingSpecsProps) {
  if (!specs) return null

  const hasAnySpec = 
    specs.wheel_size_inches || specs.platen_material || specs.number_of_stations ||
    specs.automation_level || specs.speed_range_rpm || specs.force_range_n ||
    specs.programmable_force || specs.cooling_system || specs.sample_holder_type ||
    specs.controlled_removal || specs.motor_power_watts || specs.weight_kg || specs.dimensions_mm

  if (!hasAnySpec) return null

  return (
    <div className="border-t border-gray-200 pt-6">
      <h2 className="text-lg font-semibold text-gray-900 mb-4">Technical Specifications</h2>
      <dl className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {/* Wheel/Platen Specifications */}
        {specs.wheel_size_inches && specs.wheel_size_inches.length > 0 && (
          <>
            <dt className="text-sm text-gray-600">Wheel Size</dt>
            <dd className="text-sm text-gray-900">{specs.wheel_size_inches.join('", ')}"</dd>
          </>
        )}
        {specs.platen_material && (
          <>
            <dt className="text-sm text-gray-600">Platen Material</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.platen_material.replace(/-/g, ' ')}</dd>
          </>
        )}
        {specs.number_of_stations && (
          <>
            <dt className="text-sm text-gray-600">Number of Stations</dt>
            <dd className="text-sm text-gray-900">{specs.number_of_stations}</dd>
          </>
        )}

        {/* Automation */}
        {specs.automation_level && (
          <>
            <dt className="text-sm text-gray-600">Automation Level</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.automation_level.replace(/-/g, ' ')}</dd>
          </>
        )}

        {/* Speed & Force */}
        {specs.speed_range_rpm && (
          <>
            <dt className="text-sm text-gray-600">Speed Range</dt>
            <dd className="text-sm text-gray-900">{specs.speed_range_rpm} RPM</dd>
          </>
        )}
        {specs.force_range_n && specs.force_range_n.length >= 2 && (
          <>
            <dt className="text-sm text-gray-600">Force Range</dt>
            <dd className="text-sm text-gray-900">
              {specs.force_range_n[0]} - {specs.force_range_n[1]} N
            </dd>
          </>
        )}
        {specs.programmable_force !== null && (
          <>
            <dt className="text-sm text-gray-600">Programmable Force</dt>
            <dd className="text-sm text-gray-900">{specs.programmable_force ? 'Yes' : 'No'}</dd>
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
            <dd className="text-sm text-gray-900 capitalize">{specs.sample_holder_type.replace(/-/g, ' ')}</dd>
          </>
        )}
        {specs.controlled_removal !== null && (
          <>
            <dt className="text-sm text-gray-600">Controlled Removal</dt>
            <dd className="text-sm text-gray-900">{specs.controlled_removal ? 'Yes' : 'No'}</dd>
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

