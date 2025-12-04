import { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Build Your Lab | Metallography.org',
  description: 'Get personalized equipment and consumable recommendations for your metallographic laboratory based on your sample specifications, materials, and workflow requirements.',
}

export default function BuildLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return children
}

