function set_prompt() {
  branch=$(git branch 2> /dev/null | grep "*" || hg branch 2> /dev/null)
  scm=$(grep -q "*" <<< $branch && echo "git" || ([[ $branch ]] && echo "hg"))
  branch=$(echo "$branch" | sed "s/* //")

  # Display "git"/"hg" in parens unless on the main branch.
  [[ ($scm == git && $branch != master) ||
     ($scm == hg && $branch != default) ]] && branch="$branch ($scm)"

  if [[ $TERM == dumb ]]; then
    [[ $branch ]] && branch=" on $branch"
    PS1="\n\w$branch\n> "
  else
    [[ $branch ]] && branch=" on \[\e[0;33m\]$branch"
    PS1="\n\[\e[0;36m\]\w\[\e[0;37m\]$branch\n\[\e[0;37m\]> \[\e[0m\]"
  fi
}

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export LESS=-R
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PROMPT_COMMAND=set_prompt

date() {
  if [[ $1 == -R || $1 == --rfc-822 ]]; then
    # Output RFC-822 compliant date string.
    # e.g. Wed, 16 Dec 2009 15:18:11 +0100
    /bin/date | sed "s/[^ ][^ ]*$/`/bin/date +%z`/"
  else
    /bin/date "$@"
  fi
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
