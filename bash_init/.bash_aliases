# This file is sourced from .bashrc & contains all my aliases 

# ls aliases
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -althr'

# commands
alias q='exit'
alias c='clear'
alias h='history'
alias d='pwd'
alias t='time'
alias k='kill'
alias null='/dev/null'
alias cg='chmod -R g+rwx'
alias myps='ps aux | grep "$USER"'

# Scripting
alias py='python3'
alias Rs='Rscript'

# fast navigation
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'

# git commands
alias g='git'
alias gs='git status'
alias ga='git add'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias gl='git log'
alias gpl='git log --graph --full-history --all --color \
        --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
