#Stop bash from caching duplicate lines.
HISTCONTROL=ignoredups

# Monitor logs
alias syslog='sudo tail -100f /var/log/syslog'
alias sysmessages='sudo tail -100f /var/log/messages'

# Disk free in human terms
alias df='df -h'

# perform 'ls' after 'cd' if successful.
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}
alias cdls='cdls'
# ls command with hidden files
alias als='ls -al'

# Confirmation
alias cp='cp -v'
alias mv='mv -v'
alias ln='ln -v'
alias rmdir='rmdir -v'
alias rm='rm -i'

# Show ports in use
alias shports='lsof -i -P | grep -i "listen"'

# Remove all DS_Store files (in the current working directory)
alias rmds='sudo find . -name ".DS_Store" -depth -exec rm {} \;'

# Change modifiers for all directories to 755 (in the current working directory)
alias chmoddirs='find . -type d -exec chmod 755 {} \;'
# Change modifiers for all files to 644 (in the current working directory)
alias chmodfiles='find . -type f -exec chmod 644 {} \;'
