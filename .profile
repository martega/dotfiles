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
alias find="find -E"

export PATH=/opt/local/bin:/opt/local/sbin:~/.scripts:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
#export PS1="\[\e[1;36m\]\u@\h \[\e[0m\]\@ \[\e[1;31m\](\w)\[\e[0m\]\n\[\e[1;33m\]$\[\e[m\] "
export PS2="> "

export PROMPT_COMMAND='
	git_branch=`git symbolic-ref HEAD --short 2>/dev/null`
	if [ $? -eq 0 ]
	then
		num_changes=`git status | grep -c modified`
		if [ $num_changes -gt 0 ]
		then
			export PS1="\[\e[1;36m\]\u@\h \[\e[0m\]\@ \[\e[1;31m\](\w) \[\e[1;32m\]$git_branch($num_changes)\[\e[0m\]\n\[\e[1;33m\]$\[\e[m\] "
		else
			export PS1="\[\e[1;36m\]\u@\h \[\e[0m\]\@ \[\e[1;31m\](\w) \[\e[1;32m\]$git_branch\[\e[0m\]\n\[\e[1;33m\]$\[\e[m\] "
		fi
	else
		export PS1="\[\e[1;36m\]\u@\h \[\e[0m\]\@ \[\e[1;31m\](\w)\[\e[0m\]\n\[\e[1;33m\]$\[\e[m\] "
	fi
'

##
# Your previous /Users/martin.ortega/.profile file was backed up as /Users/martin.ortega/.profile.macports-saved_2013-01-25_at_10:27:48
##

# MacPorts Installer addition on 2013-01-25_at_10:27:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# MAMP
export PATH=/Applications/MAMP/Library/bin:$PATH

# Skype4Py
export VERSIONER_PYTHON_PREFER_32_BIT=yes
