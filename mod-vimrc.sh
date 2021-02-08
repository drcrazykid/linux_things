#!/bin/bash

# Script to modify .vimrc for snippets and shortcuts





##############
#  SNIPPETS  #
##############

# Can have a directory with snippets of code inside files
# ~/.snippets/if
# cat if
## if (( $COUNT < 10 )) for numerical tests
## if [[ $USER = "root" ]] for string tests
# if [[ ]]
#  then
#		echo "true"
#  else
#		echo "false"
# if

# In normal mode
# use ':r "path to snippet"
# :r = read in
# :r!=reads in command like date EX:
#			:r!date "+\%x"

###############
#  SHORTCUTS  #
###############

# Enables line numbers with 'Ctrl + N' in normal mode
function updateVimRC(){
	echo "nmap <C-n> :set invnumber<CR>" >> ~/.vimrc
	echo "map <F2> i#!/bin/bash" >> ~/.vimrc 
	echo "map <F3> i#!/usr/bin/python3" >> ~/.vimrc
	echo "map <F4> o#This file was created on <ESC>:r!date '+\%d \%b \%y'<ESC>kJ" >> ~/.vimrc

	echo "syntax on" >> ~/.vimrc
}

FILE="~/.vimrc"

if [[ -f $FILE ]]; then
	echo "$FILE exists..."
	updateVimRC
else
	touch $FILE
	updateVimRC
fi

echo "Modifying $FILE now..."
echo "Added the following:"
tail $FILE

