# 🚀 Readme Automation

Automatiza a geração dos arquivos `README.md` dos módulos TOTVS sempre que um arquivo `.prw` ou `.tlpp` é salvo no Visual Studio Code.

---

# ✨ O que esta ferramenta faz?

Após a instalação, sempre que você salvar um arquivo:

* `.prw`
* `.tlpp`

o README do módulo será atualizado automaticamente.

Exemplo:

Antes:

```text
Modulo Financeiro

FINA001
```

Após adicionar um novo fonte:

```text
Modulo Financeiro

FINA001
FINA002
```

---

# 📋 Pré-requisitos

Antes de instalar, verifique se possui:

* Windows
* Git
* Visual Studio Code
* PowerShell 5.1 ou superior

---

# 📥 Instalação

## 1. Clone este repositório

```bash
git clone https://github.com/kauabaldin/readme-automation.git
```

Entre na pasta:

```bash
cd readme-automation
```

---

## 2. Execute o instalador

Abra um PowerShell como usuário comum e execute:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

---

## 3. Informe onde ficam os módulos

O instalador solicitará o caminho onde estão os repositórios da empresa.

Exemplo:

```text
C:\RepositorioGuerra
```

ou

```text
D:\Projetos\Empresa
```

---

## 4. Aguarde a configuração

Durante a instalação serão realizadas automaticamente as seguintes ações:

* ✅ Criação da pasta `scripts` (caso não exista);
* ✅ Cópia do `GenerateAllReadmes.ps1`;
* ✅ Criação da pasta `.vscode`;
* ✅ Atualização do `settings.json`;
* ✅ Atualização do `extensions.json`;
* ✅ Configuração do Run On Save.

Nenhuma configuração existente do VS Code será perdida.

---

## 5. Instale a extensão (caso necessário)

Se a extensão ainda não estiver instalada, o VS Code irá sugerir automaticamente.

Nome:

```text
Run On Save
```

ID:

```text
emeraldwalk.runonsave
```

Ou execute:

```bash
code --install-extension emeraldwalk.runonsave
```

---

# ▶️ Como utilizar

Depois da instalação basta abrir o projeto normalmente no VS Code.

Sempre que salvar um arquivo:

```text
.prw
```

ou

```text
.tlpp
```

o README será atualizado automaticamente.

---

# 🔄 Atualização manual

Caso deseje atualizar todos os READMEs manualmente:

```text
updateReadme.bat
```

ou

```powershell
powershell -ExecutionPolicy Bypass -File scripts\GenerateAllReadmes.ps1
```

---

# 🔄 Atualizando esta ferramenta

Quando houver uma nova versão:

```bash
git pull
```

Depois execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

---

# ❌ Desinstalação

Para remover todas as configurações instaladas:

```powershell
powershell -ExecutionPolicy Bypass -File uninstall.ps1
```

---

# ❓ Dúvidas

Caso encontre algum problema:

* Verifique se o VS Code está instalado.
* Confirme que a extensão **Run On Save** está habilitada.
* Execute novamente o `install.ps1`.

---

# 📄 Licença

Projeto distribuído sob a licença MIT.
