#!/bin/bash
############
## Link all the files in the .dotfiles folder into the current users home
##
## usage: ./.link.sh <alternate home>
##
##
############

default_home=~
home=${1-$default_home}

echo $home

for f in `ls -a1 .dotfiles`;
do
    if [[ "$f" != "." ]]      
    then
	if [[ "$f" != ".." ]]
	then
	    ln -siv `pwd`/.dotfiles/$f $home/$f
	fi
    fi
done
