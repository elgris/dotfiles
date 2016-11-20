# Load .bashrc and .bash_aliases exist 
test -f ~/.bashrc && source ~/.bashrc
test -f ~/.bash_aliases && source ~/.bash_aliases
test -f ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
