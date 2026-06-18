#!/bin/bash

# Multi-Platform installer for AI Agent Skills
# Usage: ./install.sh [--global | --local] [tool_name]

INSTALL_TYPE="global"
TARGET_TOOL="all"

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --global) INSTALL_TYPE="global"; shift ;;
        --local) INSTALL_TYPE="local"; shift ;;
        antigravity|claude|codex|gemini|opencode) TARGET_TOOL="$1"; shift ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
done

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SKILL_NAME="universal-agent-skill-builder"

# Define destination directories
declare -A GLOBAL_PATHS
GLOBAL_PATHS[antigravity]="$HOME/.gemini/config/skills/$SKILL_NAME"
GLOBAL_PATHS[claude]="$HOME/.claude/skills/$SKILL_NAME"
GLOBAL_PATHS[codex]="$HOME/.agents/skills/$SKILL_NAME"
GLOBAL_PATHS[gemini]="$HOME/.gemini/skills/$SKILL_NAME"
GLOBAL_PATHS[opencode]="$HOME/.config/opencode/skills/$SKILL_NAME"

declare -A LOCAL_PATHS
LOCAL_PATHS[antigravity]="./.agents/skills/$SKILL_NAME"
LOCAL_PATHS[claude]="./.claude/skills/$SKILL_NAME"
LOCAL_PATHS[codex]="./.agents/skills/$SKILL_NAME"
LOCAL_PATHS[gemini]="./.gemini/skills/$SKILL_NAME"
LOCAL_PATHS[opencode]="./.opencode/skills/$SKILL_NAME"

install_to() {
    local tool=$1
    local dest=$2

    echo "Installing to $tool ($INSTALL_TYPE): $dest"
    mkdir -p "$dest"
    
    # Copy SKILL.md
    if [ -f "$SCRIPT_DIR/SKILL.md" ]; then
        cp "$SCRIPT_DIR/SKILL.md" "$dest/"
        echo "  - Copied SKILL.md"
    else
        echo "  - Warning: SKILL.md not found in $SCRIPT_DIR"
    fi

    # Copy other supporting files/directories if any exist (e.g., scripts)
    if [ -d "$SCRIPT_DIR/scripts" ]; then
        cp -r "$SCRIPT_DIR/scripts" "$dest/"
        echo "  - Copied scripts directory"
    fi
}

if [ "$TARGET_TOOL" = "all" ]; then
    for tool in "${!GLOBAL_PATHS[@]}"; do
        if [ "$INSTALL_TYPE" = "global" ]; then
            install_to "$tool" "${GLOBAL_PATHS[$tool]}"
        else
            install_to "$tool" "${LOCAL_PATHS[$tool]}"
        fi
    done
else
    if [ "$INSTALL_TYPE" = "global" ]; then
        install_to "$TARGET_TOOL" "${GLOBAL_PATHS[$TARGET_TOOL]}"
    else
        install_to "$TARGET_TOOL" "${LOCAL_PATHS[$TARGET_TOOL]}"
    fi
fi

echo "Installation complete!"
