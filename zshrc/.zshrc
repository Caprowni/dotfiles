# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh"

eval "$(/opt/homebrew/bin/brew shellenv)"
## Theming ##
eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/poshmon.omp.json')"

 # History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

export EDITOR=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=/usr/local/bin:$PATH:$GOPATH/bin:$PATH:/Users/lcaproni/bin:/opt/homebrew/opt/libpq/bin:$PATH:/opt/homebrew/opt/llvm/bin:$PATH

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcobb='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Random aliases for things #
alias k=kubectl
alias open_pr="gh pr view --web"
alias create_pr='gh pr create -a "@me" -f'
alias ctags=/usr/local/bin/ctags
alias l="exa -l -g --icons"
alias ll="ls -lah"
alias vim=nvim
alias vi=nvim

function npr() { gh pr create -a "@me" -f -l "$@"; gh pr view --web }

# Color Scheme
export BLACK=0xff181819
export WHITE=0xffe2e2e3
export RED=0xfffc5d7c
export GREEN=0xff9ed072
export BLUE=0xff76cce0
export YELLOW=0xffe7c664
export ORANGE=0xfff39660
export MAGENTA=0xffb39df3
export GREY=0xff7f8490
export TRANSPARENT=0x00000000
export BG0=0xff2c2e34
export BG1=0xff363944
export BG2=0xff414550

