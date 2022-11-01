# fix bash warning for mac zshell
export BASH_SILENCE_DEPRECATION_WARNING=1

# Include .bashrc and git-completion
source $HOME/.bashrc
source $HOME/bin/git-completion.bash
source $HOME/bin/git-prompt.bash

# set editor for bundle open
export EDITOR=vim
export BUNDLER_EDITOR=vim

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak broken, non-colored terminal
export TERM='xterm-color'

# Set less output options
# Don't escape coloring
export LESS="-R"

# vim installation
export PATH="/opt/local/bin:/usr/local/bin:$PATH"

# global bin path
export PATH="$PATH:$HOME/bin"

# git
export PATH="$PATH:/usr/local/git/bin"

# Brew sbin
export PATH="/usr/local/sbin:$PATH"

# GPG setup
export GPG_TTY=$(tty)

# Go pathing
if [ -x "$(command -v brew)" ]; then
  export GOPATH=$HOME/go
  export GOROOT="$(brew --prefix golang)/libexec"
  export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
fi
