# Contexto Atual do Projeto

**Última atualização**: 2026-05-31 19:05

## 🎯 O que estamos fazendo agora

Implementando sistema de sincronização de contexto entre GitHub Copilot Chat e VS Code Copilot para permitir trabalho contínuo entre diferentes ambientes (PC e mobile).

## 📊 Status do Projeto

- **Branch atual**: `claude/1-implementacao-do-menu`
- **Fase**: Desenvolvimento inicial - Estrutura base criada
- **Próximos passos**: Implementar funcionalidades do sistema de pedidos

## 🏗️ Arquitetura

### Apps
- **Web** (`apps/web/`): Next.js 15 + TypeScript + Tailwind CSS
- **Desktop** (`apps/desktop/`): Electron + React + TypeScript + Vite

### Stack Tecnológica
- **Frontend Web**: Next.js, React, Tailwind CSS
- **Frontend Desktop**: React, Electron
- **Build**: Vite (desktop), Next.js (web)
- **Linguagem**: TypeScript
- **Gerenciamento**: npm workspaces (monorepo)

## 🎨 Funcionalidades Planejadas

1. **Sistema de Pedidos**
   - Gestão de mesas
   - Delivery
   - Retirada no balcão

2. **Gestão Financeira**
   - Faturamento diário
   - Ticket médio
   - Margem de lucro

3. **Painel Operacional**
   - Monitor da cozinha
   - Controle de estoque
   - Tempo de preparo

## 📝 Notas Importantes

- Monorepo com workspaces npm
- Desktop e Web compartilham componentes quando possível
- Foco em performance e UX profissional
- Deploy web na Vercel
- Desktop empacotado como .exe para Windows

---

> **💡 Dica**: Sempre atualize este arquivo ao mudar de contexto ou completar uma tarefa importante
