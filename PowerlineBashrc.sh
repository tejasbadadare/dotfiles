# Put this in bash startup file
# https://github.com/justjanne/powerline-go

INTERACTIVE_BASHPID_TIMER="/tmp/${USER}.START.$$"

PS0='$(echo $SECONDS > "$INTERACTIVE_BASHPID_TIMER")'

GOPATH=$HOME/go
function _update_ps1() {
    local __ERRCODE=$?

  local __DURATION=0
  if [ -e $INTERACTIVE_BASHPID_TIMER ]; then
    local __END=$SECONDS
    local __START=$(cat "$INTERACTIVE_BASHPID_TIMER")
    __DURATION="$(($__END - ${__START:-__END}))"
    rm -f "$INTERACTIVE_BASHPID_TIMER"
  fi

    PS1="$($GOPATH/bin/powerline-go -newline -condensed -path-aliases mnt/c/Users/Tejas\ Badadare=WinHome,/mnt/c/Users/Tejas\ Badadare/dev/koppr-micro-services=KopprServices,/mnt/c/Users/Tejas\ Badadare/dev/koppr-integrator-service=KopprIntegrator -numeric-exit-codes -duration $__DURATION -error $__ERRCODE -shell bash -modules venv,host,ssh,cwd,perms,git,hg,jobs,duration,exit)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
