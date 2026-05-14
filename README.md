## Linux Setup
```bash
sudo pacman -S stow

rm -rf ~/.config/niri
stow ~/dotfiles niri
```

## Windows 11 Setup
**PowerShell as admin**:

```bash
# Git
New-Item -ItemType SymbolicLink -Path "$HOME\.gitconfig" -Target "$HOME\dotfiles\git\.gitconfig"

# WezTerm
New-Item -ItemType SymbolicLink -Path "$HOME\.config\wezterm" -Target "$HOME\dotfiles\wezterm"

# Zed
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\settings.json" -Target "$HOME\dotfiles\zed\settings.json"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\keymap.json" -Target "$HOME\dotfiles\zed\keymap.json"
```
