
# README Automático

Automatize a geração e atualização dos arquivos `README.md` dos seus projetos.

Após a instalação, basta salvar um arquivo `.prw` ou `.tlpp` para que o `README.md` seja atualizado automaticamente.

---

## Funcionalidades

- Geração automática do `README.md`;
- Atualização ao salvar arquivos `.prw` e `.tlpp`;
- Preserva as configurações existentes do Visual Studio Code;
- Configuração automática da extensão **Run On Save**;
- Instalação simples através de um script PowerShell.

---

## Requisitos

Antes de instalar, certifique-se de possuir:

- Windows
- PowerShell 5.1 ou superior
- Git
- Visual Studio Code

---

# Instalação

## 1. Clone o repositório

```bash
git clone https://github.com/kauabaldin/readme-automatico.git
```

Entre na pasta:

```bash
cd readme-automatico
```

---

## 2. Execute o instalador

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

## 3. Selecione a pasta dos seus projetos

O instalador abrirá automaticamente uma janela para seleção da pasta onde seus projetos estão armazenados.

Exemplos:

```text
C:\Projetos
```

ou

```text
D:\Workspace
```

---

## O que será configurado?

Durante a instalação serão realizadas automaticamente as seguintes configurações:

- Criação da pasta `scripts`, caso não exista;
- Cópia do script de geração automática;
- Criação da pasta `.vscode`, caso não exista;
- Configuração da extensão **Run On Save**;
- Adição da recomendação da extensão no Visual Studio Code;
- Preservação das configurações existentes.

> [!NOTE]
> Nenhuma configuração existente do Visual Studio Code é removida ou sobrescrita.

---

# Como utilizar

Após a instalação basta abrir seus projetos no Visual Studio Code.

Sempre que um arquivo `.prw` ou `.tlpp` for salvo, o `README.md` será atualizado automaticamente.

Caso queira executar manualmente:

```bat
readme-automatico.bat
```

---

# Atualizando a ferramenta

Atualize o repositório:

```bash
git pull
```

Depois execute novamente:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\install.ps1
```

---

# Desinstalação

Execute:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\uninstall.ps1
```

A desinstalação remove apenas os arquivos e configurações adicionados pelo README Automático.

---

# Contribuindo

Caso queira contribuir com melhorias, sinta-se à vontade para abrir uma **Issue** ou enviar um **Pull Request**.

---

# Licença

Este projeto está licenciado sob a **MIT License**.

---

<div align="center">

**Automatizando a documentação para que você possa focar no desenvolvimento.**

</div>