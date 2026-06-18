[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# Universal Agent Skill Builder

A meta-agent skill that simplifies the creation, multi-platform setup, localization, deployment, and promotion of custom AI Agent Skills.

## Overview

**Universal Agent Skill Builder** is a specialized tool designed to help developers build and manage custom agent skills across various AI coding tools (Claude Code, Antigravity, Codex, etc.). Provide a brief description of a desired capability, and the skill handles design, installer scripting, 5-language documentation, Git repository setup, and community promotion drafts.

## Features

- **Multi-Platform Integration**: Installs custom agent skills for Claude Code, Codex, Antigravity, Gemini CLI, and OpenCode.
- **Cross-Platform Scripting**: Generates ready-to-run Shell (`install.sh`) and PowerShell (`install.ps1`) scripts for seamless local and global installations.
- **Automated Translation**: Auto-generates standard markdown READMEs in English, Korean, Japanese, Spanish, and Chinese with interlinked navigation headers.
- **Git & GitHub Integration**: Configures local repository initializations and handles pushing updates to remote GitHub repositories.
- **Promotion Kit**: Writes clean, non-hyperbolic pitch drafts optimized for technical platforms like Hacker News and Geek News.

## Installation

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

## Usage

Once installed, invoke your agent and describe the new capability you wish to turn into a skill:

```
"Create a skill that scans directories for unused npm dependencies, deletes them, and posts the cleanup report to Slack."
```

The Agent will trigger the `universal-agent-skill-builder` process to structure, build, document, push, and promote your new skill.
