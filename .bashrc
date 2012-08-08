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
