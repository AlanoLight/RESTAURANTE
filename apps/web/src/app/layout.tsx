import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Restaurante Pro",
  description: "Site profissional e painel desktop para gestao de restaurante"
};

export default function RootLayout({
  children
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="pt-BR">
      <body>{children}</body>
    </html>
  );
}
