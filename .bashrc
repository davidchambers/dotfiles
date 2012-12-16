function set_prompt() {
  branch=$(git branch 2> /dev/null | grep "*" || hg branch 2> /dev/null)
  scm=$(grep -q "*" <<< $branch && echo "git" || ([[ $branch ]] && echo "hg"))
  branch=$(echo "$branch" | sed "s/* //")

  # Display "hg" in parens when in a Mercurial repo.
  [[ $scm == hg ]] && branch="$branch (hg)"

  path="\w"
  [[ $VIRTUAL_ENV ]] && path="(`basename $VIRTUAL_ENV`) $path"

  when=$(date +%H:%M)
  if [[ $TERM == dumb ]]; then
    [[ $branch ]] && branch=" :$branch"
    PS1="\n$when \w$branch\n> "
  else
    [[ $branch ]] && branch="\[\e[0;33m\] :$branch"
    PS1="\n\[\e[1;37m\]$when \[\e[0;36m\]$path$branch\n\[\e[0;37m\]> \[\e[0m\]"
  fi
}

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export LESS=-R
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
export PROMPT_COMMAND=set_prompt
export VIRTUALENV_DISTRIBUTE=true
export WORKON_HOME=$HOME/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

eval "$(rbenv init -)"

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
