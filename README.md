[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# 🚀 Universal Agent Skill Builder

A developer-centric meta-agent skill that simplifies the creation, multi-platform packaging, localization, deployment, and promotion of custom AI Agent Skills.

---

## 📋 Overview

**Universal Agent Skill Builder** is a specialized orchestrator designed to help developers build and manage custom agent skills across various AI coding tools (Claude Code, Antigravity, Codex, etc.). Provide a brief description of a desired capability, and the skill handles design, installer scripting, 5-language documentation, Git repository setup, and community promotion drafts.

## ✨ Features

- **Multi-Platform Integration**: Installs custom agent skills for Claude Code, Codex, Antigravity, Gemini CLI, and OpenCode.
- **Cross-Platform Scripting**: Generates ready-to-run Shell (`install.sh`) and PowerShell (`install.ps1`) scripts for seamless local and global installations.
- **Automated Translation**: Auto-generates standard markdown READMEs in English, Korean, Japanese, Spanish, and Chinese with interlinked navigation headers.
- **Git & GitHub Integration**: Configures local repository initializations and handles pushing updates to remote GitHub repositories.
- **Promotion Kit**: Writes clean, non-hyperbolic pitch drafts optimized for technical platforms like Hacker News and Geek News.

## 🛠️ Tech Stack

![Bash/Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=flat&logo=powershell&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-%23000000.svg?style=flat&logo=markdown&logoColor=white)
![YAML](https://img.shields.io/badge/YAML-%23CB171E.svg?style=flat&logo=yaml&logoColor=white)

## ⚙️ Technical Details

### 📂 Directory Structure

```
universal-agent-skill-builder/
├── SKILL.md          # 🧠 Agent instructions & workflow definition
├── install.sh        # 🐚 macOS/Linux installer script (Bash 3+ compatible)
├── install.ps1       # ⚡ Windows installer script (PowerShell)
├── README.md         # 🇬🇧 English Documentation (Base)
├── README.ko.md      # 🇰🇷 Korean Documentation
├── README.ja.md      # 🇯🇵 Japanese Documentation
├── README.es.md      # 🇪🇸 Spanish Documentation
├── README.zh.md      # 🇨🇳 Chinese Documentation
└── promote_hn_geek.md# 📢 Hacker News & Geek News promotion drafts
```

### 🧩 How It Works

1. **Phase 0**: Parses the developer's idea and proposes a clean Git repository name.
2. **Phase 1**: Brainstorms requirements, maps dependencies, and generates the `SKILL.md` (and optional Python `uv` helper scripts).
3. **Phase 2**: Bundles platform installer files targeting the specific skill injection paths.
   - *Compatibility Note*: The `install.sh` uses switch-case functions instead of associative arrays (`declare -A`) to maintain native compatibility with macOS default Bash 3.2.57.
4. **Phase 3 & 4**: Generates base documentation and translates it into Korean, Japanese, Spanish, and Chinese with cross-linking.
5. **Phase 5**: Runs Git initialization, associates the remote, and pushes the local workspace.
6. **Phase 6**: Compiles factual HN and Geek News promotional copy.

## 📥 Installation

### Prerequisite
You need an active terminal environment with `git` and one of the supported AI coding assistants installed.

### Global Installation (Recommended)
Clone the repository and run the installer:

```bash
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
./install.sh --global
```

For Windows (PowerShell):
```powershell
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
.\install.ps1 -Global
```

### Local Installation (Project-Scoped)
To install the skill within a specific workspace:
```bash
./install.sh --local
```

## 💡 Usage

Once installed, invoke your agent and describe the new capability you wish to turn into a skill:

```
"Create a skill that scans directories for unused npm dependencies, deletes them, and posts the cleanup report to Slack."
```

The Agent will trigger the `universal-agent-skill-builder` process to structure, build, document, push, and promote your new skill.

---

## 📄 License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This project is licensed under the terms of the [MIT License](https://opensource.org/licenses/MIT).
