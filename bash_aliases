## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -a'

alias cddb='cd /mnt/Files/Dropbox/'

alias trash='mv -t /home/flo/.trash/'

alias mv='mv --backup=t'
alias cp='cp -i'

alias sudo='sudo '

alias steam-wine='WINEDEBUG=-all wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe -no-dwrite  >/dev/null 2>&1 &' 

alias sshuni='ssh e1425416@lva.student.tuwien.ac.at'

scpuni() {
	scp "$1" e1425416@lva.student.tuwien.ac.at:~/"$2";
}
