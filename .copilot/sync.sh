#!/bin/bash

# Script de Sincronização de Contexto
# Atualiza arquivos de contexto antes de commit

set -e

echo "🔄 Sincronizando contexto do projeto..."

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verifica se estamos em um repositório git
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Erro: Não é um repositório git"
    exit 1
fi

# Atualiza timestamp nos arquivos de contexto
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")

echo -e "${BLUE}📅 Atualizando timestamps...${NC}"

# Função para atualizar última atualização
update_timestamp() {
    local file=$1
    if [ -f "$file" ]; then
        # Usa sed para atualizar a linha de "Última atualização"
        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS
            sed -i '' "s/\*\*Última atualização\*\*:.*/\*\*Última atualização\*\*: $TIMESTAMP/" "$file"
        else
            # Linux
            sed -i "s/\*\*Última atualização\*\*:.*/\*\*Última atualização\*\*: $TIMESTAMP/" "$file"
        fi
        echo -e "${GREEN}  ✓${NC} Atualizado: $file"
    fi
}

# Atualiza timestamps
update_timestamp ".copilot/context.md"
update_timestamp ".copilot/tasks.md"
update_timestamp ".copilot/decisions.md"
update_timestamp ".copilot/memory.md"

# Mostra status dos arquivos de contexto
echo -e "\n${BLUE}📊 Status dos arquivos de contexto:${NC}"
git status --short .copilot/ .github/copilot-instructions.md .vscode/copilot-custom.md 2>/dev/null || echo "  Nenhuma mudança detectada"

echo -e "\n${GREEN}✅ Sincronização concluída!${NC}"
echo -e "${YELLOW}💡 Dica: Commit os arquivos de contexto junto com suas mudanças${NC}"
