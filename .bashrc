# git
# export GIT_TRACE_PACKET=1
# export GIT_TRACE=1
# export GIT_CURL_VERBOSE=1

export PATH=$PATH:${HOME}/bin

alias reload='source ~/.bash_profile'
alias relogin='exec $SHELL -l'
alias bi='bundle install --path ./vendor/bundle'
alias bu='bundle update'
alias be='bundle exec'
alias securerandom='ruby -r securerandom -e "puts SecureRandom.urlsafe_base64"'
alias dns-clean='sudo killall -HUP mDNSResponder'
alias rm-dsstores='find . -name ".DS_Store" -print -exec rm -f {} \;'
alias rm-thumbs='find . -name "Thumbs.db" -print -exec rm -f {} \;'
alias rm-empties='find . -mindepth 1 -type d -empty -delete -print'

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# BEGIN ANSIBLE MANAGED BLOCK completions
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion
# END ANSIBLE MANAGED BLOCK completions
# BEGIN ANSIBLE MANAGED BLOCK git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\h\[\033[00m\]:\[\033[36m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\\$ '
# END ANSIBLE MANAGED BLOCK git

[ -e ~/.bashrc.local ] && source ~/.bashrc.local
# BEGIN ANSIBLE MANAGED BLOCK direnv
export EDITOR=code
eval "$(direnv hook bash)"
# END ANSIBLE MANAGED BLOCK direnv
# BEGIN ANSIBLE MANAGED BLOCK ghq
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
# END ANSIBLE MANAGED BLOCK ghq
