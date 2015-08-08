# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile
source ~/.profile

# Git
alias gc="git checkout"
alias gco="git commit";
alias gcb="git rev-parse --abbrev-ref HEAD 2> /dev/null"
alias gpb="git push -u origin `gcb`"
alias gs="git status"
alias gb="git branch"
alias glog="git log --oneline --graph --decorate"
alias groot='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gdiff="git dif"

#############
# PS1 + Git #
#############
function parse_git_status {
    local gs=`gs -unormal 2> /dev/null | tail -n1`
    ( [[ $gs == *"but"* ]] && echo -e "\x1B[0;33m" ) || ( [[ $gs != *"nothing to commit"* ]] && echo -e "\x1B[0;31m" )
  }
  
function parse_git_branch {
  local gcb=`gcb`
  [[  $gcb != "" ]] && echo $(parse_git_status)' ['$gcb']'
}
            
export PS1='\h:\[\e[0;32m\]\W \[\e[0;0m\]\u\[\e[0;36m\]\[$(parse_git_branch)\]\[\e[0;0m\]$ '
