[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# 🚀 Universal Agent Skill Builder

Una meta-habilidad de agente centrada en desarrolladores que automatiza el diseño, la configuración multiplataforma, la localización, el despliegue y la promoción de habilidades personalizadas para agentes de IA.

---

## 📋 Descripción General

**Universal Agent Skill Builder** es un orquestador especializado diseñado para ayudar a los desarrolladores a construir y administrar habilidades personalizadas en varias herramientas de codificación de IA (Claude Code, Antigravity, Codex, etc.). Proporcione una breve descripción de la funcionalidad deseada y la habilidad se encargará del diseño, los scripts de instalación, la documentación en 5 idiomas, la configuración del repositorio Git y los borradores de promoción para comunidades técnicas.

## ✨ Características

- **Integración Multiplataforma**: Instala habilidades personalizadas para Claude Code, Codex, Antigravity, Gemini CLI y OpenCode.
- **Scripts Multiplataforma**: Genera scripts listos para ejecutar en Shell (`install.sh`) para sistemas Unix/macOS y en PowerShell (`install.ps1`) para Windows.
- **Localización Automática**: Genera READMEs estándar en inglés, coreano, japonés, español y chino con encabezados de navegación interconectados.
- **Integración con Git y GitHub**: Configura la inicialización de repositorios locales y gestiona el envío de actualizaciones a repositorios remotos de GitHub.
- **Kit de Promoción**: Escribe borradores de presentación sencillos y objetivos, optimizados para plataformas técnicas como Hacker News y Geek News.

## 🛠️ Tecnologías Utilizadas

![Bash/Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=flat&logo=powershell&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-%23000000.svg?style=flat&logo=markdown&logoColor=white)
![YAML](https://img.shields.io/badge/YAML-%23CB171E.svg?style=flat&logo=yaml&logoColor=white)

## ⚙️ Detalles Técnicos

### 📂 Estructura de Directorios

```
universal-agent-skill-builder/
├── SKILL.md          # 🧠 Definición de flujo de trabajo e instrucciones del agente
├── install.sh        # 🐚 Script instalador para macOS/Linux (compatible con Bash 3+)
├── install.ps1       # ⚡ Script instalador para Windows (PowerShell)
├── README.md         # 🇬🇧 Documentación en inglés (Base)
├── README.ko.md      # 🇰🇷 Documentación en coreano
├── README.ja.md      # 🇯🇵 Documentación en japonés
├── README.es.md      # 🇪🇸 Documentación en español
├── README.zh.md      # 🇨🇳 Documentación en chino
└── promote_hn_geek.md# 📢 Borradores de promoción para Hacker News y Geek News
```

### 🧩 Cómo Funciona

1. **Fase 0**: Analiza la idea del desarrollador y propone un nombre de repositorio de Git adecuado.
2. **Fase 1**: Discute los requisitos, mapea dependencias y genera el `SKILL.md` (y scripts de ayuda opcionales en Python).
3. **Fase 2**: Empaqueta los archivos instaladores apuntando a las rutas de inyección específicas de cada herramienta de IA.
   - *Nota de Compatibilidad*: El archivo `install.sh` utiliza funciones switch-case en lugar de arreglos asociativos (`declare -A`) para asegurar compatibilidad nativa con Bash 3.2.57 por defecto en macOS.
4. **Fases 3 y 4**: Crea la documentación base y la traduce al coreano, japonés, español y chino con enlaces cruzados para fácil cambio de idioma.
5. **Fase 5**: Inicializa el Git local, asocia el control remoto y sube el espacio de trabajo.
6. **Fase 6**: Redacta textos promocionales informativos y sin exageraciones para HN y Geek News.

## 📥 Instalación

### Prerrequisitos
Necesita un entorno de terminal con `git` y uno de los asistentes de codificación de IA compatibles instalados.

### Instalación Global (Recomendado)
Clone el repositorio y ejecute el instalador:

```bash
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
./install.sh --global
```

Para Windows (PowerShell):
```powershell
git clone https://github.com/hounga13/universal-agent-skill-builder.git
cd universal-agent-skill-builder
.\install.ps1 -Global
```

### Instalación Local (Ámbito del Proyecto)
Para instalar la habilidad dentro de un espacio de trabajo específico:
```bash
./install.sh --local
```

## 💡 Uso

Once installed, invoke your agent and describe the new capability you wish to turn into a skill:

```
"Crea una habilidad que busque dependencias de npm no utilizadas en los directorios, las elimine y envíe un informe a Slack."
```

El agente activará el proceso `universal-agent-skill-builder` para estructurar, construir, documentar, subir y promocionar su nueva habilidad.

---

## 📄 Licencia

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Este proyecto está bajo la Licencia [MIT](https://opensource.org/licenses/MIT).
