# commands needed for fink
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# my customizations
alias ls="ls -F -G"
alias ll="ls -lh"
alias la="ls - a"
alias lla="ls -lha"
alias vi="vim"
alias less="less -i -R"
alias grep="grep --color=always -n"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH:~/.Scripts
export MANPATH=/opt/local/share/man:$MANPATH
export PS1="\[\e[1;32m\]\u@\h \[\e[0m\]\@ \[\e[1;31m\](\w)\n\[\e[1;33m\]$\[\e[m\] "
export PS2="> "
