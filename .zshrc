#!/bin/sh

# variables 

EDITOR='vim'
PUYMA=/Users/$USER/Documents/puyma

# aliases

alias francinette=/Users/$USER/francinette/tester.sh
alias paco=/Users/$USER/francinette/tester.sh

alias aout='./a.out'
alias ascii='man ascii'
alias cd..='cd ..'
alias code="open -a Visual\ Studio\ Code.app"
alias fclean='make fclean'
alias gcc='gcc -Wall -Werror -Wextra'
alias ignore="$EDITOR ~/.gitignore"
alias megapaco='paco --strict'
alias norm='norminette -R CheckForbiddenSourceHeader | grep -v OK!'
alias push='git push'
alias status='git status'

# system config script

alias setup="sh $PUYMA/config_darwin.sh"
