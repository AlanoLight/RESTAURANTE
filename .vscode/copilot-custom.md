# Instruções Customizadas do Workspace - RESTAURANTE PRO

Este arquivo contém instruções específicas para o workspace do VS Code neste projeto.

## 🎯 Contexto do Workspace

Você está trabalhando em um **monorepo** com dois apps:
- `apps/web/` - Next.js app
- `apps/desktop/` - Electron app

## 📂 Navegação Rápida

### Atalhos do VS Code (Tasks)
- `Ctrl+Shift+B` → Menu de build tasks
- `Ctrl+Shift+P` → Command Palette
  - Digite "Tasks: Run Task" para ver todas as tasks disponíveis

### Tasks Disponíveis (`.vscode/tasks.json`)
- **Dev: Web** - Inicia desenvolvimento do app web
- **Dev: Desktop** - Inicia desenvolvimento do app desktop
- **Dev: Both** - Inicia ambos simultaneamente
- **Build: Web** - Build de produção do app web
- **Build: Desktop** - Build de produção do app desktop
- **Package: EXE** - Gera instalador .exe do desktop
- **Lint** - Executa linter no app web

## 🔍 Onde Encontrar Arquivos

### Estrutura do Projeto
```
RESTAURANTE/
├── .copilot/                    # 📋 CONTEXTO - LEIA PRIMEIRO!
│   ├── context.md              # Estado atual do projeto
│   ├── tasks.md                # Lista de tarefas
│   ├── decisions.md            # Decisões técnicas
│   └── memory.md               # Padrões e convenções
├── .github/
│   └── copilot-instructions.md  # Instruções globais
├── .vscode/
│   ├── extensions.json         # Extensões recomendadas
│   ├── settings.json           # Configurações do workspace
│   ├── tasks.json              # Tasks automatizadas
│   └── copilot-custom.md       # Este arquivo
├── apps/
│   ├── web/                    # App Next.js
│   │   ├── src/
│   │   │   ├── app/           # Routes (App Router)
│   │   │   └── components/    # Componentes
│   │   └── package.json
│   └── desktop/                # App Electron
│       ├── electron/          # Código Electron (main/preload)
│       ├── src/               # Código React
│       └── package.json
└── package.json               # Root package.json (workspaces)
```

## 🎨 Snippets e Produtividade

### Snippets TypeScript/React (nativos do VS Code)
- `tsrfc` → React Functional Component
- `uef` → useEffect
- `ust` → useState

### Tailwind IntelliSense
- Autocomplete de classes Tailwind
- Preview de cores ao hover
- Validação de classes

## 🔧 Comandos Integrados

### Terminal Integrado
```bash
# Abra com: Ctrl+` (backtick)

# Comandos úteis
npm run dev              # Roda ambos apps
npm run dev:web          # Apenas web
npm run dev:desktop      # Apenas desktop
npm run lint             # Lint
npm run build            # Build tudo
npm run package:exe      # Gera .exe
```

## 🚀 Workflow Recomendado

### Ao Abrir o Projeto
1. **Leia `.copilot/context.md`** - Veja o que está acontecendo
2. **Verifique `.copilot/tasks.md`** - Veja tarefas pendentes
3. **Instale extensões recomendadas** - VS Code vai sugerir
4. **Execute `npm install`** - Se for primeira vez
5. **Escolha seu foco** - Web ou Desktop?
6. **Inicie dev server** - Use task ou comando npm

### Durante Desenvolvimento
1. **Use Copilot** para sugestões de código
2. **Consulte `.copilot/memory.md`** para padrões
3. **Teste incrementalmente** - Não deixe tudo para o final
4. **Commit frequentemente** - Pequenos commits são melhores

### Antes de Commitar
1. **Execute lint**: `npm run lint`
2. **Teste build**: `npm run build:web` ou `build:desktop`
3. **Revise mudanças**: Use Source Control (Ctrl+Shift+G)
4. **Atualize contexto**: Modifique `.copilot/context.md` e `.copilot/tasks.md`
5. **Commit com mensagem clara**: Siga convenção (feat/fix/docs/etc)

### Ao Finalizar Sessão
1. **Atualize `.copilot/context.md`** - Descreva estado atual
2. **Marque tarefas em `.copilot/tasks.md`** - [x] concluídas
3. **Commit tudo** - Incluindo arquivos de contexto
4. **Push para remote** - Sincronize com GitHub

## 🎯 Foco por App

### Trabalhando no Web (`apps/web/`)
```bash
# Terminal
cd apps/web
npm run dev              # Porta 3000

# Arquivos principais
src/app/page.tsx         # Homepage
src/app/layout.tsx       # Root layout
src/components/          # Componentes
tailwind.config.ts       # Config Tailwind
next.config.ts           # Config Next.js
```

**Características**:
- Next.js App Router
- Server & Client Components
- Tailwind para estilos
- Deploy na Vercel

### Trabalhando no Desktop (`apps/desktop/`)
```bash
# Terminal
cd apps/desktop
npm run dev              # Abre Electron window

# Arquivos principais
electron/main.ts         # Processo principal Electron
electron/preload.ts      # Preload script
src/App.tsx              # App React
src/main.tsx             # Entry point React
vite.config.ts           # Config Vite
```

**Características**:
- Electron + React
- Vite para build
- Package para .exe
- Sem SSR

## 🐛 Debug

### Web (Next.js)
1. Adicione breakpoint no VS Code
2. Use Debug panel (Ctrl+Shift+D)
3. Ou use `console.log` (aparece no terminal e browser)

### Desktop (Electron)
1. Main process: Use `console.log` (aparece no terminal)
2. Renderer: Use DevTools (abre automaticamente em dev)
3. VS Code debugger configurado em `.vscode/launch.json` (se existir)

## 📦 Gerenciamento de Dependências

### Adicionar dependência ao Web
```bash
npm install <pacote> -w @restaurante/web
```

### Adicionar dependência ao Desktop
```bash
npm install <pacote> -w @restaurante/desktop
```

### Adicionar dependência compartilhada (root)
```bash
npm install <pacote> -w
```

## 🔄 Sincronização com GitHub Copilot Chat

### Quando usar VS Code Copilot vs GitHub Chat

**Use VS Code Copilot quando**:
- Está no computador
- Precisa de sugestões inline
- Quer completar código rapidamente
- Está debugando ativamente

**Use GitHub Copilot Chat quando**:
- Está longe do computador (mobile)
- Quer planejar features
- Precisa de explicações detalhadas
- Quer revisar código

### Mantendo Sincronia
1. **Sempre leia** `.copilot/context.md` ao iniciar
2. **Sempre atualize** `.copilot/context.md` ao pausar
3. **Commit frequente** para manter GitHub atualizado
4. **Pull antes de começar** se trabalhou em outro lugar

## 💡 Dicas Avançadas

### IntelliSense
- **Ctrl+Space** → Aciona autocomplete manualmente
- **Ctrl+Shift+Space** → Mostra parâmetros de função
- **F12** → Go to definition
- **Alt+F12** → Peek definition
- **Shift+F12** → Find all references

### Multi-cursor
- **Alt+Click** → Adiciona cursor
- **Ctrl+Alt+Down/Up** → Adiciona cursor acima/abaixo
- **Ctrl+D** → Seleciona próxima ocorrência
- **Ctrl+Shift+L** → Seleciona todas ocorrências

### Refactoring
- **F2** → Rename symbol
- **Ctrl+.** → Quick fix / Refactor
- **Shift+Alt+F** → Format document

### Terminal
- **Ctrl+`** → Toggle terminal
- **Ctrl+Shift+`** → Novo terminal
- Split terminal → Botão no terminal panel

## 🎓 Recursos

### Extensões Recomendadas
Instale as sugeridas em `.vscode/extensions.json`:
- ESLint - Linting
- Prettier - Formatting
- Tailwind CSS IntelliSense
- TypeScript and JavaScript Language Features

### Links Úteis
- [Next.js Docs](https://nextjs.org/docs)
- [React Docs](https://react.dev)
- [Tailwind Docs](https://tailwindcss.com)
- [Electron Docs](https://electronjs.org)
- [TypeScript Handbook](https://typescriptlang.org/docs)

---

> 💡 **Dica Final**: Este projeto usa sincronização de contexto. Sempre que parar de trabalhar, atualize os arquivos em `.copilot/` para que você (ou outro Copilot) possa continuar de onde parou!
