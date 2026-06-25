# 🚀 Readme Automation

> Automatize a geração e atualização dos arquivos **README.md** dos seus projetos de forma simples e automática.

O **Readme Automation** monitora arquivos `.prw` e `.tlpp` e mantém o `README.md` sempre atualizado, eliminando a necessidade de editar a documentação manualmente.

---

<p align="center">
  <img src="assets/banner.png" alt="Readme Automation Banner" width="900">
</p>

> 💡 *Opcional:* substitua a imagem acima por um banner ou GIF demonstrando a ferramenta em funcionamento.

---

## ✨ Funcionalidades

* ✅ Geração automática do `README.md`
* ✅ Atualização automática ao salvar arquivos `.prw` e `.tlpp`
* ✅ Compatível com projetos contendo múltiplos módulos
* ✅ Instalação simplificada
* ✅ Preserva as configurações existentes do VS Code
* ✅ Configura automaticamente o **Run On Save**
* ✅ Instala automaticamente a extensão quando possível
* ✅ Atualização manual via comando

---

## 📂 Estrutura do Projeto

```text
readme-automation/
│
├── scripts/
│   ├── generate-readmes.ps1
│   ├── install.ps1
│   └── uninstall.ps1
│
├── assets/
│   ├── banner.png
│   ├── demo.gif
│   └── logo.png
│
├── .gitignore
├── LICENSE
├── README.md
└── readme-automation.bat
```

---

## 📋 Requisitos

Antes de instalar, verifique se possui:

* Windows
* PowerShell 5.1+
* Visual Studio Code
* Git

---

# 📥 Instalação

## 1️⃣ Clone o repositório

```bash
git clone https://github.com/kauabaldin/readme-automation.git
```

Entre na pasta:

```bash
cd readme-automation
```

---

## 2️⃣ Execute o instalador

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

## 3️⃣ Selecione a pasta dos seus projetos

O instalador abrirá automaticamente uma janela para selecionar a pasta onde seus projetos estão armazenados.

Exemplo:

```text
C:\Projetos
```

ou

```text
D:\Workspace
```

Não é necessário digitar caminhos manualmente.

---

## ⚙️ O que o instalador faz?

Durante a instalação serão executadas automaticamente as seguintes etapas:

* Cria a pasta `scripts` caso não exista;
* Copia o script `generate-readmes.ps1`;
* Cria a pasta `.vscode` caso não exista;
* Mescla o `settings.json` existente;
* Mescla o `extensions.json` existente;
* Configura automaticamente o **Run On Save**;
* Instala (quando possível) a extensão **emeraldwalk.runonsave**;
* Cria um arquivo interno de controle da instalação.

> Nenhuma configuração existente do VS Code é apagada.

---

# ▶️ Como utilizar

Após a instalação basta abrir seus projetos normalmente no Visual Studio Code.

Sempre que salvar um arquivo:

```text
.prw
```

ou

```text
.tlpp
```

o `README.md` será atualizado automaticamente.

---

## 🔄 Atualização manual

Caso queira atualizar todos os READMEs manualmente:

```bat
readme-automation.bat
```

---

# 📄 Exemplo

Antes:

```text
Projeto
└── README.md
```

Após adicionar um novo fonte:

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

Atualize o projeto:

```bash
git pull
```

Depois execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

# ❌ Desinstalação

Execute:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\uninstall.ps1
```

A desinstalação remove apenas os arquivos e configurações adicionados pelo **Readme Automation**, preservando qualquer configuração pessoal existente.

---

# 🤝 Contribuindo

Contribuições são bem-vindas!

Caso encontre algum problema ou tenha sugestões:

* Abra uma **Issue**;
* Envie um **Pull Request**.

---

# 📄 Licença

Este projeto está licenciado sob a **MIT License**.

---

<p align="center">
Feito com ❤️ para automatizar tarefas repetitivas e manter a documentação sempre atualizada.
</p>
