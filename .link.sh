#!/bin/bash
############
## Link all the files in the .dotfiles folder into the current users home
##
## usage: ./.link.sh <alternate home>
##
##
############

## home = 

for f in `ls -a1 .dotfiles`;
do
    if [[ "$f" != "." ]]      
    then
	if [[ "$f" != ".." ]]
	then
	    ln -s `pwd`/.dotfiles/$f ~/$f
	fi
    fi
done
