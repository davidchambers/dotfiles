export PROMPT_COMMAND='                                                     \
  branch=$(git branch 2> /dev/null | grep "*" || hg branch 2> /dev/null);   \
  branch=$(echo "$branch" | sed "s/* //");                                  \
  if [[ "$TERM" == dumb ]]; then                                            \
    [[ $branch ]] && branch=" on $branch";                                  \
    PS1="\n\w$branch\n> ";                                                  \
  else                                                                      \
    [[ $branch ]] && branch=" on \[\e[0;33m\]$branch";                      \
    PS1="\n\[\e[0;36m\]\w\[\e[0;37m\]$branch\n\[\e[0;37m\]> \[\e[0m\]";     \
  fi                                                                        '

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export LESS=-R
export PATH=/opt/local/bin:/opt/local/sbin:$PATH