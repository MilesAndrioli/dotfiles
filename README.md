## Linux / WSL2 Setup

```bash
# Zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
```

## Windows 11 Setup
**PowerShell as admin**:

```bash
# Git
New-Item -ItemType SymbolicLink -Path "C:\Users\miles\.gitconfig" -Target "C:\Users\miles\dotfiles\git\.gitconfig"

# WezTerm
New-Item -ItemType SymbolicLink -Path "C:\Users\miles\.wezterm.lua" -Target "C:\Users\miles\dotfiles\wezterm\.wezterm.lua"

# Zed
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\settings.json" -Target "C:\Users\miles\dotfiles\zed\settings.json"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\keymap.json" -Target "C:\Users\miles\dotfiles\zed\keymap.json"
```
