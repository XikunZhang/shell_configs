# .bashrc
if [ -z "$PS1" ]; then
    return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# added by Anaconda3 installer
export PATH="/home/xikunz2/anaconda3/bin:$PATH"

# use zsh as default shell
export SHELL=/bin/zsh
exec /bin/zsh -l
