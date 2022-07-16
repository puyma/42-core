#!/bin/sh


# variables 

HOSTNAME="$echo $hostname"
export PUYMA=/Users/$USER/Documents/puyma

# toggle dark mode for macOS alias

alias dark="osascript -e 'tell app \"System Events\"\
	to tell appearance preferences to set dark mode to not dark mode'"

# terminal config

ln -f $PUYMA/.zshrc ~/.zshrc
source ~/.zshrc

# git config

ln -f $PUYMA/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore 
git config --global user.name "puyma"
git config --global user.email $MAIL

# macOS config

osascript -e 'set Volume 0'
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
osascript -e 'tell app "System Events" to tell appearance preferences to set highlight color to purple'
#osascript -e 'tell app "System Events" to tell dock preferences to set autohide to true'
defaults write com.apple.assistant.support "Assistant Enabled" -bool false
defaults write com.apple.Siri StatusMenuVisible -bool false
killall Finder && killall -KILL SystemUIServer

echo "Setup: OK"
