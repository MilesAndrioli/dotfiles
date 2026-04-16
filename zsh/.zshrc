# CONFIG
export PATH="$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# pnpm
export PNPM_HOME="/home/miles/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $ZSH/oh-my-zsh.sh

# ALIASES
alias reload="exec zsh"
alias c="clear"
alias pd="pnpm dev"

# eza
alias t="eza -a --tree --icons --level=1 --group-directories-first"
alias ta="eza -a --tree --icons --git-ignore --group-directories-first"
alias taa="eza -a --tree --icons --group-directories-first"
alias l="eza -lah --header --icons --git --group-directories-first"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
