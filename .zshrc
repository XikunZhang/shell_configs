# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# added by MacPorts 2.4.2 installer 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export DISPLAY=:0.0

# added by Anaconda3 5.0.0 installer
export PATH="/Users/XikunZhang/Applications/anaconda3/bin:$PATH"

#added for apache ant
export PATH="/Applications/apache-ant-1.10.1/bin:$PATH" 
export ANT_HOME="/Applications/apache-ant-1.10.1"

# add JAVA_HOME environment variable
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# added for MySQL client
export PATH=$PATH:/usr/local/mysql/bin

# added for BLAS Library
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:~/Applications/BLAS-3.8.0:~/Applications

# added for Hadoop
export HADOOP_HOME=$HOME/Applications/hadoop-3.1.0
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/bin 

# added for Spark
export SPARK_HOME=$HOME/Applications/spark-2.3.0-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin 

# added for truepie_demo 
# export PYTHONPATH=$PYTHONPATH:/Users/XikunZhang/OneDrive-UIUC/text_mining_research 

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
# plugins from the default repo ("robbyrussell/oh-my-zsh plugins/")
git 
common-aliases
autojump
dirhistory
screen
tmux
vi-mode
wd
heroku
# command-not-found

# plugins from the "zsh-users/$PLUGIN_NAME /" repo
zsh-autosuggestions
zsh-syntax-highlighting
)

# Added for plugin "autojump"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -z $SSH_CONNECTION ]]; then
  alias vim='mvim -v'
fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
# alias vim="$EDITOR"
alias vimrcs="cd ~/.vim_runtime/vimrcs"
alias study="cd /Users/XikunZhang/OneDrive\ -\ University\ of\ Illinois\ -\ Urbana/UIUC\ study "
alias ariang="/Applications/BaiduExporter-master/aria2c/start.sh"
alias la="ls -AFh"
alias lla="ls -lAFh"
alias ll="ls -lFh"

# hide "user@hostname" info in the command prompt
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
