# Decisões Técnicas

**Última atualização**: 2026-05-31 19:05

## 📐 Arquitetura

### Decisão: Monorepo com npm workspaces
**Data**: 2026-05-22
**Contexto**: Precisamos gerenciar app web e desktop no mesmo repositório
**Decisão**: Usar npm workspaces em vez de ferramentas como Lerna ou Nx
**Razão**:
- Simplicidade - npm workspaces é nativo
- Menos dependências externas
- Suficiente para 2 apps
- Facilita compartilhamento de código

**Alternativas consideradas**:
- Lerna (descartado: overhead desnecessário)
- Nx (descartado: complexidade excessiva para projeto pequeno)
- Turborepo (descartado: overkill para este caso)

---

### Decisão: Next.js para Web
**Data**: 2026-05-22
**Contexto**: Escolha do framework web
**Decisão**: Next.js 15 com App Router
**Razão**:
- SSR/SSG para melhor SEO
- Deployment fácil na Vercel
- Ecossistema maduro
- TypeScript first-class
- Performance excelente

---

### Decisão: Electron para Desktop
**Data**: 2026-05-22
**Contexto**: App desktop precisa rodar em Windows
**Decisão**: Electron + React + Vite
**Razão**:
- Cross-platform (futuro: Mac, Linux)
- Reutilização de código React
- Vite para build rápido
- Ecossistema maduro
- Fácil empacotamento (.exe)

**Alternativas consideradas**:
- Tauri (descartado: menos maduro, Rust requer curva de aprendizado)
- .NET MAUI (descartado: lock-in Microsoft)

---

### Decisão: TypeScript em todo o projeto
**Data**: 2026-05-22
**Contexto**: Linguagem de programação
**Decisão**: TypeScript strict mode
**Razão**:
- Type safety reduz bugs
- Melhor DX com autocompletion
- Refatoração mais segura
- Padrão da indústria

---

### Decisão: Tailwind CSS para estilização
**Data**: 2026-05-22
**Contexto**: Sistema de estilização
**Decisão**: Tailwind CSS
**Razão**:
- Desenvolvimento rápido
- Consistência visual
- Tree-shaking automático
- Customização fácil
- Mobile-first

---

## 🔄 Sistema de Sincronização de Contexto

### Decisão: Arquivos Markdown para contexto compartilhado
**Data**: 2026-05-31
**Contexto**: Sincronizar trabalho entre GitHub Copilot Chat e VS Code Copilot
**Decisão**: Usar arquivos `.md` versionados no repositório
**Razão**:
- Legível por humanos e IAs
- Versionado com git (histórico completo)
- Fácil de editar em qualquer ambiente
- Suporte nativo em GitHub e VS Code
- Ambos Copilots podem ler/referenciar

**Estrutura**:
- `.copilot/context.md` - Contexto atual
- `.copilot/tasks.md` - Tarefas e progresso
- `.copilot/decisions.md` - Este arquivo
- `.copilot/memory.md` - Padrões e convenções
- `.github/copilot-instructions.md` - Instruções globais
- `.vscode/copilot-custom.md` - Instruções workspace

---

## 📝 Template para Novas Decisões

```markdown
### Decisão: [Título da decisão]
**Data**: YYYY-MM-DD
**Contexto**: [Por que precisamos decidir isso?]
**Decisão**: [O que decidimos fazer]
**Razão**:
- [Ponto 1]
- [Ponto 2]

**Alternativas consideradas**:
- [Opção A] (descartado: razão)
- [Opção B] (descartado: razão)
```

---

> **💡 Importante**: Documente decisões importantes para evitar retrabalho e manter consistência
