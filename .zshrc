# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
git
)
source $ZSH/oh-my-zsh.sh
alias python="python3"
alias wake="wakeonlan a8:a1:59:3e:ab:58"
alias update-servers="cd /Users/andrew/workspace/github/ansible_playbooks && ansible-playbook update-ubuntu.yml --inventory=hosts"
alias ls="lsd -la"
alias workspace="cd ~/workspace"
alias github="cd ~/workspace/github"
alias yt-dlpp="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

#oh my posh default theme eval line
#eval "$(oh-my-posh init zsh)"
# oh my posh aliens theme
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/aliens.omp.json)"
# oh my posh night-owl theme
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/night-owl.omp.json)"