#!/bin/sh

HOSTNAME = 'echo hostname'
PUYMA = "/Users/$USER/Documents/42_core"

alias dark="osascript -e 'tell app \"System Events\"\
	to tell appearance preferences to set dark mode to not dark mode'"

# git config
git config --global core.excludesfile ~/Documents/puyma/.gitignore_global
git config --global user.name "puyma"
# git config --global user.email $EMAIL

osascript -e 'set Volume 0'
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
osascript -e 'tell app "System Events" to tell appearance preferences to set highlight color to purple'
#osascript -e 'tell app "System Events" to tell dock preferences to set autohide to true'
defaults write com.apple.assistant.support "Assistant Enabled" -bool false
defaults write com.apple.Siri StatusMenuVisible -bool false
killall Finder && killall -KILL SystemUIServer

echo "Setup: OK"

# 
# 
# 
# .zsh config
# 
# PUYMA = "/Users/$USER/Documents/42_core"
#
# alias francinette=/Users/$USER/francinette/tester.sh
# alias paco=/Users/$USER/francinette/tester.sh
#
# alias aout='./a.out'
# alias ascii='man ascii'
# alias cd..='cd ..'
# alias fclean='make fclean'
# alias gcc='gcc -Wall -Werror -Wextra'
# alias ignore="vim ~/$PUYMA/.gitignore_global"
# alias megapaco='paco --strict'
# alias norm='norminette -R CheckForbiddenSourceHeader | grep -v OK!'
# alias push='git push'
# alias status='git status'
#
# system configuration script
# alias setup="sh $PUYMA/sysconfig.sh"
#
# macOS toggle dark mode
# alias dark="osascript -e 'tell app \"System Events\"\
#	to tell appearance preferences\
#	to set dark mode\
#	to not dark mode'"
