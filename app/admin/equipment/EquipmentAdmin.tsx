'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import Image from 'next/image'
import { createClient } from '@/lib/supabase-client'
import type { Equipment } from '@/lib/supabase'
import { getEquipmentImageUrl } from '@/lib/storage'
import { Plus, Search, Edit, Trash2, Eye, EyeOff } from 'lucide-react'
import LoadingSpinner from '@/components/LoadingSpinner'

export default function EquipmentAdmin() {
  const router = useRouter()
  const [equipment, setEquipment] = useState<Equipment[]>([])
  const [loading, setLoading] = useState(true)
  const [searchQuery, setSearchQuery] = useState('')
  const [filterStatus, setFilterStatus] = useState<'all' | 'active' | 'discontinued' | 'draft'>('all')

  useEffect(() => {
    loadEquipment()
  }, [])

  const loadEquipment = async () => {
    try {
      const supabase = createClient()
      let query = supabase
        .from('equipment')
        .select('*')
        .order('name', { ascending: true })

      if (filterStatus !== 'all') {
        query = query.eq('status', filterStatus)
      }

      const { data, error } = await query

      if (error) throw error
      setEquipment(data || [])
    } catch (error) {
      console.error('Error loading equipment:', error)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    loadEquipment()
  }, [filterStatus])

  const handleDelete = async (id: string, name: string) => {
    if (!confirm(`Are you sure you want to delete "${name}"? This action cannot be undone.`)) {
      return
    }

    try {
      const supabase = createClient()
      const { error } = await supabase
        .from('equipment')
        .delete()
        .eq('id', id)

      if (error) {
        console.error('Delete error details:', error)
        throw new Error(error.message || 'Failed to delete equipment')
      }
      loadEquipment()
    } catch (error: any) {
      console.error('Error deleting equipment:', error)
      alert(`Failed to delete equipment: ${error.message || 'Please check your permissions and try again.'}`)
    }
  }

  const handleToggleStatus = async (item: Equipment) => {
    const newStatus = item.status === 'active' ? 'draft' : 'active'
    
    try {
      const supabase = createClient()
      const { error } = await supabase
        .from('equipment')
        .update({ status: newStatus })
        .eq('id', item.id)

      if (error) {
        console.error('Status update error details:', error)
        throw new Error(error.message || 'Failed to update status')
      }
      loadEquipment()
    } catch (error: any) {
      console.error('Error updating status:', error)
      alert(`Failed to update status: ${error.message || 'Please check your permissions and try again.'}`)
    }
  }

  const filteredEquipment = equipment.filter(item => {
    if (!searchQuery) return true
    const query = searchQuery.toLowerCase()
    return (
      item.name.toLowerCase().includes(query) ||
      item.item_id?.toLowerCase().includes(query) ||
      item.category.toLowerCase().includes(query) ||
      item.slug?.toLowerCase().includes(query)
    )
  })

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <LoadingSpinner size="lg" />
      </div>
    )
  }

  return (
    <div className="min-h-screen">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Header */}
        <div className="bg-white shadow rounded-lg mb-6">
          <div className="px-6 py-4 border-b border-gray-200">
            <div className="flex justify-between items-center">
              <div>
                <h1 className="text-2xl font-bold text-gray-900">Equipment Management</h1>
                <p className="text-sm text-gray-600 mt-1">
                  Manage all equipment in the database
                </p>
              </div>
              <button
                onClick={() => router.push('/admin/equipment/new')}
                className="flex items-center gap-2 px-4 py-2 bg-primary-600 text-white rounded-lg hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 transition-all"
              >
                <Plus className="w-5 h-5" />
                Add New Equipment
              </button>
            </div>
          </div>

          {/* Filters */}
          <div className="px-6 py-4 border-b border-gray-200">
            <div className="flex flex-col sm:flex-row gap-4">
              {/* Search */}
              <div className="flex-1 relative">
                <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
                <input
                  type="text"
                  placeholder="Search equipment by name, item ID, or category..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                />
              </div>

              {/* Status Filter */}
              <select
                value={filterStatus}
                onChange={(e) => setFilterStatus(e.target.value as any)}
                className="px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              >
                <option value="all">All Status</option>
                <option value="active">Active</option>
                <option value="discontinued">Discontinued</option>
                <option value="draft">Draft</option>
              </select>
            </div>
          </div>
        </div>

        {/* Equipment Table */}
        <div className="bg-white shadow rounded-lg overflow-hidden">
          <div className="relative">
            <div className="overflow-x-auto custom-scrollbar" style={{ scrollbarWidth: 'thin', scrollbarColor: '#9ca3af #f3f4f6' }}>
              <table className="min-w-full divide-y divide-gray-200">
                <thead className="bg-gray-50">
                  <tr>
                    <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider whitespace-nowrap w-20">
                      Image
                    </th>
                    <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider max-w-xs">
                      Name
                    </th>
                    <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider whitespace-nowrap w-32">
                      Item ID
                    </th>
                    <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider whitespace-nowrap w-40">
                      Category
                    </th>
                    <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider whitespace-nowrap w-28">
                      Status
                    </th>
                    <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider whitespace-nowrap sticky right-0 bg-gray-50 z-10 shadow-[2px_0_4px_rgba(0,0,0,0.05)]">
                      Actions
                    </th>
                  </tr>
                </thead>
                <tbody className="bg-white divide-y divide-gray-200">
                  {filteredEquipment.length === 0 ? (
                    <tr>
                      <td colSpan={6} className="px-6 py-12 text-center text-gray-500">
                        {searchQuery ? 'No equipment found matching your search.' : 'No equipment found.'}
                      </td>
                    </tr>
                  ) : (
                    filteredEquipment.map((item) => (
                      <tr key={item.id} className="hover:bg-gray-50">
                        <td className="px-4 py-4 whitespace-nowrap">
                          {item.image_url ? (
                            <div className="relative w-12 h-12 rounded-lg overflow-hidden bg-gray-100 border border-gray-200">
                              <Image
                                src={getEquipmentImageUrl(item.image_url) || item.image_url}
                                alt={item.name}
                                fill
                                className="object-cover"
                                sizes="48px"
                              />
                            </div>
                          ) : (
                            <div className="w-12 h-12 rounded-lg bg-gray-100 border border-gray-200 flex items-center justify-center">
                              <span className="text-xs text-gray-400">No img</span>
                            </div>
                          )}
                        </td>
                        <td className="px-4 py-4 max-w-xs">
                          <div className="text-sm font-medium text-gray-900 leading-tight break-words">{item.name}</div>
                          {item.subcategory && (
                            <div className="text-xs text-gray-500 mt-1">{item.subcategory}</div>
                          )}
                        </td>
                        <td className="px-4 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-900">{item.item_id || '-'}</div>
                        </td>
                        <td className="px-4 py-4 whitespace-nowrap">
                          <span className="px-2 py-1 text-xs font-medium bg-blue-100 text-blue-800 rounded">
                            {item.category}
                          </span>
                        </td>
                        <td className="px-4 py-4 whitespace-nowrap">
                          <div className="flex items-center gap-2">
                            <span
                              className={`px-2 py-1 text-xs font-medium rounded ${
                                item.status === 'active'
                                  ? 'bg-green-100 text-green-800'
                                  : item.status === 'discontinued'
                                  ? 'bg-red-100 text-red-800'
                                  : 'bg-gray-100 text-gray-800'
                              }`}
                            >
                              {item.status || 'draft'}
                            </span>
                            <button
                              onClick={() => handleToggleStatus(item)}
                              className="text-gray-400 hover:text-gray-600 transition-colors"
                              title={item.status === 'active' ? 'Deactivate' : 'Activate'}
                            >
                              {item.status === 'active' ? (
                                <EyeOff className="w-4 h-4" />
                              ) : (
                                <Eye className="w-4 h-4" />
                              )}
                            </button>
                          </div>
                        </td>
                        <td className="px-4 py-4 whitespace-nowrap text-right text-sm font-medium sticky right-0 bg-white z-10 shadow-[2px_0_4px_rgba(0,0,0,0.05)]">
                          <div className="flex items-center justify-end gap-2">
                            <button
                              onClick={() => router.push(`/admin/equipment/${item.id}`)}
                              className="text-primary-600 hover:text-primary-900 transition-colors"
                              title="Edit"
                            >
                              <Edit className="w-5 h-5" />
                            </button>
                            <button
                              onClick={() => handleDelete(item.id, item.name)}
                              className="text-red-600 hover:text-red-900 transition-colors"
                              title="Delete"
                            >
                              <Trash2 className="w-5 h-5" />
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          </div>

          {/* Summary */}
          <div className="px-6 py-4 bg-gray-50 border-t border-gray-200">
            <p className="text-sm text-gray-600">
              Showing <span className="font-medium">{filteredEquipment.length}</span> of{' '}
              <span className="font-medium">{equipment.length}</span> equipment items
            </p>
          </div>
        </div>
      </div>
    </div>
  )
}

