# ITERM SPECIFIC ######
# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# ALIASES #####
alias ll='ls -la'
alias ls='ls -1sh'


# ENABLE POSIX COMMANDS #####
#PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export FIGNORE=DS_Store

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

source /Users/jwoelper/.iterm2_shell_integration.bash

##
# Your previous /Users/jwoelper/.bash_profile file was backed up as /Users/jwoelper/.bash_profile.macports-saved_2014-12-12_at_17:13:04
##

# MacPorts Installer addition on 2014-12-12_at_17:13:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


