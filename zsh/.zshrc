# CONFIG
export PATH="$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ALIASES
alias reload="exec zsh"
alias c="clear"

# eza
alias t="eza -a --tree --icons --level=1 --group-directories-first"
alias ta="eza -a --tree --icons --git-ignore --group-directories-first"
alias taa="eza -a --tree --icons --group-directories-first"
alias l="eza -lah --header --icons --git --group-directories-first"
