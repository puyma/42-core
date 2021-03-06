#!/bin/sh

# variables 

EDITOR='vim'
CORE=/Users/$USER/Projectes/42-core
HOSTNAME=`hostname`

if [[ $HOSTNAME == *".42barcelona.com"* ]]
then

	# add nvim to PATH
	export PATH=$PATH:/sgoinfre/Perso/mpuig-ma/nvim-macos/bin

else

	# brew alias
	export PATH=$PATH:/opt/homebrew/bin:/opt/homebrew/sbin

	# nvm alias
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh

fi

# aliases

alias francinette=/Users/$USER/francinette/tester.sh
alias paco=/Users/$USER/francinette/tester.sh

alias aout='./a.out'
alias ascii='man ascii'
alias cd..='cd ..'
alias core="cd $CORE"
alias fclean='make fclean'
alias gcc='gcc -Wall -Werror -Wextra'
alias ignore="$EDITOR ~/.gitignore"
alias megapaco='paco --strict'
alias multipull="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"
alias norm='norminette -R CheckForbiddenSourceHeader | grep -v OK!'
alias push='git push'
alias status='git status'

# system config script

alias setup="sh $CORE/config_darwin.sh"

# 
# info
# 
# multipull alias from https://gabac.blog/posts/git-pull-many-repos-at-once/
# 
#
#
