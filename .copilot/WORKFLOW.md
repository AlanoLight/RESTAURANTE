# Fluxo do Sistema de Sincronização

## 🔄 Visão Geral

```
┌─────────────────────────────────────────────────────────────┐
│                    GITHUB REPOSITORY                         │
│                                                              │
│  ┌────────────────────────────────────────────────────┐    │
│  │              .copilot/ (Contexto Compartilhado)     │    │
│  │                                                      │    │
│  │  • context.md    - Estado atual                     │    │
│  │  • tasks.md      - Lista de tarefas                 │    │
│  │  • decisions.md  - Decisões técnicas                │    │
│  │  • memory.md     - Padrões e convenções             │    │
│  └────────────────────────────────────────────────────┘    │
│                                                              │
│  ┌────────────────────────────────────────────────────┐    │
│  │         .github/copilot-instructions.md             │    │
│  │         (Instruções para ambos Copilots)            │    │
│  └────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────┘
                        ↑                    ↑
                        │                    │
                    git pull            git pull
                    git push            git push
                        │                    │
                        ↓                    ↓
        ┌───────────────────────┐  ┌───────────────────────┐
        │   VS CODE COPILOT     │  │  GITHUB COPILOT CHAT  │
        │   (Desktop/PC)        │  │  (Mobile/Web)         │
        └───────────────────────┘  └───────────────────────┘
```

## 📱 Workflow Detalhado

### Cenário A: Trabalhando no VS Code

```
    ┌──────────────┐
    │ INICIAR      │
    └──────┬───────┘
           │
           ↓
    ┌──────────────────────────┐
    │ git pull                 │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────────────────┐
    │ Ler .copilot/context.md  │
    │ Ler .copilot/tasks.md    │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────────────────┐
    │ TRABALHAR                │
    │ (VS Code Copilot ajuda)  │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────────────────┐
    │ Atualizar context.md     │
    │ Atualizar tasks.md       │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────────────────┐
    │ npm run sync             │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────────────────┐
    │ git add .                │
    │ git commit -m "..."      │
    │ git push                 │
    └──────┬───────────────────┘
           │
           ↓
    ┌──────────────┐
    │ FINALIZAR    │
    └──────────────┘
```

### Cenário B: Trabalhando no GitHub Chat

```
    ┌──────────────┐
    │ INICIAR      │
    └──────┬───────┘
           │
           ↓
    ┌──────────────────────────────────────┐
    │ "Leia .copilot/context.md e          │
    │  .copilot/tasks.md"                  │
    └──────┬───────────────────────────────┘
           │
           ↓
    ┌──────────────────────────────────────┐
    │ TRABALHAR                            │
    │ (GitHub Copilot Chat implementa)     │
    └──────┬───────────────────────────────┘
           │
           ↓
    ┌──────────────────────────────────────┐
    │ "Atualize .copilot/context.md com    │
    │  o que fizemos"                      │
    └──────┬───────────────────────────────┘
           │
           ↓
    ┌──────────────────────────────────────┐
    │ Copilot commita automaticamente      │
    └──────┬───────────────────────────────┘
           │
           ↓
    ┌──────────────┐
    │ FINALIZAR    │
    └──────────────┘
```

### Cenário C: Alternando Ambientes

```
VS Code ──────────────────────────────────> GitHub Chat
   │                                            │
   │ 1. Atualizar context.md                   │ 1. Pedir "Leia context.md"
   │ 2. npm run sync                           │ 2. Continuar trabalhando
   │ 3. git commit + push ─────────┐           │
   │                                │           │
   │                                ↓           │
   │                          [GITHUB REPO]     │
   │                                ↑           │
   │                                │           │
   │ 1. git pull ───────────────────┘           │ 1. Atualizar context.md
   │ 2. Ler context.md                         │ 2. Commitar mudanças
   │ 3. Continuar trabalhando                  │
   │                                            │
GitHub Chat <────────────────────────────── VS Code
```

## 🗂️ Estrutura de Arquivos

```
RESTAURANTE/
│
├── .copilot/                    # 🎯 CORE DO SISTEMA
│   ├── context.md              # ⭐ Estado atual (SEMPRE leia/atualize)
│   ├── tasks.md                # ✅ To-do list
│   ├── decisions.md            # 🎯 Por que fizemos X
│   ├── memory.md               # 🧠 Como fazer Y
│   ├── README.md               # 📚 Guia completo
│   ├── QUICKSTART.md           # ⚡ Referência rápida
│   ├── IMPLEMENTATION_SUMMARY.md # 📋 O que foi criado
│   ├── WORKFLOW.md             # 📊 Este arquivo
│   ├── sync.sh                 # 🔄 Script Linux/Mac
│   ├── sync.ps1                # 🔄 Script Windows
│   └── package.json            # Scripts npm
│
├── .github/
│   └── copilot-instructions.md # 🤖 Instruções globais Copilot
│
├── .vscode/
│   └── copilot-custom.md       # 💻 Instruções VS Code
│
├── apps/
│   ├── web/                    # Next.js app
│   └── desktop/                # Electron app
│
├── README.md                   # 📖 Documentação projeto
└── package.json                # 📦 Scripts raiz
```

## 🎯 Arquivos por Função

### 📍 Para Saber "Onde Estou?"
- `.copilot/context.md` ← LEIA PRIMEIRO

### ✅ Para Saber "O que Fazer?"
- `.copilot/tasks.md`

### 🤔 Para Saber "Por Que Assim?"
- `.copilot/decisions.md`

### 💻 Para Saber "Como Fazer?"
- `.copilot/memory.md`

### 📚 Para Saber "Como Usar Sistema?"
- `.copilot/QUICKSTART.md` (rápido)
- `.copilot/README.md` (completo)
- `.copilot/WORKFLOW.md` (visual - este arquivo)

### 🤖 Para Copilot Entender Projeto
- `.github/copilot-instructions.md` (lido automaticamente)
- `.vscode/copilot-custom.md` (VS Code específico)

## 🔄 Ciclo de Sincronização

```
┌──────────────────────────────────────────────────────┐
│                   CICLO COMPLETO                      │
└──────────────────────────────────────────────────────┘

1. PULL
   ↓
   git pull origin main
   ↓

2. LER CONTEXTO
   ↓
   cat .copilot/context.md
   cat .copilot/tasks.md
   ↓

3. TRABALHAR
   ↓
   [Escrever código, implementar features]
   ↓

4. ATUALIZAR CONTEXTO
   ↓
   vim .copilot/context.md  (descrever estado atual)
   vim .copilot/tasks.md    (marcar tarefas [x])
   ↓

5. SINCRONIZAR
   ↓
   npm run sync
   ↓

6. COMMIT
   ↓
   git add .
   git commit -m "feat: descrição"
   ↓

7. PUSH
   ↓
   git push
   ↓

8. VOLTAR AO PASSO 1 (ou trocar de ambiente)
```

## 🎨 Estados do Sistema

### ✅ Estado Sincronizado
```
VS Code                 GitHub                GitHub Chat
   │                       │                        │
   │ ◄─── git pull ────────┤                        │
   │                       │                        │
   │      context.md       │      context.md        │
   │      (atualizado)     │      (atualizado)      │
   │                       │                        │
   └───── git push ───────►│◄───── git push ────────┘
                           │
                   [TODOS ATUALIZADOS]
```

### ⚠️ Estado Dessincronizado
```
VS Code                 GitHub                GitHub Chat
   │                       │                        │
   │ context.md (v1)       │ context.md (v2)       │ context.md (v3)
   │                       │                        │
   │                       │                        │
   └───────────────────────┴────────────────────────┘
                   [CONFLITO! Faça git pull]
```

## 💡 Regras de Ouro

### ⭐ SEMPRE antes de trabalhar:
1. `git pull`
2. Ler `.copilot/context.md`

### ⭐ SEMPRE antes de parar:
1. Atualizar `.copilot/context.md`
2. `npm run sync`
3. `git commit + push`

### ⭐ SEMPRE ao trocar ambiente:
1. Push no ambiente atual
2. Pull no novo ambiente
3. Ler `.copilot/context.md`

## 🚀 Quick Reference

| Ação | VS Code | GitHub Chat |
|------|---------|-------------|
| **Iniciar** | `git pull && cat .copilot/context.md` | "Leia .copilot/context.md" |
| **Trabalhar** | Codificar + Copilot | Pedir ao Chat |
| **Pausar** | Atualizar context.md manualmente | "Atualize context.md" |
| **Finalizar** | `npm run sync && git push` | Chat commita auto |
| **Trocar** | Push → Continue no Chat | Pull → Continue no VS Code |

---

**Última atualização**: 2026-05-31 19:05

> 💡 **Dica Visual**: Imprima este diagrama ou mantenha aberto para referência rápida!
