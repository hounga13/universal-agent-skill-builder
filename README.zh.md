[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# 🚀 Universal Agent Skill Builder (通用智能体技能生成器)

一个面向开发者的元智能体技能，旨在简化自定义 AI 智能体技能的设计、多平台打包、本地化、托管部署及推广流程。

---

## 📋 概述

**Universal Agent Skill Builder** 是一款专为开发者设计的辅助工具，用于跨各种 AI 编码工具（Claude Code、Antigravity、Codex 等）快速构建与管理自定义智能体技能。您只需提供所需功能的简要描述，该技能将一站式自动完成方案设计、安装脚本编写、5 国语言文档生成、Git 仓库配置以及技术社区推广软文拟写。

## ✨ 主要功能

- **多平台深度集成**：自动为 Claude Code, Codex, Antigravity, Gemini CLI 和 OpenCode 等主流 AI 编码助手适配和安装自定义技能。
- **跨平台一键安装**：为 Unix 类系统（Linux, macOS）生成 Shell 脚本（`install.sh`），并为 Windows 用户提供 PowerShell 脚本（`install.ps1`）。
- **多语言自动本地化**：自动生成英语、韩语、日语、西班牙语和中文的 README 文档，并在每个文档顶部提供方便的相互切换链接。
- **Git 与 GitHub 联动**：协助完成本地 Git 仓库初始化，并支持将其推送至 GitHub 远程托管仓库。
- **社区推广套件**：专为 Hacker News 和 Geek News 等技术平台撰写客观、克制、无夸大成分的产品介绍初稿。

## 🛠️ 技术栈

![Bash/Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=flat&logo=powershell&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-%23000000.svg?style=flat&logo=markdown&logoColor=white)
![YAML](https://img.shields.io/badge/YAML-%23CB171E.svg?style=flat&logo=yaml&logoColor=white)

## ⚙️ 技术细节

### 📂 目录结构

```
universal-agent-skill-builder/
├── SKILL.md          # 🧠 智能体指令说明与工作流定义
├── install.sh        # 🐚 macOS/Linux 安装脚本 (兼容 Bash 3+)
├── install.ps1       # ⚡ Windows 安装脚本 (PowerShell)
├── README.md         # 🇬🇧 英文文档 (基础)
├── README.ko.md      # 🇰🇷 韩文文档
├── README.ja.md      # 🇯🇵 日文文档
├── README.es.md      # 🇪🇸 西班牙文文档
├── README.zh.md      # 🇨🇳 中文文档
└── promote_hn_geek.md# 📢 Hacker News 与 Geek News 推广稿件草案
```

### 🧩 工作原理

1. **Phase 0**：解析开发者的描述，并推荐规范的 Git 托管仓库名。
2. **Phase 1**：具体化技能需求并映射依赖项，生成 `SKILL.md`（以及必要的 Python `uv` 助手脚本）。
3. **Phase 2**：打包平台专属的安装路径脚本。
   - *兼容性说明*：针对 macOS 默认的 Bash 3.2.57，`install.sh` 避免了对关联数组（`declare -A`）的使用，改用 switch-case 函数，实现了原生环境的无阻碍执行。
4. **Phase 3 & 4**：依据基本英文档生成韩、日、西、中 4 国翻译，并使用链接交叉引用。
5. **Phase 5**：执行本地 Git 初始化、关联远程仓库及推送。
6. **Phase 6**：整理客观且没有营销色彩的技术社区推广文案。

## 📥 安装指南

### 前提条件
您的终端环境中需安装 `git`，且拥有任何一个支持의 AI 编码智能体。

### 全局安装 (推荐)
克隆本仓库并运行安装脚本：

```bash
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
./install.sh --global
```

Windows 环境 (PowerShell):
```powershell
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
.\install.ps1 -Global
```

### 本地安装 (仅限当前项目目录)
如仅想在特定工作空间（Workspace）内使用：
```bash
./install.sh --local
```

## 💡 使用方法

安装完成后，直接向您的 AI 助手描述您想创建의 技能即可：

```
"创建一个技能，用于扫描项目目录中未使用的 npm 依赖项并将其删除，然后将清理报告发送到 Slack 频道。"
```

智能体将调用 `universal-agent-skill-builder`，一步步为您设计、开发、本地化、上传并宣传此项新技能。

---

## 📄 授权协议

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

本项目遵循 [MIT 授权协议](https://opensource.org/licenses/MIT)。
