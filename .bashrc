######_ Shortcut for Ubuntu _######

#Alise Function to compile and run C++ programs
rcpp() {
    if [ $# -eq 0 ]; then
        echo "Usage: rcpp <source_file.cpp>"
        return 1
    fi

    local source_file="$1"
    local output_file="temp_cpp_exec"

    g++ -std=c++17 "$source_file" -o "$output_file"
    if [ $? -eq 0 ]; then
        ./"$output_file"
        rm "$output_file"
    else
        echo "Compilation failed"
        return 2
    fi
}

#Alise Function to compile and run C programs
rcc() {
    if [ $# -eq 0 ]; then
        echo "Usage: rcc <source_file.c>"
        return 1
    fi

    local source_file="$1"
    local output_file="temp_c_exec"

    gcc "$source_file" -o "$output_file"
    if [ $? -eq 0 ]; then
        ./"$output_file"
        rm "$output_file"
    else
        echo "Compilation failed"
        return 2
    fi
}


#Alise for running python code 
alias py="python3"


#Git alise 
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gpl="git pull"
alias gco="git checkout"


#Alise for Search and Find
alias f="find . -name"
alias h="history | grep"
alias c="clear"

#Alise for navigating backword
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#Aise for System Monitering
alias cpu="lscpu"
alias mem="free -h"
alias disk="df -h"
alias psf="ps aux | grep"


#Alise for Network Utilities
alias ports="netstat -tulanp"
alias ping="ping -c 5"
alias myip="curl ifconfig.me"

#Alise for System Update
alias update="sudo apt update && sudo apt upgrade -y"
alias install="sudo apt install -y"
alias remove="sudo apt remove -y"

#Coustom Alise 
alias nv="nvim"


# export DISPLAY=localhost:0
# export LIBGL_ALWAYS_INDIRECT=1


# Starship
# If you have installed Starship then uncomment it 
# eval "$(starship init bash)"

