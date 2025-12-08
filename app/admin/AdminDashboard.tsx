'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase-client'
import type { User } from '@supabase/supabase-js'

interface AdminDashboardProps {
  user: User
}

export default function AdminDashboard({ user }: AdminDashboardProps) {
  const router = useRouter()
  const [loading, setLoading] = useState(false)

  const handleLogout = async () => {
    setLoading(true)
    try {
      const supabase = createClient()
      await supabase.auth.signOut()
      router.push('/admin/login')
      router.refresh()
    } catch (error) {
      console.error('Logout error:', error)
      setLoading(false)
    }
  }

  return (
    <div className="min-h-screen">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Header */}
        <div className="bg-white shadow rounded-lg mb-6">
          <div className="px-6 py-4 border-b border-gray-200 flex justify-between items-center">
            <div>
              <h1 className="text-2xl font-bold text-gray-900">Admin Dashboard</h1>
              <p className="text-sm text-gray-600 mt-1">
                Welcome, {user.email}
              </p>
            </div>
            <button
              onClick={handleLogout}
              disabled={loading}
              className="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 disabled:opacity-50 disabled:cursor-not-allowed"
            >
              {loading ? 'Logging out...' : 'Logout'}
            </button>
          </div>
        </div>

        {/* Dashboard Content */}
        <div className="bg-white shadow rounded-lg p-6">
          <div className="mb-6">
            <h2 className="text-xl font-semibold text-gray-900 mb-2">
              Quick Actions
            </h2>
            <p className="text-gray-600">
              Admin functionality will be added here. This is a protected route that requires authentication.
            </p>
          </div>

          {/* Stats Grid */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-6">
            <button
              onClick={() => router.push('/admin/materials')}
              className="bg-blue-50 rounded-lg p-4 hover:bg-blue-100 transition-colors text-left cursor-pointer focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <h3 className="text-sm font-medium text-blue-900 mb-1">Materials</h3>
              <p className="text-2xl font-bold text-blue-600">Manage</p>
              <p className="text-xs text-blue-700 mt-2">Click to manage materials →</p>
            </button>
            <div className="bg-green-50 rounded-lg p-4">
              <h3 className="text-sm font-medium text-green-900 mb-1">Etchants</h3>
              <p className="text-2xl font-bold text-green-600">Coming Soon</p>
            </div>
            <div className="bg-purple-50 rounded-lg p-4">
              <h3 className="text-sm font-medium text-purple-900 mb-1">Standards</h3>
              <p className="text-2xl font-bold text-purple-600">Coming Soon</p>
            </div>
          </div>

          {/* Admin Features */}
          <div className="border-t border-gray-200 pt-6">
            <h3 className="text-lg font-semibold text-gray-900 mb-4">
              Admin Features
            </h3>
            <div className="space-y-3">
              <button
                onClick={() => router.push('/admin/materials')}
                className="w-full flex items-center justify-between p-3 bg-gray-50 rounded-md hover:bg-gray-100 transition-colors text-left focus:outline-none focus:ring-2 focus:ring-primary-500"
              >
                <div className="flex-1">
                  <p className="font-medium text-gray-900">Materials Management</p>
                  <p className="text-sm text-gray-600">Create, edit, and manage materials in the database</p>
                </div>
                <span className="text-xs text-primary-600 bg-primary-100 px-2 py-1 rounded font-medium">Active</span>
              </button>
              <div className="flex items-center p-3 bg-gray-50 rounded-md">
                <div className="flex-1">
                  <p className="font-medium text-gray-900">Etchants Management</p>
                  <p className="text-sm text-gray-600">Manage etchants and their properties</p>
                </div>
                <span className="text-xs text-gray-500 bg-gray-200 px-2 py-1 rounded">Coming Soon</span>
              </div>
              <div className="flex items-center p-3 bg-gray-50 rounded-md">
                <div className="flex-1">
                  <p className="font-medium text-gray-900">Standards Management</p>
                  <p className="text-sm text-gray-600">Manage ASTM and ISO standards</p>
                </div>
                <span className="text-xs text-gray-500 bg-gray-200 px-2 py-1 rounded">Coming Soon</span>
              </div>
              <div className="flex items-center p-3 bg-gray-50 rounded-md">
                <div className="flex-1">
                  <p className="font-medium text-gray-900">User Management</p>
                  <p className="text-sm text-gray-600">View and manage user accounts</p>
                </div>
                <span className="text-xs text-gray-500 bg-gray-200 px-2 py-1 rounded">Coming Soon</span>
              </div>
              <div className="flex items-center p-3 bg-gray-50 rounded-md">
                <div className="flex-1">
                  <p className="font-medium text-gray-900">Analytics</p>
                  <p className="text-sm text-gray-600">View site analytics and metrics</p>
                </div>
                <span className="text-xs text-gray-500 bg-gray-200 px-2 py-1 rounded">Coming Soon</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

