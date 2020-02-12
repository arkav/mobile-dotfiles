# clear termux welcome info
clear
# set gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# set user
export USER=arkav
# enable vi mode
set -o vi
# alias stuff
alias ls=exa
alias q=exit
# nice little lamda
PS1="λ "
