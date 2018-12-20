#!/bin/bash

if [ -d "$HOME" ]; then

    if [ "$1" == "backup" ] && [ -f "$HOME/.bash_profile" ]; then
        echo "Creating backup of .bash_profile"
        mv "$HOME/.bash_profile" "$HOME/.bash_profile.bak"
    fi
    echo "Fetching .bash_profile"
    wget -q https://gist.githubusercontent.com/timoreith/dbad36a60dc187fdbf1b6c9b2ebc5509/raw/.bash_profile -O $HOME/.bash_profile

    if [ "$1" == "backup" ] && [ -f "$HOME/.bash_aliases" ]; then
        echo "Creating backup of .bash_aliases"
        mv "$HOME/.bash_aliases" "$HOME/.bash_aliases.bak"
    fi
    echo "Fetching .bash_aliases"
    wget -q https://gist.githubusercontent.com/timoreith/f8f1ee452bb9000c4df0ce3e5b8a9ced/raw/.bash_aliases -O $HOME/.bash_aliases

    if [ "$1" == "backup" ] && [ -f "$HOME/.bash_prompt" ]; then
        echo "Creating backup of .bash_prompt"
        mv "$HOME/.bash_prompt" "$HOME/.bash_prompt.bak"
    fi
    echo "Fetching .bash_prompt"
    wget -q https://raw.githubusercontent.com/timoreith/sexy-bash-prompt/master/.bash_prompt -O $HOME/.bash_prompt

    if [ "$1" == "backup" ] && [ -f "$HOME/.vimrc" ]; then
        echo "Creating backup of .vimrc"
        mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
    fi
    echo "Fetching .vimrc"
    wget -q https://gist.githubusercontent.com/timoreith/a767f181a16b6881aad9f95f1dc5e509/raw/.vimrc -O $HOME/.vimrc
fi
