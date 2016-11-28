
#alias ls='ls -F --color --show-control-chars'
alias ls='ls --color=auto -Fh'   #h=human-readable
alias ll='ls -al'
alias mkdir='mkdir -p'
alias h='history'
alias ..='cd ..'
alias psg='ps aux | grep'

# MISSPELLINGS
alias got='git'
alias gut='git'
alias giut='git'
alias guit='git'
alias giot='git'
alias goit='git'
alias gits='git s'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'


# Make grep more user friendly by highlighting matches
# and exclude grepping through .git folders.
#alias grep='grep --color=auto --exclude-dir=\.git'
#alias grep='grep --exclude-dir="\.git"'

# NOT A PROBLEM ANYMORE. Solve missing "__git_ps1" problem.
#alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

alias deletemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias master='git checkout master'
