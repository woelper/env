# QUIT IF NON-INTERACTIVE #####
[ -z "$PS1" ] && return


# OSX SPECIFIC STUFF #####
if [ $(uname) == "Darwin" ]
then
	# ITERM SPECIFIC ######
	# Set CLOLOR if you want Ansi Colors in iTerm2 
	export CLICOLOR=1
	# Set colors to match iTerm2 Terminal Colors
	export TERM=xterm-256color

	# ENABLE POSIX COMMANDS #####
	# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
	export FIGNORE=DS_Store

	if [ $ITERM_SESSION_ID ]; then
		export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
	fi

	source /Users/jwoelper/.iterm2_shell_integration.bash

	# MacPorts Installer addition on 2014-12-12_at_17:13:04: adding an appropriate PATH variable for use with MacPorts.
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	# Finished adapting your PATH environment variable for use with MacPorts.
	
	# SPECIFIC ALIASES
	alias ls='ls -1sh'

fi

# LINUX SPECIFIC STUFF
if [ $(uname) == "Linux" ]
then
	# ALIASES #####
	alias ll='ls -la'
	alias ls='ls -1sh --color=auto'
fi
