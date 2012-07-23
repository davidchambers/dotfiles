[[ "$TERM" == dumb ]] && PS1="\n\w\n> "
[[ "$TERM" != dumb ]] && PS1="\n\[\e[1;36m\]\w\n\[\e[1;32m\]> \[\e[0m\]"

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export LESS=-R
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
