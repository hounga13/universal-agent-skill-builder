[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# Universal Agent Skill Builder (유니버설 에이전트 스킬 빌더)

사용자가 구상하는 맞춤형 AI 에이전트 스킬의 설계, 다중 플랫폼 패키징, 다국어 문서화, 배포 및 홍보 프로세스를 자동화하는 메타 에이전트 스킬입니다.

## 개요

**Universal Agent Skill Builder**는 다양한 AI 코딩 도구(Claude Code, Antigravity, Codex 등)에서 동작할 수 있는 에이전트 스킬을 빠르고 표준화된 방식으로 제작하도록 돕는 도구입니다. 만들고자 하는 스킬의 아이디어를 입력하면 설계부터 설치 스크립트 제작, 5개 국어 문서화, GitHub 배포 및 기술 커뮤니티 홍보 작성까지의 과정을 일괄적으로 자동 수행합니다.

## 주요 기능

- **다중 플랫폼 연동**: Claude Code, Codex, Antigravity, Gemini CLI, OpenCode 등 주요 AI 코딩 에이전트에 커스텀 스킬을 자동 매핑합니다.
- **크로스 플랫폼 설치 스크립트**: Unix 계열(Linux, macOS)을 위한 Shell 스크립트(`install.sh`)와 Windows 사용자를 위한 PowerShell 스크립트(`install.ps1`)를 자동으로 생성합니다.
- **5개 국어 문서화**: 영어, 한국어, 일본어, 스페인어, 중국어 번역본 README와 각 문서 상단에 상호 언어 전환 링크를 자동으로 구성합니다.
- **Git & GitHub 연동**: 로컬 Git 저장소 초기화 및 원격 GitHub 저장소 배포 프로세스를 지원합니다.
- **기술 커뮤니티 홍보 지원**: Hacker News 및 Geek News 등에 적합한 담백하고 객관적인 톤의 홍보용 소개 글 초안을 작성합니다.

## 설치 방법

### 사전 요구사항
터미널 환경에 `git`이 설치되어 있고, 지원되는 AI 코딩 에이전트 중 하나를 사용 중이어야 합니다.

### 글로벌 설치 (추천)
저장소를 클론한 후 설치 스크립트를 실행합니다.

```bash
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
./install.sh --global
```

Windows 환경 (PowerShell):
```powershell
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
.\install.ps1 -Global
```

### 로컬 설치 (현재 프로젝트 적용)
특정 작업 공간(Workspace) 내에서만 사용하려는 경우:
```bash
./install.sh --local
```

## 사용 방법

스킬이 설치된 후, 사용 중인 AI 에이전트에게 구현하고 싶은 기능적 스킬을 설명하면 됩니다.

```
"사용하지 않는 npm 패키지를 검사하고 삭제한 다음, 결과를 Slack 채널로 전송해 주는 스킬을 만들어줘."
```

에이전트는 `universal-agent-skill-builder` 스킬을 기동하여 설계, 스크립팅, 다국어 문서화, 업로드 및 홍보물 구성을 순차적으로 완료합니다.
