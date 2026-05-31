# Guia Rápido - Sistema de Sincronização

## 🚀 Para Começar Agora

### Primeira Vez
✅ Nada a fazer! Sistema já configurado.

### Toda Vez Que For Trabalhar

#### 📱 No GitHub Copilot Chat (Mobile/Web)
```
"Leia .copilot/context.md e .copilot/tasks.md para me atualizar sobre o projeto"
```

#### 💻 No VS Code Copilot (Desktop)
```bash
git pull
cat .copilot/context.md
cat .copilot/tasks.md
```

### Ao Finalizar Trabalho

#### 📱 No GitHub Copilot Chat
```
"Atualize .copilot/context.md com o que fizemos hoje e marque as tarefas concluídas em .copilot/tasks.md"
```

#### 💻 No VS Code
```bash
# 1. Atualize manualmente os arquivos ou peça ao Copilot
# 2. Sincronize
npm run sync  # Linux/Mac
npm run sync:win  # Windows

# 3. Commit
git add .
git commit -m "feat: [o que você fez]"
git push
```

## 📁 Arquivos Importantes

| Arquivo | O que é | Quando usar |
|---------|---------|-------------|
| `.copilot/context.md` | Estado atual do projeto | Sempre ao iniciar/finalizar |
| `.copilot/tasks.md` | Lista de tarefas | Quando completar/adicionar tarefa |
| `.copilot/decisions.md` | Decisões técnicas | Quando tomar decisão importante |
| `.copilot/memory.md` | Padrões do código | Consultar ao codificar |
| `.copilot/README.md` | Guia completo | Quando tiver dúvidas |

## 💡 Regra de Ouro

**Sempre que trocar de ambiente (VS Code ↔️ GitHub Chat):**
1. ✅ Atualize `.copilot/context.md`
2. ✅ Execute `npm run sync`
3. ✅ Commit e push

**Ao retomar trabalho:**
1. ✅ Pull
2. ✅ Leia `.copilot/context.md`

## 🆘 Problemas Comuns

**"Não sei o que estava fazendo"**
→ Leia `.copilot/context.md`

**"Esqueci de atualizar contexto"**
→ Atualize agora! Use git log para lembrar

**"Conflito ao fazer merge"**
→ Mantenha a versão mais recente

**"Contexto desatualizado"**
→ `git pull` primeiro

## 📖 Documentação Completa

Veja `.copilot/README.md` para guia completo com exemplos e troubleshooting detalhado.
