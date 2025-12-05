import { Metadata } from 'next'
import BuildPageWrapper from './BuildPageWrapper'

export const metadata: Metadata = {
  title: 'Build Your Lab | Metallography.org',
  description: 'Get personalized equipment and consumable recommendations for your metallographic laboratory based on your sample specifications, materials, and workflow requirements.',
}

export default function BuildLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return <BuildPageWrapper>{children}</BuildPageWrapper>
}

