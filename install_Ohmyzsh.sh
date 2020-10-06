#!/bin/bash

sudo apt update && sudo apt install zsh
user='$(whoami)'
chsh -s /usr/bin/zsh $user
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
