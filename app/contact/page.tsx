'use client'

import { useState } from 'react'
import { Mail, MessageSquare, Send, CheckCircle, AlertCircle } from 'lucide-react'
import AnimateOnScroll from '@/components/AnimateOnScroll'

export default function ContactPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    subject: '',
    message: '',
  })
  const [status, setStatus] = useState<'idle' | 'sending' | 'success' | 'error'>('idle')
  const [errorMessage, setErrorMessage] = useState('')

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    })
  }

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setStatus('sending')
    setErrorMessage('')

    // Basic validation
    if (!formData.name || !formData.email || !formData.message) {
      setStatus('error')
      setErrorMessage('Please fill in all required fields.')
      return
    }

    // Email validation
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    if (!emailRegex.test(formData.email)) {
      setStatus('error')
      setErrorMessage('Please enter a valid email address.')
      return
    }

    // Simulate form submission (replace with actual API call)
    try {
      // TODO: Replace with actual form submission endpoint
      await new Promise(resolve => setTimeout(resolve, 1000))
      
      setStatus('success')
      setFormData({
        name: '',
        email: '',
        subject: '',
        message: '',
      })
    } catch (error) {
      setStatus('error')
      setErrorMessage('Something went wrong. Please try again later.')
    }
  }

  return (
    <div className="py-12">
      <div className="container-custom">
        {/* Header Section */}
        <AnimateOnScroll animation="fadeInUp" duration={700} className="text-center mb-12">
          <h1 className="text-4xl md:text-5xl font-bold mb-4 text-gray-900">Contact Us</h1>
          <p className="text-xl text-gray-600 max-w-2xl mx-auto">
            Have questions, feedback, or need assistance? We'd love to hear from you. 
            Get in touch and we'll respond as soon as possible.
          </p>
        </AnimateOnScroll>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-12">
          {/* Contact Information Cards */}
          <div className="lg:col-span-1 space-y-6">
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <div className="card">
                <div className="flex items-start gap-4">
                  <div className="p-3 bg-primary-100 rounded-lg">
                    <Mail className="w-6 h-6 text-primary-600" />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold mb-2 text-gray-900">Email Us</h3>
                    <p className="text-gray-600 text-sm mb-2">
                      Send us an email and we'll get back to you within 24 hours.
                    </p>
                    <a 
                      href="mailto:info@metallography.org" 
                      className="text-primary-600 hover:text-primary-700 font-medium text-sm"
                    >
                      info@metallography.org
                    </a>
                  </div>
                </div>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={200} duration={600}>
              <div className="card">
                <div className="flex items-start gap-4">
                  <div className="p-3 bg-primary-100 rounded-lg">
                    <MessageSquare className="w-6 h-6 text-primary-600" />
                  </div>
                  <div>
                    <h3 className="text-lg font-semibold mb-2 text-gray-900">General Inquiries</h3>
                    <p className="text-gray-600 text-sm">
                      For questions about our resources, guides, or general information about metallography.
                    </p>
                  </div>
                </div>
              </div>
            </AnimateOnScroll>

            <AnimateOnScroll animation="fadeInUp" delay={300} duration={600}>
              <div className="card bg-gradient-to-br from-primary-50 to-primary-100 border-primary-200">
                <h3 className="text-lg font-semibold mb-3 text-gray-900">Related Resources</h3>
                <p className="text-gray-600 text-sm mb-4">
                  Before contacting us, you might find answers in our comprehensive guides and resources.
                </p>
                <div className="space-y-2">
                  <a 
                    href="/guides" 
                    className="block text-primary-600 hover:text-primary-700 font-medium text-sm"
                  >
                    Browse Guides →
                  </a>
                  <a 
                    href="/resources" 
                    className="block text-primary-600 hover:text-primary-700 font-medium text-sm"
                  >
                    View Resources →
                  </a>
                  <a 
                    href="/resources/troubleshooting-guide" 
                    className="block text-primary-600 hover:text-primary-700 font-medium text-sm"
                  >
                    Troubleshooting Guide →
                  </a>
                </div>
              </div>
            </AnimateOnScroll>
          </div>

          {/* Contact Form */}
          <div className="lg:col-span-2">
            <AnimateOnScroll animation="fadeInUp" delay={100} duration={600}>
              <div className="card">
                <h2 className="text-2xl font-bold mb-6 text-gray-900">Send us a Message</h2>
                
                {status === 'success' && (
                  <div className="mb-6 p-4 bg-green-50 border border-green-200 rounded-lg flex items-start gap-3">
                    <CheckCircle className="w-5 h-5 text-green-600 flex-shrink-0 mt-0.5" />
                    <div>
                      <p className="text-green-800 font-medium">Message sent successfully!</p>
                      <p className="text-green-700 text-sm mt-1">
                        We'll get back to you as soon as possible.
                      </p>
                    </div>
                  </div>
                )}

                {status === 'error' && (
                  <div className="mb-6 p-4 bg-red-50 border border-red-200 rounded-lg flex items-start gap-3">
                    <AlertCircle className="w-5 h-5 text-red-600 flex-shrink-0 mt-0.5" />
                    <div>
                      <p className="text-red-800 font-medium">Error sending message</p>
                      <p className="text-red-700 text-sm mt-1">
                        {errorMessage || 'Something went wrong. Please try again later.'}
                      </p>
                    </div>
                  </div>
                )}

                <form onSubmit={handleSubmit} className="space-y-6">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                      <label htmlFor="name" className="block text-sm font-semibold text-gray-900 mb-2">
                        Name <span className="text-red-500">*</span>
                      </label>
                      <input
                        type="text"
                        id="name"
                        name="name"
                        value={formData.name}
                        onChange={handleChange}
                        required
                        className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 placeholder-gray-400 transition-colors"
                        placeholder="Your name"
                      />
                    </div>

                    <div>
                      <label htmlFor="email" className="block text-sm font-semibold text-gray-900 mb-2">
                        Email <span className="text-red-500">*</span>
                      </label>
                      <input
                        type="email"
                        id="email"
                        name="email"
                        value={formData.email}
                        onChange={handleChange}
                        required
                        className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 placeholder-gray-400 transition-colors"
                        placeholder="your.email@example.com"
                      />
                    </div>
                  </div>

                  <div>
                    <label htmlFor="subject" className="block text-sm font-semibold text-gray-900 mb-2">
                      Subject
                    </label>
                    <select
                      id="subject"
                      name="subject"
                      value={formData.subject}
                      onChange={handleChange}
                      className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 bg-white transition-colors"
                    >
                      <option value="">Select a subject</option>
                      <option value="general">General Inquiry</option>
                      <option value="technical">Technical Question</option>
                      <option value="feedback">Feedback</option>
                      <option value="partnership">Partnership Opportunity</option>
                      <option value="other">Other</option>
                    </select>
                  </div>

                  <div>
                    <label htmlFor="message" className="block text-sm font-semibold text-gray-900 mb-2">
                      Message <span className="text-red-500">*</span>
                    </label>
                    <textarea
                      id="message"
                      name="message"
                      value={formData.message}
                      onChange={handleChange}
                      required
                      rows={6}
                      className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none text-gray-900 placeholder-gray-400 transition-colors resize-none"
                      placeholder="Tell us how we can help..."
                    />
                  </div>

                  <div className="flex items-start gap-3">
                    <input
                      type="checkbox"
                      id="privacy"
                      name="privacy"
                      required
                      className="mt-1 w-4 h-4 text-primary-600 border-gray-300 rounded focus:ring-primary-500"
                    />
                    <label htmlFor="privacy" className="text-sm text-gray-600">
                      I agree to the{' '}
                      <a href="/privacy" className="text-primary-600 hover:text-primary-700 font-medium">
                        Privacy Policy
                      </a>
                      {' '}and consent to being contacted regarding my inquiry.
                    </label>
                  </div>

                  <button
                    type="submit"
                    disabled={status === 'sending'}
                    className="btn-primary w-full md:w-auto flex items-center justify-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
                  >
                    {status === 'sending' ? (
                      <>
                        <div className="w-4 h-4 border-2 border-white border-t-transparent rounded-full animate-spin"></div>
                        Sending...
                      </>
                    ) : (
                      <>
                        <Send className="w-4 h-4" />
                        Send Message
                      </>
                    )}
                  </button>
                </form>
              </div>
            </AnimateOnScroll>
          </div>
        </div>

        {/* Additional Information Section */}
        <AnimateOnScroll animation="fadeInUp" delay={400} duration={600} className="mt-16">
          <div className="bg-gray-50 rounded-lg p-8">
            <h2 className="text-2xl font-bold mb-4 text-gray-900">Frequently Asked Questions</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
              <div>
                <h3 className="text-lg font-semibold mb-2 text-gray-900">How quickly will I receive a response?</h3>
                <p className="text-gray-600 text-sm">
                  We typically respond to all inquiries within 24-48 hours during business days.
                </p>
              </div>
              <div>
                <h3 className="text-lg font-semibold mb-2 text-gray-900">Can I request specific content or guides?</h3>
                <p className="text-gray-600 text-sm">
                  Absolutely! We welcome suggestions for new guides, resources, or improvements to existing content.
                </p>
              </div>
              <div>
                <h3 className="text-lg font-semibold mb-2 text-gray-900">Do you offer technical support?</h3>
                <p className="text-gray-600 text-sm">
                  Yes, we provide technical support for questions related to metallographic sample preparation and our resources.
                </p>
              </div>
              <div>
                <h3 className="text-lg font-semibold mb-2 text-gray-900">Are your resources really free?</h3>
                <p className="text-gray-600 text-sm">
                  Yes! All guides, resources, and tools on Metallography.org are completely free to use.
                </p>
              </div>
            </div>
          </div>
        </AnimateOnScroll>
      </div>
    </div>
  )
}

