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
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $home

for f in `ls -a1 .dotfiles`;
do
    if [[ "$f" != "." ]]      
    then
	if [[ "$f" != ".." ]]
	then
	    ln -shiv $script_dir/.dotfiles/$f $home/$f
	fi
    fi
done
git mv $script_dir/LICENSE $script_dir/.dotfiles
git mv $script_dir/README.md $script_dir/.dotfiles
git commit -am 'LICENSE and README.md stashed into oblivion, script completed'

