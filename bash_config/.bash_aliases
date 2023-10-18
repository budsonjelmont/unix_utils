# This file is sourced from .bashrc & contains all my aliases 

# ls aliases
# some more ls aliases
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

# Scripting
alias py='python3'
alias Rs='Rscript'
alias v='vim'

# fast grepping
alias gir='grep -ir'

# fast navigation
alias cdh='cd /mnt/c/Users/judson.x.belmont'
alias cdc='cd /mnt/c/Users/judson.x.belmont/Documents/Code'
alias cdiq='cd /mnt/c/Users/judson.x.belmont/Documents/Code/iqdb'
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'

# git commands
alias g='git'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpso='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gplo='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gco='git checkout'
alias gbv='git branch -v'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias gl='git log'
alias gpl='git log --graph --full-history --all --color \
        --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gc='export COMMIT=`git rev-parse HEAD`'

# For working in WSL2 while on VPN
alias vpn='sudo cp /etc/resolvVPN.conf /etc/resolv.conf --remove-destination && echo "On VPN!" '
alias novpn='sudo cp /etc/resolvNoVPN.conf /etc/resolv.conf --remove-destination && echo "Off VPN: Home" '
alias wslkit='wsl.exe -d wsl-vpnkit service wsl-vpnkit start'
alias nowslkit='wsl.exe -d wsl-vpnkit service wsl-vpnkit stop'

# Other general docker stuff
alias dils='docker image ls'
alias dilsa='docker image ls -a'
alias dcls='docker container ls'
alias dclsa='docker container ls -a'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dcs='docker container start'
alias testdig='rsync -avn . /dev/shm --exclude-from .dockerignore' # neat trick from https://stackoverflow.com/questions/38946683/how-to-test-dockerignore-file

# Text wrangling aliases 
alias rmbom='sed -i "1s/^\xEF\xBB\xBF//"'
alias d2u='perl -pi -e "s/\r\n/\n/g"'
alias rmtsvnull='sed -i "s/\tNULL\t/\t\t/g"'

# Bed wrangling
alias bedsort='sort -V -k1,1 -k2,2n -k3,3n'
alias rmchr='sed "s/^chr//g"'

# Copy & paste shortcuts
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# Start Timidity
alias tmd='timidity -iA -Os'
