# 🚀 Readme Automation

Automatize a geração e atualização dos arquivos `README.md` dos seus projetos sempre que um arquivo `.prw` ou `.tlpp` for salvo no Visual Studio Code.

---

## ✨ Funcionalidades

* ✅ Geração automática do `README.md`
* ✅ Atualização automática ao salvar arquivos `.prw` e `.tlpp`
* ✅ Compatível com projetos com múltiplos módulos
* ✅ Instalação simplificada
* ✅ Preserva as configurações existentes do VS Code
* ✅ Configura automaticamente o Run On Save

---

# 📋 Pré-requisitos

Antes de instalar, certifique-se de possuir:

* Windows
* Git
* Visual Studio Code
* PowerShell 5.1 ou superior

---

# 📥 Instalação

## 1. Clone o repositório

```bash
git clone https://github.com/kauabaldin/readme-automation.git
```

Entre na pasta:

```bash
cd readme-automation
```

---

## 2. Execute o instalador

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

---

## 3. Informe o diretório dos seus projetos

Durante a instalação será solicitado o caminho onde estão armazenados os seus projetos.

Exemplos:

```text
C:\Projetos
```

ou

```text
D:\Workspace
```

---

## ⚙️ O que o instalador faz?

Automaticamente o instalador:

* Cria a pasta `scripts` (caso não exista);
* Copia o script `GenerateAllReadmes.ps1`;
* Cria a pasta `.vscode` (caso não exista);
* Mescla as configurações existentes do VS Code;
* Configura a extensão **Run On Save**;
* Configura a atualização automática dos arquivos `README.md`.

> **Nenhuma configuração existente do VS Code é removida ou sobrescrita.**

---

# ▶️ Como utilizar

Após a instalação, basta editar qualquer arquivo:

* `.prw`
* `.tlpp`

Ao salvar (`Ctrl + S`), o README será atualizado automaticamente.

Também é possível executar a atualização manualmente:

```text
updateReadme.bat
```

ou

```powershell
powershell -ExecutionPolicy Bypass -File scripts\GenerateAllReadmes.ps1
```

---

# 📄 Exemplo de README Gerado

```markdown
# Módulo Exemplo

Repositório contendo os fontes customizados do módulo.

---

| Fonte |
| ------ |
| EXEMPLO001 |
| EXEMPLO002 |
| EXEMPLO003 |
```

---

# 🔄 Atualizando a ferramenta

Sempre que houver uma nova versão:

```bash
git pull
```

Em seguida execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

---

# ❌ Desinstalação

```powershell
powershell -ExecutionPolicy Bypass -File uninstall.ps1
```

---

# 🤝 Contribuindo

Contribuições são bem-vindas!

Caso encontre algum problema ou tenha sugestões de melhorias, abra uma **Issue** ou envie um **Pull Request**.

---

# 📄 Licença

Este projeto está licenciado sob a licença **MIT**.
