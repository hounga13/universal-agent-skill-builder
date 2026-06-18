# Multi-Platform installer for AI Agent Skills (Windows PowerShell)
# Usage: .\install.ps1 [-Global] [-Local] [-Tool <antigravity|claude|codex|gemini|opencode>]

param (
    [switch]$Global = $true,
    [switch]$Local = $false,
    [string]$Tool = "all"
)

if ($Local) {
    $Global = $false
}

$SkillName = "universal-agent-skill-builder"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Define target paths
$HomeDir = $env:USERPROFILE
$GlobalPaths = @{
    "antigravity" = Join-Path $HomeDir ".gemini\config\skills\$SkillName"
    "claude"      = Join-Path $HomeDir ".claude\skills\$SkillName"
    "codex"       = Join-Path $HomeDir ".agents\skills\$SkillName"
    "gemini"      = Join-Path $HomeDir ".gemini\skills\$SkillName"
    "opencode"    = Join-Path $HomeDir ".config\opencode\skills\$SkillName"
}

$LocalPaths = @{
    "antigravity" = ".\.agents\skills\$SkillName"
    "claude"      = ".\.claude\skills\$SkillName"
    "codex"       = ".\.agents\skills\$SkillName"
    "gemini"      = ".\.gemini\skills\$SkillName"
    "opencode"    = ".\.opencode\skills\$SkillName"
}

function Install-Skill ($ToolName, $DestPath) {
    Write-Host "Installing to $ToolName ($($Global ? 'global' : 'local')): $DestPath"
    
    if (!(Test-Path $DestPath)) {
        New-Item -ItemType Directory -Force -Path $DestPath | Out-Null
    }

    # Copy SKILL.md
    $SkillFile = Join-Path $ScriptDir "SKILL.md"
    if (Test-Path $SkillFile) {
        Copy-Item -Path $SkillFile -Destination $DestPath -Force
        Write-Host "  - Copied SKILL.md"
    } else {
        Write-Warning "  - SKILL.md not found in $ScriptDir"
    }

    # Copy scripts directory if exists
    $ScriptsDir = Join-Path $ScriptDir "scripts"
    if (Test-Path $ScriptsDir) {
        Copy-Item -Path $ScriptsDir -Destination $DestPath -Recurse -Force
        Write-Host "  - Copied scripts directory"
    }
}

$Paths = $Global ? $GlobalPaths : $LocalPaths

if ($Tool -eq "all") {
    foreach ($t in $Paths.Keys) {
        Install-Skill -ToolName $t -DestPath $Paths[$t]
    }
} else {
    if ($Paths.ContainsKey($Tool)) {
        Install-Skill -ToolName $Tool -DestPath $Paths[$Tool]
    } else {
        Write-Error "Unknown tool: $Tool"
        exit 1
    }
}

Write-Host "Installation complete!"
