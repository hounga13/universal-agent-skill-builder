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

# Functions to return target paths for better compatibility
get_global_path() {
    case "$1" in
        antigravity) echo "$HOME/.gemini/config/skills/$SKILL_NAME" ;;
        claude) echo "$HOME/.claude/skills/$SKILL_NAME" ;;
        codex) echo "$HOME/.agents/skills/$SKILL_NAME" ;;
        gemini) echo "$HOME/.gemini/skills/$SKILL_NAME" ;;
        opencode) echo "$HOME/.config/opencode/skills/$SKILL_NAME" ;;
    esac
}

get_local_path() {
    case "$1" in
        antigravity) echo "./.agents/skills/$SKILL_NAME" ;;
        claude) echo "./.claude/skills/$SKILL_NAME" ;;
        codex) echo "./.agents/skills/$SKILL_NAME" ;;
        gemini) echo "./.gemini/skills/$SKILL_NAME" ;;
        opencode) echo "./.opencode/skills/$SKILL_NAME" ;;
    esac
}

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

ALL_TOOLS=("antigravity" "claude" "codex" "gemini" "opencode")

if [ "$TARGET_TOOL" = "all" ]; then
    for tool in "${ALL_TOOLS[@]}"; do
        if [ "$INSTALL_TYPE" = "global" ]; then
            dest=$(get_global_path "$tool")
        else
            dest=$(get_local_path "$tool")
        fi
        install_to "$tool" "$dest"
    done
else
    if [ "$INSTALL_TYPE" = "global" ]; then
        dest=$(get_global_path "$TARGET_TOOL")
    else
        dest=$(get_local_path "$TARGET_TOOL")
    fi
    install_to "$TARGET_TOOL" "$dest"
fi

echo "Installation complete!"
