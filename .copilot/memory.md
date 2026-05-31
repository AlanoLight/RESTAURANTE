# Memória do Projeto - Padrões e Convenções

**Última atualização**: 2026-05-31 19:05

## 🎨 Padrões de Código

### Estrutura de Componentes React

```tsx
// Preferência: Functional components com TypeScript
interface ComponentProps {
  // Props tipadas
}

export function Component({ prop }: ComponentProps) {
  // Hooks primeiro
  // Lógica depois
  // Return no final
  return <div>...</div>
}
```

### Nomenclatura

- **Componentes**: PascalCase (`UserProfile`, `OrderList`)
- **Arquivos de componentes**: PascalCase (`UserProfile.tsx`)
- **Funções/variáveis**: camelCase (`getUserData`, `isActive`)
- **Constantes**: UPPER_SNAKE_CASE (`API_URL`, `MAX_RETRIES`)
- **Tipos/Interfaces**: PascalCase (`UserData`, `OrderStatus`)

### Organização de Imports

```tsx
// 1. React e bibliotecas externas
import { useState } from 'react'
import Link from 'next/link'

// 2. Componentes internos
import { Button } from '@/components/Button'

// 3. Hooks e utils
import { useAuth } from '@/hooks/useAuth'

// 4. Tipos
import type { User } from '@/types'

// 5. Estilos (se não usar Tailwind inline)
import styles from './Component.module.css'
```

## 🏗️ Estrutura de Pastas

### Web App (`apps/web/src/`)
```
src/
├── app/              # Next.js App Router
│   ├── (auth)/       # Route groups
│   ├── api/          # API routes
│   └── layout.tsx    # Root layout
├── components/       # Componentes reutilizáveis
│   ├── ui/          # Componentes de UI básicos
│   └── features/    # Componentes específicos de features
├── hooks/           # Custom React hooks
├── lib/             # Utilitários e configurações
├── types/           # TypeScript types/interfaces
└── styles/          # Estilos globais
```

### Desktop App (`apps/desktop/src/`)
```
src/
├── components/      # Componentes React
├── hooks/          # Custom hooks
├── utils/          # Utilitários
├── types/          # Types TypeScript
└── App.tsx         # Componente raiz
```

## 🔧 Comandos Úteis

### Desenvolvimento
```bash
# Rodar tudo
npm run dev

# Rodar apenas web
npm run dev:web

# Rodar apenas desktop
npm run dev:desktop
```

### Build
```bash
# Build completo
npm run build

# Build web
npm run build:web

# Build desktop
npm run build:desktop

# Gerar .exe
npm run package:exe
```

### Qualidade
```bash
# Lint
npm run lint

# Format (se configurado)
npm run format
```

## 📏 Convenções de Commit

### Formato
```
tipo(escopo): descrição curta

[corpo opcional]
[footer opcional]
```

### Tipos
- `feat`: Nova funcionalidade
- `fix`: Correção de bug
- `docs`: Documentação
- `style`: Formatação (não afeta código)
- `refactor`: Refatoração
- `test`: Testes
- `chore`: Manutenção

### Exemplos
```bash
feat(pedidos): adiciona criação de pedidos
fix(desktop): corrige crash ao abrir app
docs(readme): atualiza instruções de instalação
refactor(components): simplifica Button component
```

## 🎯 Boas Práticas

### TypeScript
- ✅ Use tipos explícitos em props e retornos de função
- ✅ Evite `any` - use `unknown` se necessário
- ✅ Use interfaces para objetos, types para unions/intersections
- ❌ Não use `as` (type assertion) sem necessidade real

### React
- ✅ Use `useState` e `useEffect` apropriadamente
- ✅ Extraia lógica complexa para custom hooks
- ✅ Memoize componentes pesados com `memo`
- ✅ Use `useCallback` e `useMemo` quando apropriado
- ❌ Não crie componentes gigantes - separe responsabilidades

### Tailwind
- ✅ Use classes utilitárias padrão
- ✅ Configure cores e espaçamentos no `tailwind.config`
- ✅ Use responsive design (`md:`, `lg:`, etc)
- ❌ Evite estilos inline com `style={}` quando Tailwind resolve

### Performance
- ✅ Otimize imagens (Next.js Image component)
- ✅ Lazy load componentes pesados
- ✅ Use Server Components quando possível (Next.js)
- ✅ Minimize bundle size

## 🔐 Segurança

- ❌ **NUNCA** commitar secrets, API keys ou senhas
- ✅ Use variáveis de ambiente (`.env.local`)
- ✅ Adicione `.env*.local` ao `.gitignore`
- ✅ Use `.env.example` como template (sem valores reais)

## 🌐 Ambientes

### Development
- URL Web: `http://localhost:3000`
- Desktop: Electron dev mode

### Production
- Web: Deploy na Vercel
- Desktop: Installer `.exe` em `apps/desktop/release`

## 📦 Dependências Principais

### Web
- next: Framework React
- react: UI library
- typescript: Type safety
- tailwindcss: Styling

### Desktop
- electron: Desktop framework
- react: UI library
- vite: Build tool
- typescript: Type safety

---

> **💡 Lembre-se**: Estes padrões existem para manter consistência. Se precisar mudar algo, documente aqui!
