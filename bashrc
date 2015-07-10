#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

PS1='\[\e[1;32m\]\u\[\e[m\] \[\e[0;34m\]\w\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;37m\]'
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

eval $(dircolors /usr/share/dircolors/dircolors.256dark)
PATH=$PATH:~/.cabal/bin

set -o vi
export EDITOR="vim"

complete -cf sudo

#xrdb .Xresources

 #Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
