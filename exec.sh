#!/bin/bash

# Define the alias
alias_line='alias p="$HOME/.config/gitmane/gitpush.sh"'

# Check for .zshrc and append the alias
if [ -f "$HOME/.zshrc" ]; then
    echo $alias_line >> $HOME/.zshrc
    echo "Alias added to .zshrc"
# Check for .bashrc and append the alias
elif [ -f "$HOME/.bashrc" ]; then
    echo $alias_line >> $HOME/.bashrc
    echo "Alias added to .bashrc"
# If neither file exists, create .bashrc and append the alias
else
    touch $HOME/.bashrc
    echo $alias_line >> $HOME/.bashrc
    echo ".bashrc file created and alias added"
fi