set_prompt() {
  local branch env when
  branch="$(GIT_PS1_SHOWDIRTYSTATE=true __git_ps1)"
  branch="${branch//$/\\$}"  # support dollar signs in branch names
  if [[ -n "$VIRTUAL_ENV" ]] ; then
    env=" \[\e[0;32m\]:$(basename $VIRTUAL_ENV)"
  else
    env=""
  fi
  when=$(date +%H:%M)
  if [[ $TERM == dumb ]]; then
    PS1="\n$when \w$branch$env\n$ "
  else
    PS1="\n\[\e[0;36m\]$when \[\e[0;33m\]\w\[\e[0;35m\]$branch$env\n\[\e[0;37m\]$ \[\e[0m\]"
  fi
}

include() {
  [[ -f "$1" ]] && . "$1" && echo sourced $1
}

main() {
  export CLICOLOR=1
  export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
  export LESS=-R
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  export PATH="$HOME/Library/Haskell/bin:$PATH"
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
  export PATH="$HOME/bin:$PATH"
  export PROMPT_COMMAND=set_prompt

  include "/opt/local/etc/bash_completion"
  include "/opt/local/share/git/contrib/completion/git-completion.bash"
  include "/opt/local/share/git/contrib/completion/git-prompt.sh"
}
main

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
