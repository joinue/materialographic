import Link from 'next/link'

interface ProductLinkProps {
  productName: string
  href?: string
  description?: string
}

export default function ProductLink({ productName, href, description }: ProductLinkProps) {
  const shopUrl = href || `https://shop.metallographic.com/search?q=${encodeURIComponent(productName)}`
  
  return (
    <div className="bg-primary-50 border-l-4 border-primary-600 p-4 my-4 rounded">
      <p className="text-sm text-gray-700 mb-2">
        <strong>Recommended:</strong> {productName}
        {description && <span className="block text-gray-600 mt-1">{description}</span>}
      </p>
      <Link 
        href={shopUrl}
        target="_blank"
        rel="noopener noreferrer"
        className="text-sm text-primary-600 hover:text-primary-700 font-semibold"
      >
        View Consumables Shop →
      </Link>
    </div>
  )
}

