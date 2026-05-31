# RESTAURANTE PRO

Base profissional para:

- Site moderno (Next.js + TypeScript + Tailwind)
- Aplicativo desktop Windows (.exe) com Electron + React + TypeScript

## Estrutura

```
.
|-- apps/
|   |-- web/       # Site profissional
|   `-- desktop/   # App desktop e empacotamento .exe
|-- .vscode/       # Tarefas e recomendacoes do VS Code
`-- package.json   # Monorepo com workspaces
```

## Requisitos

- Node.js LTS instalado
- Git instalado
- VS Code com extensoes recomendadas

## Primeira configuracao

1. Instalar dependencias na raiz:

```bash
npm install
```

2. Rodar somente o site web:

```bash
npm run dev:web
```

3. Rodar somente o app desktop:

```bash
npm run dev:desktop
```

4. Rodar os dois juntos:

```bash
npm run dev
```

## Build para producao

Build completo (web + desktop):

```bash
npm run build
```

## Gerar instalador .exe (Windows)

Na raiz do projeto:

```bash
npm run package:exe
```

O instalador sera gerado dentro de `apps/desktop/release`.

## Variaveis de ambiente

- Arquivo base: `.env.example`
- Web: `apps/web/.env.local.example`

Se quiser usar variaveis locais:

1. Copie `.env.example` para `.env`
2. Copie `apps/web/.env.local.example` para `apps/web/.env.local`

## Publicar site na Vercel

1. Crie conta em https://vercel.com com GitHub
2. Importe o repositorio
3. Configure o Root Directory como `apps/web`
4. Framework: Next.js (detectado automaticamente)
5. Clique em Deploy

## Comandos uteis

- `npm run lint` -> lint do app web
- `npm run build:web` -> build apenas web
- `npm run build:desktop` -> build apenas desktop
- `npm run package:exe` -> gera instalador .exe
- `npm run sync` -> sincroniza arquivos de contexto (Linux/Mac)
- `npm run sync:win` -> sincroniza arquivos de contexto (Windows)

## Sistema de Sincronizacao de Contexto

Este projeto usa um sistema de sincronizacao para permitir trabalho continuo entre GitHub Copilot Chat (mobile/web) e VS Code Copilot (desktop).

### Arquivos de Contexto

- `.copilot/context.md` - Contexto atual do projeto
- `.copilot/tasks.md` - Lista de tarefas e progresso
- `.copilot/decisions.md` - Decisoes tecnicas
- `.copilot/memory.md` - Padroes e convencoes
- `.copilot/README.md` - Guia completo do sistema

### Como Usar

**No VS Code:**
1. Leia `.copilot/context.md` ao iniciar
2. Trabalhe normalmente
3. Atualize contexto ao finalizar
4. Execute `npm run sync` (ou `npm run sync:win`)
5. Commit e push

**No GitHub Copilot Chat:**
1. Peca ao Copilot para ler `.copilot/context.md`
2. Continue de onde parou
3. Peca para atualizar contexto ao finalizar
4. Commit e push

Para mais detalhes, veja `.copilot/README.md`
