# Starship prompt
eval "$(starship init zsh)"

# fzf integration
eval "$(fzf --zsh)"

# zoxide (smarter cd)
eval "$(zoxide init zsh)"

# eza aliases (better ls)
alias ls='eza --icons'
alias ll='eza -lah --icons'
alias la='eza -a --icons'
alias lt='eza --tree --icons'

# bat aliases (better cat)
alias cat='bat'
alias bcat='bat --paging=never'  # bat without pager for quick viewing

# Better history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY           # Share history across sessions
setopt HIST_IGNORE_ALL_DUPS    # Don't save duplicates
setopt HIST_FIND_NO_DUPS       # Don't show duplicates in search
setopt HIST_IGNORE_SPACE       # Don't save commands starting with space

# Better completion
autoload -Uz compinit
compinit

# Autosuggestions (grey text completion - hit right arrow to accept)
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting (green=valid, red=invalid)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Menu selection for completions (use arrow keys)
zstyle ':completion:*' menu select

# Kitty completions
source <(kitty + complete setup zsh)

# ============================================
# CUSTOM CONFIG FROM BASHRC
# ============================================

# Aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# pnpm
export PNPM_HOME="/home/barry/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
