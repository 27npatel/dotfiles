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

# ================ Initializers and Sources ==============

eval "$(starship init zsh)" # starship
eval "$(zoxide init zsh)" # zoxide

# ================= ALIAS ===================

# other alias shortcuts
alias c="clear"
alias e="exit"
alias vim="nvim"

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