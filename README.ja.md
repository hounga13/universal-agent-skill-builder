[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# Universal Agent Skill Builder (ユニバーサル エージェント スキル ビルダー)

ユーザーが構想するカスタムAIエージェントスキルの設計、マルチプラットフォーム向けパッケージング、多言語ドキュメント化、デプロイ、およびプロモーションを自動化するメタエージェントスキルです。

## 概要

**Universal Agent Skill Builder**は、様々なAIコーディングツール（Claude Code、Antigravity、Codexなど）で動作するカスタムスキルを迅速かつ標準化された方法で作成・管理するためのツールです。作成したいスキルのアイデアを説明するだけで、設計からインストールスクリプトの作成、5ヶ国語のドキュメント化、GitHubへのデプロイ、技術コミュニティ向けの紹介文作成までを一貫して自動的に実行します。

## 主な機能

- **マルチプラットフォーム連携**: Claude Code、Codex、Antigravity、Gemini CLI、OpenCodeなどの主要なAIコーディングエージェントにカスタムスキルを自動的にマッピングします。
- **クロスプラットフォーム対応スクリプト**: Unix系（Linux、macOS）向けのShellスクリプト（`install.sh`）と、Windowsユーザー向けのPowerShellスクリプト（`install.ps1`）を自動生成します。
- **5ヶ国語ドキュメント化**: 英語、韓国語、日本語、スペイン語、中国語に翻訳されたREADMEと、各ドキュメント上部に相互言語切り替え用のリンクヘッダーを自動構成します。
- **Git & GitHub連携**: ローカルGitリポジトリの初期化から、リモートGitHubリポジトリへのプッシュ処理を支援します。
- **コミュニティプロモーション支援**: Hacker NewsやGeek Newsなどに最適な、誇張表現のない客観的でシンプルな紹介文のドラフトを作成します。

## インストール方法

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

## 使用方法

インストール完了後、使用中のAIエージェントに対して作成したいスキルについて説明します。

```
「使用されていないnpmパッケージを検出して削除し、クリーンアップ結果をSlackに通知するスキルを作成して。」
```

エージェントが `universal-agent-skill-builder` スキルを起動し、設計、スクリプト作成、多言語ドキュメント作成、アップロード、プロモーションテキストの構成までを順次実行します。
