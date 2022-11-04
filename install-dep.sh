#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"
dependencies="awesome kitty flameshot kitty rofi xsettingsd zsh alacritty firefox lf"

printf "${cg}The dependencies you are going to install are:\n"
printf "${cb}${dependencies}\n\n"
printf "${cr}"
read -p "Do you wish to proceed? [y/n]: " allowed

case $allowed in
  Y*|y*)
    printf "${cg}It Works :)\n";;
  *) printf "${cr}Aborting!\n";;
esac
