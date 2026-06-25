Add-Type -AssemblyName System.Windows.Forms

Write-Host ""
Write-Host "==========================================" -ForegroundColor Red
Write-Host "      README AUTOMATION UNINSTALLER" -ForegroundColor Red
Write-Host "==========================================" -ForegroundColor Red
Write-Host ""

$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.Description = "Selecione a pasta onde o Readme Automation foi instalado"

if ($folderBrowser.ShowDialog() -ne "OK") {
  Write-Host ""
  Write-Host "Desinstalação cancelada." -ForegroundColor Yellow
  exit
}

$target = $folderBrowser.SelectedPath

$vscodePath = Join-Path $target ".vscode"
$scriptsPath = Join-Path $target "scripts"
$controlFile = Join-Path $vscodePath "readme-automation.json"

if (-not (Test-Path $controlFile)) {
  Write-Host ""
  Write-Host "Arquivo de controle não encontrado." -ForegroundColor Yellow
  Write-Host "Mesmo assim, a remoção segura será executada."
  Write-Host ""
}

$scriptFile = Join-Path $scriptsPath "generate-readmes.ps1"

if (Test-Path $scriptFile) {
  Remove-Item $scriptFile -Force
  Write-Host "Script removido."
}

$batchFile = Join-Path $target "updateReadme.bat"

if (Test-Path $batchFile) {
  Remove-Item $batchFile -Force
  Write-Host "updateReadme.bat removido."
}

$settingsPath = Join-Path $vscodePath "settings.json"

if (Test-Path $settingsPath) {
  try {
    $settings = Get-Content $settingsPath -Raw | ConvertFrom-Json

    if ($settings.PSObject.Properties.Name -contains "emeraldwalk.runonsave") {
      $settings.PSObject.Properties.Remove("emeraldwalk.runonsave")
      $settings | ConvertTo-Json -Depth 20 | Set-Content $settingsPath -Encoding UTF8
      Write-Host "Configuração emeraldwalk.runonsave removida."
    }
  }
  catch {
    Write-Host "Não foi possível editar settings.json." -ForegroundColor Yellow
  }
}

$extensionsPath = Join-Path $vscodePath "extensions.json"

if (Test-Path $extensionsPath) {
  try {
    $extensions = Get-Content $extensionsPath -Raw | ConvertFrom-Json

    if ($extensions.PSObject.Properties.Name -contains "recommendations") {
      $extensions.recommendations = @(
        $extensions.recommendations | Where-Object { $_ -ne "emeraldwalk.runonsave" }
      )

      $extensions | ConvertTo-Json -Depth 20 | Set-Content $extensionsPath -Encoding UTF8
      Write-Host "Recomendação emeraldwalk.runonsave removida."
    }
  }
  catch {
    Write-Host "Não foi possível editar extensions.json." -ForegroundColor Yellow
  }
}

if (Test-Path $controlFile) {
  Remove-Item $controlFile -Force
  Write-Host "Arquivo de controle removido."
}

if (Test-Path $scriptsPath) {
  if ((Get-ChildItem $scriptsPath -Force | Measure-Object).Count -eq 0) {
    Remove-Item $scriptsPath -Force
    Write-Host "Pasta scripts removida."
  }
}

if (Test-Path $vscodePath) {
  if ((Get-ChildItem $vscodePath -Force | Measure-Object).Count -eq 0) {
    Remove-Item $vscodePath -Force
    Write-Host "Pasta .vscode removida."
  }
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host " Desinstalação concluída com sucesso!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""