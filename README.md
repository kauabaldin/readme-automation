
# README Automático

> Automatize a geração e atualização dos arquivos `README.md` dos seus projetos com apenas uma instalação.

O **README Automático** monitora arquivos `.prw` e `.tlpp` e mantém o `README.md` sempre atualizado, eliminando a necessidade de editar a documentação manualmente.

> [!TIP]
> Após a instalação, basta salvar um arquivo `.prw` ou `.tlpp` para que o `README.md` do módulo seja atualizado automaticamente.

---

## Funcionalidades

- Geração automática do `README.md`
- Atualização automática ao salvar arquivos `.prw` e `.tlpp`
- Compatível com projetos contendo múltiplos módulos
- Instalação simplificada
- Preserva as configurações existentes do Visual Studio Code
- Configura automaticamente a extensão **Run On Save**
- Atualização manual quando necessário

---

## Estrutura do Projeto

```text
readme-automatico/
│
├── scripts/
│   ├── generate-readmes.ps1
│   ├── install.ps1
│   └── uninstall.ps1
│
├── .gitignore
├── LICENSE
├── README.md
└── readme-automatico.bat
```

---

## Requisitos

Antes de instalar, certifique-se de possuir:

- Windows
- PowerShell 5.1 ou superior
- Visual Studio Code
- Git

---

## Instalação

### 1. Clone o repositório

```bash
git clone https://github.com/kauabaldin/readme-automatico.git
```

Entre na pasta:

```bash
cd readme-automatico
```

---

### 2. Execute o instalador

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

### 3. Selecione a pasta dos seus projetos

O instalador abrirá uma janela para que você selecione a pasta onde seus projetos estão armazenados.

Exemplos:

```text
C:\Projetos
```

ou

```text
D:\Workspace
```

Não é necessário digitar o caminho manualmente.

---

## O que o instalador faz?

Durante a instalação, o README Automático:

- Cria a pasta `scripts`, caso não exista;
- Copia o script de geração automática;
- Cria a pasta `.vscode`, caso não exista;
- Preserva as configurações existentes do Visual Studio Code;
- Configura automaticamente o **Run On Save**;
- Adiciona a recomendação da extensão **Run On Save**;
- Instala a extensão automaticamente (quando possível);
- Cria um arquivo interno para controle da instalação.

> [!NOTE]
> Nenhuma configuração existente do Visual Studio Code é removida ou sobrescrita.

---

## Como utilizar

Após concluir a instalação, basta abrir seus projetos normalmente no Visual Studio Code.

Sempre que salvar um arquivo:

- `.prw`
- `.tlpp`

o `README.md` será atualizado automaticamente.

---

## Atualização manual

Caso deseje atualizar todos os READMEs manualmente:

```bat
readme-automatico.bat
```

---

## Exemplo de README Gerado

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

## Atualizando a ferramenta

Atualize o repositório:

```bash
git pull
```

Depois execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

## Desinstalação

Execute:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\uninstall.ps1
```

A desinstalação remove apenas os arquivos e configurações adicionados pelo **README Automático**, preservando as configurações pessoais existentes.

---

## Contribuindo

Contribuições são sempre bem-vindas.

Caso encontre algum problema ou tenha sugestões de melhoria:

* Abra uma Issue;
* Envie um Pull Request.

---

## Licença

Este projeto está licenciado sob a **MIT License**.

---

<div align="center">

**Automatizando a documentação para que você possa focar no desenvolvimento.**

</div>

