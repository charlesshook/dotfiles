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

alias sysinfo=get_system_info
