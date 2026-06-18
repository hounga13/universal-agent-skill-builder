[English](README.md) | [한국어](README.ko.md) | [日本語](README.ja.md) | [Español](README.es.md) | [简体中文](README.zh.md)

# Universal Agent Skill Builder

Una meta-habilidad de agente que automatiza el diseño, la configuración multiplataforma, la localización, el despliegue y la promoción de habilidades personalizadas para agentes de IA.

## Descripción General

**Universal Agent Skill Builder** es una herramienta especializada diseñada para ayudar a los desarrolladores a construir y administrar habilidades personalizadas en varias herramientas de codificación de IA (Claude Code, Antigravity, Codex, etc.). Proporcione una breve descripción de la funcionalidad deseada y la habilidad se encargará del diseño, los scripts de instalación, la documentación en 5 idiomas, la configuración del repositorio Git y los borradores de promoción para comunidades técnicas.

## Características

- **Integración Multiplataforma**: Instala habilidades personalizadas para Claude Code, Codex, Antigravity, Gemini CLI y OpenCode.
- **Scripts Multiplataforma**: Genera scripts listos para ejecutar en Shell (`install.sh`) para sistemas Unix/macOS y en PowerShell (`install.ps1`) para Windows.
- **Localización Automática**: Genera READMEs estándar en inglés, coreano, japonés, español y chino con encabezados de navegación interconectados.
- **Integración con Git y GitHub**: Configura la inicialización de repositorios locales y gestiona el envío de actualizaciones a repositorios remotos de GitHub.
- **Kit de Promoción**: Escribe borradores de presentación sencillos y objetivos, optimizados para plataformas técnicas como Hacker News y Geek News.

## Instalación

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

## Uso

Una vez instalado, invoque a su agente y describa la capacidad que desea convertir en una habilidad:

```
"Crea una habilidad que busque dependencias de npm no utilizadas en los directorios, las elimine y envíe un informe a Slack."
```

El agente activará el proceso `universal-agent-skill-builder` para estructurar, construir, documentar, subir y promocionar su nueva habilidad.
