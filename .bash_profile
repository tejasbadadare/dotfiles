# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

newLine() {
    printf "\n"
}

# LS command colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PROMPT_COMMAND=newLine

#iTerm3 Shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Custom prompt
export CUR_PS1='\[\e]0;\w\a\]\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
export     PS1='\[\e]0;\w\a\]\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\[\e[32m\]➤\[\e[0m\] ' 
export PS1_OLD='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

#Homebrew
export PATH=/usr/local/bin:$PATH

#Haskell Stack
export PATH=/Users/Tejas/.local/bin:$PATH

# Start in UCSD folder
#cd ~/Documents/UCSD

# Everything after this line only applies to interactive sessions
[ -z "$PS1" ] && return

# Custom commands 
alias ls='ls -pFh'
alias la='ls -lapFh'
alias ucsd='/Users/Tejas/Documents/Shell\ Scripts/sshlogintbadadar.sh'
alias augcast='ssh root@138.197.233.34'

#function cd {
#    builtin cd "$@" && ls
#}

function cd() {
    local file="${!#}"

    if (( "$#" )) && ! [[ -d "$file" ]]; then
        builtin cd "${@:1:($#-1)}" "${file%/*}" && ls
    else
        builtin cd "$@" && ls
    fi
}


##
# Your previous /Users/Tejas/.bash_profile file was backed up as /Users/Tejas/.bash_profile.macports-saved_2018-04-23_at_01:39:36
##

# MacPorts Installer addition on 2018-04-23_at_01:39:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

