# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Configure Google Go
GOPATH=$HOME/code/go

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jgorset"

# Configure default editor
export EDITOR="vim"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# NPM
export PATH=/usr/local/share/npm/bin:$PATH

# Direnv
eval "$(direnv hook zsh)"

# Tmuxinator
source ~/.oh-my-zsh/completions/tmuxinator.zsh

# Don't autocorrect
unsetopt correct_all

# Set locale
export LC_ALL=en_US.UTF-8

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
