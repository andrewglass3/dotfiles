# =============================================================================
# Zsh Configuration
# =============================================================================

# =============================================================================
# Environment Variables
# =============================================================================

export EDITOR="vim"
export VISUAL="$EDITOR"
export LANG="en_US.UTF-8"

# Homebrew (Apple Silicon or Intel)
if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f "/usr/local/bin/brew" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi


# =============================================================================
# Aliases
# =============================================================================

# Navigation
alias ..="cd .."
alias ...="cd ../.."

# List files (GNU ls uses --color=auto, macOS BSD ls uses -G)
if ls --color=auto /dev/null &>/dev/null; then
    alias ls="ls --color=auto"
else
    alias ls="ls -G"
fi
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

alias python="python3"
alias wake="wakeonlan a8:a1:59:3e:ab:58"
alias update-servers="cd /Users/andrew/workspace/github/ansible_playbooks && ansible-playbook update-ubuntu-servers.yml --inventory=hosts"
alias update-lxc="cd /Users/andrew/workspace/github/ansible_playbooks && ansible-playbook update-ubuntu-lxc.yml --inventory=lxc-hosts"
alias ls="lsd -la"
alias workspace="cd ~/workspace"
alias github="cd ~/workspace/github"
alias gitlab="cd ~/workspace/gitlab"
alias yt-dlpp="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"


# Safety
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Git shortcuts
alias g="git"
alias gs="git status -sb"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"
alias glog="git log --oneline --graph --decorate -20"

# Quick edit
alias zshrc="$EDITOR ~/.zshrc"
alias reload="source ~/.zshrc"

# =============================================================================
# Functions
# =============================================================================

# Create directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# oh-my-posh theme 
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/kushal.omp.json)"

# =============================================================================
# Path
# =============================================================================

# Prepend to PATH without duplicates (safe for `reload`)
path_prepend() { [[ ":$PATH:" != *":$1:"* ]] && export PATH="$1:$PATH"; }

path_prepend "$HOME/.local/bin"
path_prepend "$HOME/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# =============================================================================
# Local Configuration
# =============================================================================

# Load local config if exists (for machine-specific settings)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Added by Antigravity IDE
export PATH="/Users/andrew/.antigravity-ide/antigravity-ide/bin:$PATH"
