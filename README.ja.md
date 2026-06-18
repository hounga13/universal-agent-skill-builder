[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# 🚀 Universal Agent Skill Builder (ユニバーサル エージェント スキル ビルダー)

ユーザーが構想するカスタムAIエージェントスキルの設計、マルチプラットフォーム向けパッケージング、多言語ドキュメント化、デプロイ、およびプロモーションを自動化する、開発者向けのメタエージェントスキルです。

---

## 📋 概要

**Universal Agent Skill Builder**は、様々なAIコーディングツール（Claude Code、Antigravity、Codexなど）で動作するカスタムスキルを迅速かつ標準化された方法で作成・管理するためのツールです。作成したいスキルのアイデアを説明するだけで、設計からインストールスクリプトの作成、5ヶ国語のドキュメント化、GitHubへのデプロイ、技術コミュニティ向けの紹介文作成までを一貫して自動的に実行します。

## ✨ 主な機能

- **マルチプラットフォーム連携**: Claude Code、Codex、Antigravity、Gemini CLI、OpenCodeなどの主要なAIコーディングエージェントにカスタムスキルを自動的にマッピングします。
- **クロスプラットフォーム対応スクリプト**: Unix系（Linux、macOS）向けのShellスクリプト（`install.sh`）と、Windowsユーザー向けのPowerShellスクリプト（`install.ps1`）を自动生成します。
- **5ヶ国語ドキュメント化**: 英語、韓国語、日本語、スペイン語、中国語に翻訳されたREADMEと、各ドキュメント上部に相互言語切り替え用のリンクヘッダーを自動構成します。
- **Git & GitHub連携**: ローカルGitリポジトリの初期化から、リモートGitHubリポジトリへのプッシュ処理を支援します。
- **コミュニティプロモーション支援**: Hacker NewsやGeek Newsなどに最適な、誇張表現のない客観的でシンプルな紹介文のドラフトを作成します。

## 🛠️ 技術スタック

* ![Bash/Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white)
* ![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=flat&logo=powershell&logoColor=white)
* ![Markdown](https://img.shields.io/badge/Markdown-%23000000.svg?style=flat&logo=markdown&logoColor=white)
* ![YAML](https://img.shields.io/badge/YAML-%23CB171E.svg?style=flat&logo=yaml&logoColor=white)

## ⚙️ 技術的な詳細

### 📂 ディレクトリ構造

```
universal-agent-skill-builder/
├── SKILL.md          # 🧠 エージェントの命令ガイドおよびワークフロー定義
├── install.sh        # 🐚 macOS/Linux向けインストールスクリプト (Bash 3+ 互換)
├── install.ps1       # ⚡ Windows向けインストールスクリプト (PowerShell)
├── README.md         # 🇬🇧 英語ドキュメント (ベース)
├── README.ko.md      # 🇰🇷 韓国語ドキュメント
├── README.ja.md      # 🇯🇵 日本語ドキュメント
├── README.es.md      # 🇪🇸 スペイン語ドキュメント
├── README.zh.md      # 🇨🇳 中国語ドキュメント
└── promote_hn_geek.md# 📢 Hacker NewsおよびGeek News向け紹介文ドラフト
```

### 🧩 動作原理

1. **Phase 0**: 開発者のアイデアを解析し、適切なGitリポジトリ名を推薦します。
2. **Phase 1**: スキル要件を具体化し、依存関係をマッピングして `SKILL.md`（および必要に応じてPythonの `uv` ヘルパースクリプト）を作成します。
3. **Phase 2**: プラットフォームごとのスキルパスに合わせたインストールファイルをバンドルします。
   - *互換性に関する注意*: macOSのデフォルト環境（Bash 3.2.57）で連想配列（`declare -A`）が未サポートのため発生するエラーを回避するため、`install.sh` はswitch-case関数方式を採用しています。
4. **Phase 3 & 4**: 基準となる英語ドキュメントから他4ヶ国語（韓国語、日本語、スペイン語、中国語）の翻訳版を自動生成し、上部ヘッダーで相互にリンクします。
5. **Phase 5**: ローカルGitの初期化、リモートリポジトリの設定、およびプッシュを処理します。
6. **Phase 6**: 客観的で事実に即したHNおよびGeek News向けのプロモーション用テキストを作成します。

## 📥 インストール方法

### 前提条件
ターミナル環境に `git` がインストールされており、サポートされているAIコーディングエージェントのいずれかを使用している必要があります。

### グローバルインストール（推奨）
リポジトリをクローンし、インストールスクリプトを実行します。

```bash
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
./install.sh --global
```

Windows環境（PowerShell）:
```powershell
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
.\install.ps1 -Global
```

### ローカルインストール（特定プロジェクト向け）
特定のワークスペース内でのみ使用する場合:
```bash
./install.sh --local
```

## 💡 使用方法

インストール完了後、使用中のAIエージェントに対して作成したいスキルについて説明します。

```
「使用されていないnpmパッケージを検出して削除し、クリーンアップ結果をSlackに通知するスキルを作成して。」
```

エージェントが `universal-agent-skill-builder` スキルを起動し、設計、スクリプト作成、多言語ドキュメント作成、アップロード、プロモーションテキストの構成までを順次実行します。

---

## 📄 ライセンス

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

本プロジェクトは、[MITライセンス](https://opensource.org/licenses/MIT)の条件に従って配布されます。
