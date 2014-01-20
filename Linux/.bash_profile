alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias EDG='ssh hdpadmin@hdp-edg-chi-01'
alias ls='ls -GhF'
alias ll='ls -Ghal'
alias python=bpython

export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

black="\033[1;30m";
red="\033[1;31m";
green="\033[1;32m";
yellow="\033[1;33m";
blue="\033[1;34m";
magenta="\033[1;35m";
cyan="\033[1;36m";
white="\033[1;37m";
norm="\033[0;39m";

if [ "$PS1" ]; then
     if [[ $UID -eq 0 ]]; then
          PS1="\[$yellow\][\[\$(date +%H:%M:%S)\]] \[$red\]\u@\h:\w\\[$norm\] # "
     else
          PS1="\[$yellow\][\[\$(date +%H:%M:%S)\]] \[$cyan\]\u@\h:\w\\[$norm\] $ "
     fi
     export PS1=""$PS1"\[\e]30;\u@\h\a\]"
fi

 

 

 

#######OLD VERSION - August 22, 2013

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias EDG='ssh hdpadmin@hdp-edg-chi-01'
alias ls='ls -GhF'
alias ll='ls -Ghal'

export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

red="\033[1;31m";
norm="\033[0;39m";
cyan="\033[1;36m";
if [ "$PS1" ]; then
     if [[ $UID -eq 0 ]]; then
          PS1="\[$red\]\u@\h:\w\\[\033[0;39m\]\n# "
     else

          #PS1="\[$cyan\]\u@\h:\w $\\[\033[0;39m\] "
          PS1="\[$cyan\]\u@\h:\w\\[\033[0;39m\]\n\$ "
     fi
     export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]"
     export PS1=" "$PS1"\[\e]30;\u@\h\a\]"
fi