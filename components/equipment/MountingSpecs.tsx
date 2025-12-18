import type { EquipmentMounting } from '@/lib/supabase'

interface MountingSpecsProps {
  specs: EquipmentMounting | null | undefined
}

export default function MountingSpecs({ specs }: MountingSpecsProps) {
  if (!specs) return null

  const hasAnySpec = 
    specs.mounting_type || specs.max_pressure_psi || specs.max_pressure_mpa ||
    specs.pressure_range_psi || specs.max_temperature_celsius || specs.min_temperature_celsius ||
    specs.heating_capability || specs.cooling_capability || specs.chamber_size_mm ||
    specs.max_sample_size_mm || specs.vacuum_level_mbar || specs.vacuum_pump_required ||
    specs.programmable_cycles || specs.digital_controls || specs.safety_features ||
    specs.power_consumption_watts || specs.weight_kg || specs.dimensions_mm

  if (!hasAnySpec) return null

  return (
    <div className="border-t border-gray-200 pt-6">
      <h2 className="text-lg font-semibold text-gray-900 mb-4">Technical Specifications</h2>
      <dl className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {/* Mounting Type */}
        {specs.mounting_type && (
          <>
            <dt className="text-sm text-gray-600">Mounting Type</dt>
            <dd className="text-sm text-gray-900 capitalize">{specs.mounting_type}</dd>
          </>
        )}

        {/* Pressure Specifications */}
        {specs.max_pressure_psi && (
          <>
            <dt className="text-sm text-gray-600">Max Pressure</dt>
            <dd className="text-sm text-gray-900">{specs.max_pressure_psi} PSI</dd>
          </>
        )}
        {specs.max_pressure_mpa && (
          <>
            <dt className="text-sm text-gray-600">Max Pressure</dt>
            <dd className="text-sm text-gray-900">{specs.max_pressure_mpa} MPa</dd>
          </>
        )}
        {specs.pressure_range_psi && (
          <>
            <dt className="text-sm text-gray-600">Pressure Range</dt>
            <dd className="text-sm text-gray-900">{specs.pressure_range_psi} PSI</dd>
          </>
        )}

        {/* Temperature Specifications */}
        {specs.max_temperature_celsius && (
          <>
            <dt className="text-sm text-gray-600">Max Temperature</dt>
            <dd className="text-sm text-gray-900">{specs.max_temperature_celsius}°C</dd>
          </>
        )}
        {specs.min_temperature_celsius && (
          <>
            <dt className="text-sm text-gray-600">Min Temperature</dt>
            <dd className="text-sm text-gray-900">{specs.min_temperature_celsius}°C</dd>
          </>
        )}
        {specs.heating_capability !== null && (
          <>
            <dt className="text-sm text-gray-600">Heating Capability</dt>
            <dd className="text-sm text-gray-900">{specs.heating_capability ? 'Yes' : 'No'}</dd>
          </>
        )}
        {specs.cooling_capability !== null && (
          <>
            <dt className="text-sm text-gray-600">Cooling Capability</dt>
            <dd className="text-sm text-gray-900">{specs.cooling_capability ? 'Yes' : 'No'}</dd>
          </>
        )}

        {/* Chamber Specifications */}
        {specs.chamber_size_mm && (
          <>
            <dt className="text-sm text-gray-600">Chamber Size</dt>
            <dd className="text-sm text-gray-900">
              {specs.chamber_size_mm.width && `${specs.chamber_size_mm.width} × `}
              {specs.chamber_size_mm.height && `${specs.chamber_size_mm.height} × `}
              {specs.chamber_size_mm.depth && `${specs.chamber_size_mm.depth}`}
              {specs.chamber_size_mm.diameter && `${specs.chamber_size_mm.diameter} (diameter) × `}
              {specs.chamber_size_mm.width || specs.chamber_size_mm.height || specs.chamber_size_mm.depth ? ' mm' : 'N/A'}
            </dd>
          </>
        )}
        {specs.max_sample_size_mm && (
          <>
            <dt className="text-sm text-gray-600">Max Sample Size</dt>
            <dd className="text-sm text-gray-900">
              {specs.max_sample_size_mm.width && `${specs.max_sample_size_mm.width} × `}
              {specs.max_sample_size_mm.height && `${specs.max_sample_size_mm.height} × `}
              {specs.max_sample_size_mm.depth && `${specs.max_sample_size_mm.depth}`}
              {specs.max_sample_size_mm.width || specs.max_sample_size_mm.height || specs.max_sample_size_mm.depth ? ' mm' : 'N/A'}
            </dd>
          </>
        )}

        {/* Vacuum Specifications */}
        {specs.vacuum_level_mbar && (
          <>
            <dt className="text-sm text-gray-600">Vacuum Level</dt>
            <dd className="text-sm text-gray-900">{specs.vacuum_level_mbar} mbar</dd>
          </>
        )}
        {specs.vacuum_pump_required !== null && (
          <>
            <dt className="text-sm text-gray-600">Vacuum Pump Required</dt>
            <dd className="text-sm text-gray-900">{specs.vacuum_pump_required ? 'Yes' : 'No'}</dd>
          </>
        )}

        {/* Features */}
        {specs.programmable_cycles !== null && (
          <>
            <dt className="text-sm text-gray-600">Programmable Cycles</dt>
            <dd className="text-sm text-gray-900">{specs.programmable_cycles ? 'Yes' : 'No'}</dd>
          </>
        )}
        {specs.digital_controls !== null && (
          <>
            <dt className="text-sm text-gray-600">Digital Controls</dt>
            <dd className="text-sm text-gray-900">{specs.digital_controls ? 'Yes' : 'No'}</dd>
          </>
        )}
        {specs.safety_features && specs.safety_features.length > 0 && (
          <>
            <dt className="text-sm text-gray-600">Safety Features</dt>
            <dd className="text-sm text-gray-900">
              {specs.safety_features.map(f => f.replace(/-/g, ' ')).join(', ')}
            </dd>
          </>
        )}

        {/* Additional Specifications */}
        {specs.power_consumption_watts && (
          <>
            <dt className="text-sm text-gray-600">Power Consumption</dt>
            <dd className="text-sm text-gray-900">{specs.power_consumption_watts} W</dd>
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

