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
