# CORE CONFIG
export PATH="$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# TOOLS CONFIG
# fnm
export FNM_PATH="/home/miles/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# pnpm
export PNPM_HOME="/home/miles/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ALIASES
# eza
alias t="eza -a --tree --icons --level=1 --group-directories-first"
alias ta="eza -a --tree --icons --git-ignore --group-directories-first"
alias taa="eza -a --tree --icons --group-directories-first"
alias l="eza -lah --icons --git --group-directories-first --header"

# zsh
alias reload="exec zsh"
