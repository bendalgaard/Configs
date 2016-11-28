
# Sample bashrc: http://www.tldp.org/LDP/abs/html/sample-bashrc.html

#http://linux-sxs.org/housekeeping/lscolors.html
LS_COLORS='di=36:fi=0:ln=31:pi=35:so=35:bd=35:cd=35:or=35:mi=0:ex=31:*.bat=32'
#export LS_COLORS

# Normal Colors
BLACK="\[\033[30;1m\]"
RED="\[\033[31;1m\]"
GREEN="\[\033[32;1m\]"
YELLOW="\[\033[33;1m\]"
BLUE="\[\033[34;1m\]"
MAGENTA="\[\033[35;1m\]"
CYAN="\[\033[36;1m\]"
WHITE="\[\033[37;1m\]"  # Bright White
  #WHITE='\e[0;37m'       # Dull White
  #white="\033[1;37m";    # White without extra symbols
# Bold
BBLACK='\e[1;30m'       # Black
BRED='\e[1;31m'         # Red
BGREEN='\e[1;32m'       # Green
BYELLOW='\e[1;33m'      # Yellow
BBLUE='\e[1;34m'        # Blue
BPURPLE='\e[1;35m'      # Purple
BCYAN='\e[1;36m'        # Cyan
BWHITE='\e[1;37m'       # White
# Background
ON_BLACK='\e[40m'       # Black
ON_RED='\e[41m'         # Red
ON_GREEN='\e[42m'       # Green
ON_YELLOW='\e[43m'      # Yellow
ON_BLUE='\e[44m'        # Blue
ON_PURPLE='\e[45m'      # Purple
ON_CYAN='\e[46m'        # Cyan
ON_WHITE='\e[47m'       # White

ALERT=${BWHITE}${ON_RED} # Bold White on red background

#norm="\033[0;39m";
NORMAL="\[\033[0m\]"
RESET="\[\017\]"
SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

# PS1="\[\033[1;36m\]\u@\h: \[\033[0m\]\[\033[1;31m\]\W\[\033[0m\] \[\033[1;32m\]\$(__git_ps1)\[\033[0m\]\n\$ "
# PS1="\[${cyan}\]\u@\h: \[\033[0m\]\[${red}\]\W\[\033[0m\] \[${green}\]\$(__git_ps1)\[\033[0m\]\n\$ "
# PS1="${RESET}${YELLOW}\u@\h${NORMAL} \`${SELECT}\` ${YELLOW}\W \$(__git_ps1) >${NORMAL} "

# Git 1.8.4, git 2.6.2 has problem with \$(__git_ps1)
#PS1="${CYAN}\u@\h ${RED}\W${GREEN}\$(__git_ps1)${NORMAL}\n\$ "

# user@server: Folder (git_branch)
PS1="${CYAN}\u@\h ${RED}\W${GREEN}\`__git_ps1\`${NORMAL}\n\$ "

#export GIT_PS1_SHOWDIRTYSTATE=1      ### SHOW * IF THERE ARE UNSTAGED CHANGES AND + IF STAGED AND UNCOMMITTED CHANGES.
#export GIT_PS1_SHOWSTASHSTATE=1      ### SHOW $ IF THERE ARE STASHED CHANGES.
#export GIT_PS1_SHOWUNTRACKEDFILES=1  ### SHOW % IF THERE ARE UNTRACKED FILES.
export GIT_PS1_SHOWUPSTREAM=1        ### SHOW < IF THERE ARE UNPULLED CHANGES, > IF THERE ARE UNPUSHED CHANGES, <> IF THERE ARE BOTH, OR = IF EVERYTHING’S SYNCED.

# So that Git Bash preserves history
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=65535                    # big big history
export HISTFILESIZE=65535                # big big history
shopt -s histappend                      # append to history, don't overwrite it
HOSTNAME="$(hostname)"
HOSTNAME_SHORT="${HOSTNAME%%.*}"
# https://news.ycombinator.com/item?id=10162189
#HISTFILE="${HOME}/.history/$(date -u +%Y/%m/%d.%H.%M.%S)_${HOSTNAME_SHORT}_$$"

# http://stackoverflow.com/a/28041598
# PYTHON ERROR: 'charmap' codec can't encode character '\u2019'
export ConEmuDefaultCp=65001
export PYTHONIOENCODING=utf-8

source C:/Python34/Scripts/virtualenvwrapper.sh