#!/bin/zsh

null="> /dev/null 2>&1"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"

echo "${r}Please enter your Student ID:${w}"
read STUDENT_ID

cp ~/.zshrc ~/.zshrc.bak

echo "${b}Adding your student ID to the terminal prompt... ${w}"

echo "
export PROMPT='%F{cyan}Student ID: $STUDENT_ID | %n@%m%f:%F{green}%~%f$ '
" >> ~/.zshrc
source ~/.zshrc

echo "${b}You have now changed the terminal prompt to your student ID${w}"
echo "${r}This is particularly important when taking screenshots for the assignment${w}"
echo " ${b}You should now close the terminal and open a new one for the changes to take place. ${w}"
