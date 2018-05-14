#!/bin/sh

# TODO: using different check basedir : 
# myb forwarding service? web crawling service for the correct data?
if [ ! -d "$HOME/.yask" ]; then
    echo "Installing yask for the first time"
    git clone --depth=1 https://github.com/yggdrasilk/yask.git "$HOME/.yask"
    cd "$HOME/.yask"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "yask is already installed"
fi
