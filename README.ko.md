[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# 🚀 Universal Agent Skill Builder (유니버설 에이전트 스킬 빌더)

사용자가 구상하는 맞춤형 AI 에이전트 스킬의 설계, 다중 플랫폼 패키징, 다국어 문서화, 배포 및 홍보 프로세스를 자동화하는 개발자 친화적인 메타 에이전트 스킬입니다.

---

## 📋 개요

**Universal Agent Skill Builder**는 다양한 AI 코딩 도구(Claude Code, Antigravity, Codex 등)에서 동작할 수 있는 에이전트 스킬을 빠르고 표준화된 방식으로 제작하도록 돕는 도구입니다. 만들고자 하는 스킬의 아이디어를 입력하면 설계부터 설치 스크립트 제작, 5개 국어 문서화, GitHub 배포 및 기술 커뮤니티 홍보 작성까지의 과정을 일괄적으로 자동 수행합니다.

## ✨ 주요 기능

- **다중 플랫폼 연동**: Claude Code, Codex, Antigravity, Gemini CLI, OpenCode 등 주요 AI 코딩 에이전트에 커스텀 스킬을 자동 매핑합니다.
- **크로스 플랫폼 설치 스크립트**: Unix 계열(Linux, macOS)을 위한 Shell 스크립트(`install.sh`)와 Windows 사용자를 위한 PowerShell 스크립트(`install.ps1`)를 자동으로 생성합니다.
- **5개 국어 문서화**: 영어, 한국어, 일본어, 스페인어, 중국어 번역본 README와 각 문서 상단에 상호 언어 전환 링크를 자동으로 구성합니다.
- **Git & GitHub 연동**: 로컬 Git 저장소 초기화 및 원격 GitHub 저장소 배포 프로세스를 지원합니다.
- **기술 커뮤니티 홍보 지원**: Hacker News 및 Geek News 등에 적합한 담백하고 객관적인 톤의 홍보용 소개 글 초안을 작성합니다.

## 🛠️ 기술 스택

![Bash/Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=flat&logo=powershell&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-%23000000.svg?style=flat&logo=markdown&logoColor=white)
![YAML](https://img.shields.io/badge/YAML-%23CB171E.svg?style=flat&logo=yaml&logoColor=white)

## ⚙️ 기술적 세부 사항

### 📂 디렉토리 구조

```
universal-agent-skill-builder/
├── SKILL.md          # 🧠 에이전트 명령어 지침 및 워크플로우 정의
├── install.sh        # 🐚 macOS/Linux용 설치 스크립트 (Bash 3+ 호환)
├── install.ps1       # ⚡ Windows용 설치 스크립트 (PowerShell)
├── README.md         # 🇬🇧 영어 문서 (기본)
├── README.ko.md      # 🇰🇷 한국어 문서
├── README.ja.md      # 🇯🇵 일본어 문서
├── README.es.md      # 🇪🇸 스페인어 문서
├── README.zh.md      # 🇨🇳 중국어 문서
└── promotion_kit.md # 📢 5개 국어별 Short/Long 홍보 자료 초안
```

### 🧩 작동 원리

1. **Phase 0**: 개발자의 아이디어를 해석하여 적절한 Git 저장소 이름을 추천합니다.
2. **Phase 1**: 스킬 요구사항을 구체화하고 의존성을 매핑하여 `SKILL.md` (및 필요 시 Python `uv` 헬퍼 스크립트)를 작성합니다.
3. **Phase 2**: 플랫폼별 스킬 주입 경로에 맞춘 설치 파일을 번들링합니다.
   - *호환성 정보*: `install.sh`는 macOS의 기본 쉘 환경(Bash 3.2.57)에서 연관 배열(`declare -A`) 미지원 문제로 오류가 나지 않도록 switch-case 함수 방식을 채택했습니다.
4. **Phase 3 & 4**: 기본 영문 문서를 기반으로 각 5개 국어(한국어, 일본어, 스페인어, 중국어) 번역본을 생성하고 상단 네비게이션으로 상호 연결합니다.
5. **Phase 5**: 로컬 Git 저장소 초기화, 원격지 연결 및 푸시 작업을 처리합니다.
6. **Phase 6**: 5개 국어별로 과장이 배제된 SNS 및 게시판용 홍보 문안을 작성합니다.

## 📥 설치 방법

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

## 💡 사용 방법

스킬이 설치된 후, 사용 중인 AI 에이전트에게 구현하고 싶은 기능적 스킬을 설명하면 됩니다.

```
"사용하지 않는 npm 패키지를 검사하고 삭제한 다음, 결과를 Slack 채널로 전송해 주는 스킬을 만들어줘."
```

에이전트는 `universal-agent-skill-builder` 스킬을 기동하여 설계, 스크립팅, 다국어 문서화, 업로드 및 홍보물 구성을 순차적으로 완료합니다.

---

## 📄 라이선스

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

본 프로젝트는 [MIT 라이선스](https://opensource.org/licenses/MIT) 조건에 따라 배포됩니다.
