# README Tools

Ferramenta para atualizar automaticamente os READMEs dos módulos com base nos arquivos `.prw` e `.tlpp`.

## Como instalar

Clone este repositório:

```powershell
git clone https://github.com/SEU-USUARIO/readme-tools.git
cd readme-tools
```

Execute:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

Informe o caminho da pasta onde ficam os módulos.

Exemplo:

```text
C:\RepositorioGuerra
```

## Como usar

Depois da instalação, ao salvar arquivos `.prw` ou `.tlpp` no VS Code, os READMEs serão atualizados automaticamente.

Também é possível atualizar manualmente executando:

```bat
updateReadme.bat
```

## Requisito

Extensão recomendada do VS Code:

```text
emeraldwalk.runonsave
```
