#!/bin/bash
if [ -d "$HOME" ]; then
    if [ -f "$HOME/.bash_profile" ]; then
        rm "$HOME/.bash_profile"
    fi
    echo "Fetching .bash_profile"
    wget -q https://gist.githubusercontent.com/timoreith/dbad36a60dc187fdbf1b6c9b2ebc5509/raw/.bash_profile -O $HOME/.bash_profile
    echo "Fetching .bash_aliases"
    wget -q https://gist.githubusercontent.com/timoreith/f8f1ee452bb9000c4df0ce3e5b8a9ced/raw/.bash_aliases -O $HOME/.bash_aliases
    echo "Fetching .bash_prompt"
    wget -q https://raw.githubusercontent.com/timoreith/sexy-bash-prompt/master/.bash_prompt -O $HOME/.bash_prompt
    echo "Fetching .vimrc"
    wget -q https://gist.githubusercontent.com/timoreith/a767f181a16b6881aad9f95f1dc5e509/raw/.vimrc -O $HOME/.vimrc
fi
