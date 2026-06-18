# Technical Community Promotion Kit (홍보 자료)

이 문서에는 `universal-agent-skill-builder` 스킬을 기술 커뮤니티에 소개할 때 사용할 수 있는 객관적이고 담담한 톤의 포스팅 글 초안이 포함되어 있습니다.

---

## 1. Show HN (Hacker News) Draft

**Title**: Show HN: Universal Agent Skill Builder – Design, localize, and deploy custom agent skills

**Text**:

Hi HN,

I built a meta-skill for AI agent coders (such as Claude Code, Antigravity, and Codex CLI) that automates the workflow of creating, documenting, and packaging custom skills. 

When you configure a new capability for your AI agent, you often have to copy markdown definitions, write platform-specific install scripts, write localized documentation, initialize a repository, and push it to GitHub manually. 

This tool, `universal-agent-skill-builder`, addresses this by taking a high-level natural language description and producing:
1. A standard `SKILL.md` file along with necessary helper scripts.
2. Cross-platform installers (`install.sh` for macOS/Linux, `install.ps1` for Windows) targeting Claude Code, Codex, Antigravity, Gemini CLI, and OpenCode.
3. Automatically generated READMEs in 5 languages (English, Korean, Japanese, Spanish, Chinese) with built-in language navigation links.
4. Git push integration to prepare the workspace for distribution.

The project is open-source: https://github.com/hounga13/universal-agent-skill-builder

I would appreciate any feedback on how to improve the structure or support more agent configurations. Thank you.

---

## 2. Geek News Draft

**Title**: AI 에이전트를 위한 커스텀 스킬 개발 워크플로우를 자동화하는 "Universal Agent Skill Builder" 공개

**Text**:

AI 코딩 어시스턴트(Claude Code, Antigravity, Codex CLI 등)를 사용할 때 유용하게 쓸 수 있는 커스텀 에이전트 스킬 생성기, "Universal Agent Skill Builder"를 오픈소스로 공개합니다.

보통 에이전트에 커스텀 스킬을 주입하려면 스킬 정의용 마크다운 파일(SKILL.md)을 작성하고, 각 플랫폼별 로컬/글로벌 설치 스크립트를 빌드해야 하며, 다국어 문서화 작업이나 저장소 푸시 등을 매번 반복적으로 직접 처리해야 합니다.

본 프로젝트는 사용자가 추가하려는 기능 명세를 입력받아 다음 작업을 자동으로 일괄 처리해 줍니다.

1. **설계 및 스크립팅**: 스킬 사양 정의와 필요한 헬퍼 스크립트 작성
2. **멀티플랫폼 배포**: Claude Code, Codex, Antigravity, Gemini CLI, OpenCode 등에 복사해 주는 크로스 플랫폼 설치 스크립트(`install.sh`, `install.ps1`) 생성
3. **5개 국어 문서화**: 영어, 한국어, 일본어, 스페인어, 중국어 번역 README 생성 및 문서 간 상호 링크 연결
4. **저장소 푸시**: Git 초기화 및 원격 GitHub 리포지토리 자동 배포

관련 깃허브 저장소는 아래 주소에서 확인해 보실 수 있습니다.
https://github.com/hounga13/universal-agent-skill-builder

에이전트 워크플로우를 더 효율적으로 확장하고 싶은 분들께 작은 도움이 되었으면 합니다. 의견이나 피드백 부탁드립니다.
