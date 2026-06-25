Add-Type -AssemblyName System.Windows.Forms

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "        README AUTOMATION INSTALLER" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.Description = "Selecione a pasta onde ficam seus projetos"
$folderBrowser.ShowNewFolderButton = $true

if ($folderBrowser.ShowDialog() -ne "OK") {
  Write-Host ""
  Write-Host "Instalação cancelada." -ForegroundColor Yellow
  exit
}

$target = $folderBrowser.SelectedPath

$vscodePath = Join-Path $target ".vscode"
$scriptsPath = Join-Path $target "scripts"
$controlFile = Join-Path $vscodePath "readme-automation.json"

New-Item -ItemType Directory -Force -Path $vscodePath | Out-Null
New-Item -ItemType Directory -Force -Path $scriptsPath | Out-Null

if (-not (Test-Path ".\scripts\GenerateAllReadmes.ps1")) {
  Write-Host "Arquivo scripts\GenerateAllReadmes.ps1 não encontrado." -ForegroundColor Red
  exit
}

Copy-Item ".\scripts\generate-readmes.ps1" `
  "$scriptsPath\generate-readmes.ps1" -Force
Copy-Item ".\updateReadme.bat" "$target\updateReadme.bat" -Force

$extensionsPath = Join-Path $vscodePath "extensions.json"

if (Test-Path $extensionsPath) {
  try {
    $extensions = Get-Content $extensionsPath -Raw | ConvertFrom-Json
  }
  catch {
    $extensions = [PSCustomObject]@{}
  }
}
else {
  $extensions = [PSCustomObject]@{}
}

if (-not ($extensions.PSObject.Properties.Name -contains "recommendations")) {
  $extensions | Add-Member -NotePropertyName recommendations -NotePropertyValue @() -Force
}

if (-not ($extensions.recommendations -contains "emeraldwalk.runonsave")) {
  $extensions.recommendations += "emeraldwalk.runonsave"
}

$extensions | ConvertTo-Json -Depth 20 | Set-Content $extensionsPath -Encoding UTF8

$settingsPath = Join-Path $vscodePath "settings.json"

if (Test-Path $settingsPath) {
  try {
    $settings = Get-Content $settingsPath -Raw | ConvertFrom-Json
  }
  catch {
    $settings = [PSCustomObject]@{}
  }
}
else {
  $settings = [PSCustomObject]@{}
}

$runOnSave = [PSCustomObject]@{
  commands = @(
    [PSCustomObject]@{
      match   = ".*\\.(prw|tlpp)$"
      isAsync = $true
      cmd     = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -File "${workspaceFolder}\scripts\generate-readmes.ps1"'
    }
  )
}

$settings | Add-Member -NotePropertyName "emeraldwalk.runonsave" -NotePropertyValue $runOnSave -Force
$settings | ConvertTo-Json -Depth 20 | Set-Content $settingsPath -Encoding UTF8

$control = [PSCustomObject]@{
  name             = "readme-automation"
  version          = "1.0.0"
  installed        = $true
  installedAt      = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
  files            = @(
    "scripts\GenerateAllReadmes.ps1",
    "updateReadme.bat",
    ".vscode\readme-automation.json"
  )
  vscodeSettings   = @(
    "emeraldwalk.runonsave"
  )
  vscodeExtensions = @(
    "emeraldwalk.runonsave"
  )
}

$control | ConvertTo-Json -Depth 20 | Set-Content $controlFile -Encoding UTF8

if (Get-Command code -ErrorAction SilentlyContinue) {
  Write-Host ""
  Write-Host "Instalando extensão Run On Save..." -ForegroundColor Cyan
  code --install-extension emeraldwalk.runonsave
}
else {
  Write-Host ""
  Write-Host "VS Code CLI não encontrada." -ForegroundColor Yellow
  Write-Host "Instale manualmente a extensão: emeraldwalk.runonsave"
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host " Instalação concluída com sucesso!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Pasta configurada: $target"
Write-Host "Abra essa pasta no VS Code e salve um arquivo .prw ou .tlpp para testar."
Write-Host ""