# Script de Sincronização de Contexto (Windows)
# Atualiza arquivos de contexto antes de commit

Write-Host "🔄 Sincronizando contexto do projeto..." -ForegroundColor Cyan

# Verifica se estamos em um repositório git
try {
    git rev-parse --git-dir 2>&1 | Out-Null
} catch {
    Write-Host "❌ Erro: Não é um repositório git" -ForegroundColor Red
    exit 1
}

# Atualiza timestamp nos arquivos de contexto
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"

Write-Host "📅 Atualizando timestamps..." -ForegroundColor Blue

# Função para atualizar última atualização
function Update-Timestamp {
    param($file)

    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        $content = $content -replace '\*\*Última atualização\*\*:.*', "**Última atualização**: $timestamp"
        Set-Content -Path $file -Value $content -NoNewline
        Write-Host "  ✓ Atualizado: $file" -ForegroundColor Green
    }
}

# Atualiza timestamps
Update-Timestamp ".copilot/context.md"
Update-Timestamp ".copilot/tasks.md"
Update-Timestamp ".copilot/decisions.md"
Update-Timestamp ".copilot/memory.md"

# Mostra status dos arquivos de contexto
Write-Host "`n📊 Status dos arquivos de contexto:" -ForegroundColor Blue
try {
    git status --short .copilot/ .github/copilot-instructions.md .vscode/copilot-custom.md
} catch {
    Write-Host "  Nenhuma mudança detectada"
}

Write-Host "`n✅ Sincronização concluída!" -ForegroundColor Green
Write-Host "💡 Dica: Commit os arquivos de contexto junto com suas mudanças" -ForegroundColor Yellow
