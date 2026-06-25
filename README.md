````markdown
# 🚀 Readme Automation

Ferramenta para automatizar a geração e atualização dos arquivos `README.md` em projetos TOTVS, baseada nos arquivos `.prw` e `.tlpp`.

O objetivo é manter todos os módulos documentados automaticamente, sem a necessidade de editar o README manualmente.

---

## ✨ Funcionalidades

- ✅ Geração automática do `README.md`
- ✅ Atualização ao salvar arquivos `.prw` e `.tlpp`
- ✅ Compatível com projetos contendo vários módulos
- ✅ Instalação simples através de um script PowerShell
- ✅ Não sobrescreve as configurações existentes do VS Code
- ✅ Adiciona automaticamente a configuração do Run On Save
- ✅ Recomenda automaticamente a extensão necessária do VS Code

---

# 📁 Estrutura do Projeto

```text
readme-automation/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── install.ps1
├── uninstall.ps1
├── updateReadme.bat
│
├── scripts/
│   └── GenerateAllReadmes.ps1
│
├── vscode/
│   ├── settings.template.json
│   └── extensions.template.json
│
├── examples/
│   ├── README.before.md
│   └── README.after.md
│
└── docs/
    ├── INSTALL.md
    └── HOW_IT_WORKS.md
````

---

# ⚙️ Requisitos

* Windows
* PowerShell 5.1+
* Visual Studio Code
* Git

---

# 📥 Instalação

Clone o repositório:

```bash
git clone https://github.com/kauabaldin/readme-automation.git
```

Entre na pasta:

```bash
cd readme-automation
```

Execute o instalador:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

Durante a instalação será solicitado o caminho da pasta onde ficam os módulos da empresa.

Exemplo:

```text
C:\RepositorioGuerra
```

ou

```text
D:\Projetos\Empresa
```

O instalador irá:

* Criar a pasta `scripts` caso não exista;
* Copiar o script `GenerateAllReadmes.ps1`;
* Criar a pasta `.vscode` caso não exista;
* Mesclar as configurações existentes do VS Code;
* Adicionar a recomendação da extensão **Run On Save**;
* Configurar a execução automática do script ao salvar arquivos `.prw` e `.tlpp`.

---

# ▶️ Utilização

Após a instalação basta editar qualquer arquivo:

* `.prw`
* `.tlpp`

Ao salvar (`Ctrl + S`) o README será atualizado automaticamente.

Também é possível executar manualmente:

```text
updateReadme.bat
```

---

# 📄 Exemplo de README Gerado

```markdown
# Modulo Financeiro

Repositorio dos fontes customizados do modulo.

---

| Fonte |
|------|
| FINA001 |
| FINA002 |
| FINA003 |
```

---

# 📦 Dependências

O projeto utiliza a extensão do VS Code:

**Run On Save**

ID:

```text
emeraldwalk.runonsave
```

Caso a extensão não esteja instalada, o VS Code irá sugerir sua instalação automaticamente ao abrir o projeto.

---

# 🔄 Atualização

Sempre que houver uma nova versão:

```bash
git pull
```

Caso existam novas funcionalidades execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1
```

---

# 🗑️ Remoção

Para remover todas as configurações instaladas:

```powershell
powershell -ExecutionPolicy Bypass -File uninstall.ps1
```

---

# 🤝 Contribuindo

Sugestões, melhorias e correções são sempre bem-vindas.

Caso encontre algum problema, abra uma Issue.

---

# 📄 Licença

Este projeto está licenciado sob a licença MIT.

```
```
