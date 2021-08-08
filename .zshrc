# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# autocomplete
autoload -Uz compinit && compinit

source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# exports
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

export BAT_THEME="TwoDark"

# alias
alias ..="cd .."
alias ...="cd ../.."
alias l="ls -l -G"
alias ll="ls -la -G"
alias ls="command ls -G"
alias ping="prettyping --nolegend"
alias cat='bat'

# shortcuts
alias c="cat"
alias g="git"
alias v="vim"
alias o="open ."

# git
alias gst="git status -sb"
alias gc="git commit -am"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gl="git pull"
alias glg="git log --stat"
alias gp="git push"
alias git-cleanup=". ~/git-cleanup.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

wd() {
  . ~/bin/wd/wd.sh
}
