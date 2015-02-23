# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions

alias ll='ls -ltrG'
alias la='ls -laG'
alias ls='ls -G'
alias grep='grep --color'

alias syn='~/shell/synchro_cmd.sh'
alias synu='~/shell/synchro_cmd_user.sh'
