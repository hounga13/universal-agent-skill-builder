---
name: universal-agent-skill-builder
description: >-
  Designs, builds, packages, documents in multiple languages, deploys, and promotes new agent skills based on user description.
---

# Universal Agent Skill Builder

## Overview
This skill automates the creation of customizable AI Agent Skills. When a user describes a skill idea, it guides the agent to systematically design, implement, bundle, document in 5 languages (English, Korean, Japanese, Spanish, Chinese), push to GitHub, and write non-hype promotional drafts.

## Quick Start
To trigger this skill, the user should provide an idea:
> "Create a skill that fetches daily weather forecasts, writes them to markdown, and pushes it to a private repo."

The agent will then follow the 6-stage process described below.

## Workflow

### Phase 0: GitHub Repository Preparation
- Analyze the user's description.
- Suggest a descriptive repository name (lowercase, hyphens, e.g., `daily-weather-notifier`).
- Instruct the user to prepare this empty repository on GitHub and provide the remote Git URL.
- **Pause** until the URL is provided.

### Phase 1: Skill Design & Implementation
- Brainstorm the inputs, outputs, error-handling mechanisms, and potential dependencies of the proposed skill.
- Decide if it requires a script (CLI-based) or is instruction-only.
- Implement the skill files:
  - `SKILL.md`: Follows the standard YAML frontmatter structure.
  - Helper scripts: If the skill requires programmatic execution (using Python `uv run` or Shell scripts).

### Phase 2: Multi-Platform Setup
- Produce packaging configurations and installation scripts for major AI coding assistants:
  - **Claude Code**: local `.claude/skills/`, global `~/.claude/skills/`
  - **Codex**: local `.agents/skills/`, global `~/.agents/skills/`
  - **Antigravity 2.0**: local `.agents/skills/`, global
    `~/.gemini/config/skills/`
  - **Gemini CLI**: local `.gemini/skills/`, global `~/.gemini/skills/`
  - **OpenCode**: local `.opencode/skills/`, global `~/.config/opencode/skills/`
- Provide:
  - `install.sh`: A shell script for Unix-like systems (Linux, macOS) that copies the skill to local or global directories.
  - `install.ps1`: A PowerShell script for Windows systems doing the same.

### Phase 3: README Documentation
- Create high-quality documentation focusing on users of the skill (Usage, Features, Installation).
- The default README must be in English.

### Phase 4: Localization (5 Languages)
- Produce translated markdown documentation for:
  - Korean (`README.ko.md`)
  - Japanese (`README.ja.md`)
  - Spanish (`README.es.md`)
  - Chinese (`README.zh.md`)
- Every README file (including the main `README.md`) must feature language-switching link headers at the top:
  ```markdown
  [English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)
  ```

### Phase 5: GitHub Deployment
- Set up git inside the working directory:
  ```bash
  git init
  git remote add origin <user-provided-url>
  ```
- Commit all files (`SKILL.md`, scripts, installers, READMEs).
- Run `git push -u origin main` (or instruct the user to run it if permission issues arise).

### Phase 6: Write Promotional Posts
- Generate two distinct promotional posts for:
  1. **The Hacker News (HN)**: Show HN style, informative, technical, focusing on the utility.
  2. **Geek News**: Clean, structured, highlights the core problem solved.
- **Tone Rule**: Strictly factual, calm, objective, with zero buzzwords or hype.

---

## Common Mistakes
1. **Skipping Language Links**: Forgetting to add language selector headers to the top of translation READMEs.
2. **Missing OS Installers**: Generating `install.sh` but neglecting Windows CLI users (`install.ps1`).
3. **Hyperbolic Tone**: Writing marketing copy for HN/Geek News instead of a technical, objective description.
