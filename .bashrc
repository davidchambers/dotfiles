set_prompt() {
  local branch when
  branch=$(GIT_PS1_SHOWDIRTYSTATE=true __git_ps1)
  when=$(date +%H:%M)
  if [[ $TERM == dumb ]]; then
    PS1="\n$when \w$branch\n> "
  else
    PS1="\n\[\e[1;37m\]$when \[\e[0;36m\]\w\[\e[0;33m\]$branch\n\[\e[0;37m\]> \[\e[0m\]"
  fi
}

export EDITOR=vim
export LESS=-R
export NODE_PATH=/opt/local/lib/node_modules:$NODE_PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
export PROMPT_COMMAND=set_prompt
export VIRTUALENV_DISTRIBUTE=true
export WORKON_HOME=$HOME/.virtualenvs

alias gh='~/scripts/gh'
alias noderepl='env NODE_NO_READLINE=1 rlwrap --prompt-colour=yellow --substitute-prompt="node >>> " node'
alias qc='~/scripts/qc'

include() {
  [[ -f "$1" ]] && . "$1" && echo sourced $1
}

include "$HOME/git/git-completion.bash"
include "$HOME/git/git-prompt.sh"
include "/usr/local/bin/virtualenvwrapper.sh"

command -v rbenv >/dev/null 2>&1 && eval "$(rbenv init -)"

shopt -s histappend
# ignorespace:  lines which begin with a space character are not saved
#               in the history list
# erasedups:    all previous lines matching the current line are removed
#               from the history list before that line is saved
HISTCONTROL=ignorespace:erasedups

date() {
  case $1 in
    -R|--rfc-822)
      # Output RFC-822 compliant date string.
      # e.g. Wed, 16 Dec 2009 15:18:11 +0100
      command date '+%a, %e %b %Y %T %z' ;;
    *)
      command date "$@" ;;
  esac
}

hgcsetdate() {
  if [[ $1 == --help ]]; then
    echo '
    hgcsetdate [rev] [format]

Output the timestamp of the specified revision in the specified format.

`format` is optional and defaults to "%d %B %Y". If both arguments are
omitted, `rev` defaults to "tip".'
  else
    rev=${1:-tip}
    format=${2:-'%d %B %Y'}
    isodate=`hg log --template '{date|isodate}' --rev $rev`
    date -j -f '%F %H:%M %z' "$isodate" +"$format" | sed s/^0//
  fi
}
