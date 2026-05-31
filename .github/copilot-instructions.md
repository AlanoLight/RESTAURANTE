# Instruções para GitHub Copilot

Bem-vindo ao projeto **RESTAURANTE PRO**! Este arquivo contém instruções para ajudar você a entender o contexto e trabalhar de forma consistente neste projeto.

## 📚 Arquivos de Contexto Importantes

Antes de trabalhar no projeto, **SEMPRE leia estes arquivos**:

1. **`.copilot/context.md`** - Contexto atual do projeto e o que estamos fazendo agora
2. **`.copilot/tasks.md`** - Lista de tarefas e progresso
3. **`.copilot/decisions.md`** - Decisões técnicas e arquiteturais
4. **`.copilot/memory.md`** - Padrões, convenções e boas práticas do projeto

## 🎯 Sobre o Projeto

**RESTAURANTE PRO** é uma plataforma profissional para gestão de restaurantes, composta por:

- **App Web** (`apps/web/`): Site moderno em Next.js + TypeScript + Tailwind
- **App Desktop** (`apps/desktop/`): Aplicativo Electron + React para Windows

### Stack Tecnológica
- **Monorepo**: npm workspaces
- **Web**: Next.js 15, React, TypeScript, Tailwind CSS
- **Desktop**: Electron, React, TypeScript, Vite
- **Qualidade**: ESLint, Prettier, TypeScript strict

## 🛠️ Comandos Principais

```bash
# Desenvolvimento
npm run dev              # Roda web + desktop
npm run dev:web          # Apenas web
npm run dev:desktop      # Apenas desktop

# Build
npm run build            # Build completo
npm run build:web        # Build web
npm run build:desktop    # Build desktop
npm run package:exe      # Gera instalador .exe

# Qualidade
npm run lint             # Lint do código
```

## 📋 Workflow de Trabalho

### Ao iniciar uma sessão:
1. Leia `.copilot/context.md` para entender o estado atual
2. Verifique `.copilot/tasks.md` para ver tarefas pendentes
3. Consulte `.copilot/decisions.md` para decisões técnicas
4. Siga padrões em `.copilot/memory.md`

### Durante o trabalho:
1. Siga os padrões de código documentados
2. Use TypeScript strict mode
3. Escreva código limpo e bem documentado
4. Teste suas mudanças antes de commitar

### Ao finalizar:
1. Atualize `.copilot/context.md` com estado atual
2. Marque tarefas concluídas em `.copilot/tasks.md`
3. Documente decisões importantes em `.copilot/decisions.md`
4. Commit com mensagem clara seguindo convenção

## 🎨 Padrões de Código

### TypeScript
```typescript
// ✅ BOM: Tipos explícitos
interface UserProps {
  name: string
  email: string
}

function getUser(id: string): Promise<UserProps> {
  // ...
}

// ❌ RUIM: any e falta de tipos
function getUser(id): any {
  // ...
}
```

### React Components
```tsx
// ✅ BOM: Functional component tipado
interface ButtonProps {
  label: string
  onClick: () => void
  variant?: 'primary' | 'secondary'
}

export function Button({ label, onClick, variant = 'primary' }: ButtonProps) {
  return (
    <button onClick={onClick} className={`btn-${variant}`}>
      {label}
    </button>
  )
}

// ❌ RUIM: Sem tipos, props sem destructuring
export function Button(props) {
  return <button onClick={props.onClick}>{props.label}</button>
}
```

### Nomenclatura
- **Componentes**: `PascalCase` (UserProfile, OrderList)
- **Funções**: `camelCase` (getUserData, calculateTotal)
- **Constantes**: `UPPER_SNAKE_CASE` (API_URL, MAX_ITEMS)
- **Arquivos**: Mesmo nome do componente (Button.tsx, UserProfile.tsx)

### Commits
```bash
# Formato: tipo(escopo): descrição
feat(pedidos): adiciona criação de novos pedidos
fix(desktop): corrige crash ao iniciar aplicativo
docs(readme): atualiza instruções de setup
refactor(components): simplifica lógica do Button
```

## 🔒 Segurança

- **NUNCA** commite secrets, API keys ou senhas
- Use variáveis de ambiente (`.env.local`)
- Sempre adicione arquivos sensíveis ao `.gitignore`
- Use `.env.example` como template (sem valores reais)

## 🚀 Sincronização entre Copilots

Este projeto usa um sistema de sincronização para permitir trabalho contínuo entre:
- **GitHub Copilot Chat** (quando longe do computador)
- **VS Code Copilot** (quando no PC)

### Como funciona:
1. Ambos Copilots leem os mesmos arquivos de contexto
2. Mudanças são commitadas com contexto atualizado
3. Ao trocar de ambiente, o outro Copilot continua de onde parou

### Ao trocar de ambiente:
1. **Antes de parar**: Atualize `.copilot/context.md` e `.copilot/tasks.md`
2. **Ao retomar**: Leia esses arquivos para continuar

## 📖 Consultas Rápidas

### Onde está...?
- **Componentes Web**: `apps/web/src/components/`
- **Páginas Web**: `apps/web/src/app/`
- **Componentes Desktop**: `apps/desktop/src/components/`
- **Tipos TypeScript**: `*/src/types/`
- **Configurações**: Arquivos `.config.*` na raiz de cada app

### Preciso de...
- **Adicionar dependência**: `npm install <pacote> -w @restaurante/web` (ou desktop)
- **Ver logs de build**: Verifique output do terminal
- **Debugar**: Use VS Code debugger (configurado em `.vscode/`)
- **Fazer deploy**: Web → Vercel | Desktop → `npm run package:exe`

## 🎓 Recursos Úteis

- [Next.js Docs](https://nextjs.org/docs)
- [React Docs](https://react.dev)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
- [Tailwind CSS](https://tailwindcss.com/docs)
- [Electron Docs](https://www.electronjs.org/docs)

## 💡 Dicas Importantes

1. **Leia os arquivos de contexto** antes de começar
2. **Mantenha os arquivos atualizados** ao finalizar
3. **Siga os padrões** para manter consistência
4. **Documente decisões** importantes
5. **Teste antes de commitar**
6. **Commits pequenos e frequentes** são melhores que commits gigantes

---

> 🤖 **Nota para Copilot**: Você está aqui para ajudar o desenvolvedor a ser mais produtivo. Sempre priorize:
> 1. Qualidade do código
> 2. Segurança
> 3. Manutenibilidade
> 4. Performance
>
> Quando em dúvida, consulte os arquivos de contexto e sugira a melhor prática!
