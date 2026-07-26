# ====================== Environment & PATH ======================
typeset -U PATH
export PATH="/Users/personal/.local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh" # oh-my-zsh
export TMUX_CONF="$HOME/.config/tmux/tmux.conf" # tmux
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml" # starship

# ====================== Oh My Zsh ======================
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#============ Editors ===========
export EDITOR=nvim
export VISUAL=nvim

# ====================== FZF conf ======================
# Set up FZF key bindings and fuzzy completion
# Keymaps for this is available at https://github.com/junegunn/fzf-git.sh
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "  

# ================ Initializers and Sources ==============

eval "$(starship init zsh)" # starship
eval "$(zoxide init zsh)" # zoxide
eval "$(fzf --zsh)" # fzf
source ~/scripts/fzf-git.sh # fzf git

# ================= ALIAS ===================

# other alias shortcuts
alias c="clear"
alias e="exit"
alias n="nvim"

# eza commands
alias ls="eza --no-filesize --long --color=always --git --header --icons=always --no-user"
alias tree="eza --tree"

# git aliases
alias gt="git"
alias gta="git add ."
alias gts="git status -s"
alias gtc="git commit -m"
alias glog='git log --oneline --graph --all'

# lazygit
alias lg="lazygit"

# tmux
alias tmux="tmux -f $TMUX_CONF"
