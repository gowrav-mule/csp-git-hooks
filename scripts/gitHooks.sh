#!/bin/sh

GIT_HOOK_DIR="githooks"
DIR=$HOME/$GIT_HOOK_DIR/
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty, please change to a unique directory name"
else
    echo "$DIR is Empty"
fi

git clone git@github.com:gowrav-mule/csp-git-hooks.git $HOME/$GIT_HOOK_DIR/
git config --global core.hooksPath $HOME/$GIT_HOOK_DIR/.githooks