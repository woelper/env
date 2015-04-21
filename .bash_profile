# QUIT IF NON-INTERACTIVE #####
[ -z "$PS1" ] && return


# OS INDEPENDENT STUFF
alias gs='git status'
#alias 'git st' = 'git status'


# OSX SPECIFIC STUFF #####
if [ $(uname) == "Darwin" ]
then

    alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
    # ITERM SPECIFIC ######
	# Set CLOLOR if you want Ansi Colors in iTerm2 
	export CLICOLOR=1
	# Set colors to match iTerm2 Terminal Colors
	export TERM=xterm-256color

	# ENABLE POSIX COMMANDS #####
	# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
	export FIGNORE=DS_Store

	if [ $ITERM_SESSION_ID ]
    then
		export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
	fi

	source /Users/jwoelper/.iterm2_shell_integration.bash

	# MacPorts Installer addition on 2014-12-12_at_17:13:04: adding an appropriate PATH variable for use with MacPorts.
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	# Finished adapting your PATH environment variable for use with MacPorts.
	
	# SPECIFIC ALIASES
	alias ls='ls'
    PVRTOOL="/Applications/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/OSX_x86/PVRTexToolCLI"
    alias PVR=$PVRTOOL

fi

# LINUX SPECIFIC STUFF
if [ $(uname) == "Linux" ]
then
	# ALIASES #####
	alias ll='ls -la'
	alias ls='ls --color=auto'
	
	# FANCY PROMPT #####
	PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

fi
