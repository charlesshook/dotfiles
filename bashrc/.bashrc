function get_system_info() {
    printf "\n"
    printf "  %s\n" "IP Address: $(hostname -I)"
    printf "  %s\n" "USER: $(echo $USER)"
    printf "  %s\n" "DATE: $(date)"
    printf "  %s\n" "UPTIME: $(uptime -p)"
    printf "  %s\n" "HOSTNAME: $(hostname)"
    printf "  %s\n" "KERNEL: $(uname -rms)"
    printf "  %s\n" "RESOLUTION: $(xrandr | awk '/\*/ {print $1}' | head -n 1)"
    printf "  %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
    printf "\n"
}

# Colors
green='\[\e[0;32m\]'
reset='\[\e[0m\]'

alias sysinfo=get_system_info

source ~/.git-prompt.sh
export PATH="$PATH:/opt/nvim-linux64/bin"

# History setup
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Update window size
shopt -s checkwinsize

# Source aliases if they exist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1="$green"'→ '"$reset"'\u@\h \W$(__git_ps1 " (%s)"): ' 
