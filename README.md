# 🚀 Readme Automation

> Automatize a geração e atualização dos arquivos **README.md** dos seus projetos com apenas uma instalação.

O **Readme Automation** monitora arquivos `.prw` e `.tlpp` e mantém o `README.md` sempre atualizado, eliminando a necessidade de editar a documentação manualmente.

> [!TIP]
> Após a instalação, basta salvar um arquivo `.prw` ou `.tlpp` para que o `README.md` do módulo seja atualizado automaticamente.

---

## ✨ Funcionalidades

- ✅ Geração automática do `README.md`
- ✅ Atualização automática ao salvar arquivos `.prw` e `.tlpp`
- ✅ Compatível com projetos contendo múltiplos módulos
- ✅ Instalação simplificada
- ✅ Preserva as configurações existentes do Visual Studio Code
- ✅ Configura automaticamente o **Run On Save**
- ✅ Instala automaticamente a extensão (quando disponível)
- ✅ Atualização manual através de comando

---

# 📂 Estrutura do Projeto

```text
readme-automation/
│
├── scripts/
│   ├── generate-readmes.ps1
│   ├── install.ps1
│   └── uninstall.ps1
│
├── .gitignore
├── LICENSE
├── README.md
└── readme-automation.bat
```

---

# 📋 Requisitos

Antes de instalar, verifique se possui:

- Windows
- PowerShell 5.1 ou superior
- Visual Studio Code
- Git

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
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

## 3. Selecione a pasta dos seus projetos

O instalador abrirá uma janela para que você selecione a pasta onde seus projetos estão armazenados.

Exemplos:

```text
C:\Projetos
```

ou

```text
D:\Workspace
```

Não é necessário informar o caminho manualmente.

---

# ⚙️ O que o instalador faz?

Durante a instalação, o Readme Automation:

- Cria a pasta `scripts` caso ela não exista;
- Copia o script `generate-readmes.ps1`;
- Cria a pasta `.vscode` caso ela não exista;
- Preserva as configurações existentes do VS Code;
- Adiciona a configuração do **Run On Save**;
- Adiciona a recomendação da extensão **emeraldwalk.runonsave**;
- Instala automaticamente a extensão (quando possível);
- Cria um arquivo interno para controle da instalação.

> [!NOTE]
> Nenhuma configuração existente do VS Code é removida ou sobrescrita.

---

# ▶️ Como utilizar

Após concluir a instalação, basta abrir seus projetos normalmente no Visual Studio Code.

Sempre que um arquivo abaixo for salvo:

- `.prw`
- `.tlpp`

o `README.md` será atualizado automaticamente.

---

# 🔄 Atualização manual

Caso deseje atualizar todos os READMEs manualmente:

```bat
readme-automation.bat
```

---

# 📄 Exemplo de README Gerado

````markdown
# Módulo Exemplo

Repositório contendo os fontes customizados do módulo.

---

| Fonte |
| ------ |
| EXEMPLO001 |
| EXEMPLO002 |
| EXEMPLO003 |
`````

---

# 🔄 Atualizando a ferramenta

Atualize o repositório:

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

A desinstalação remove apenas os arquivos e configurações adicionados pelo **Readme Automation**, preservando as configurações pessoais existentes.

---

# 🤝 Contribuindo

Contribuições são sempre bem-vindas!

Se encontrar algum problema ou tiver uma sugestão de melhoria:

* Abra uma **Issue**;
* Envie um **Pull Request**.

---

# 📄 Licença

Este projeto está licenciado sob a **MIT License**.

---

<div align="center">

**Automatizando a documentação para que você possa focar no desenvolvimento.**

</div>
