# Set Homebrew CASK Path
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Add user bin folder the path
export PATH=~/bin:/usr/local/bin:$PATH

# Coloured BASH with GIT Status
if [ -f ~/.bash_prompt ]; then
  .  ~/.bash_prompt
fi

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# BASH alliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
