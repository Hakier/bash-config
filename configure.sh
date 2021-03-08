#!/bin/bash

source ./helpers.sh

CONFIG_DIR="$(getScriptDirectory)"

function linkGitConfig {
  requireFileNotExist ~/.gitconfig "Do you want to replace .gitconfig?" &&
    echo "Linking .gitconfig..." &&
    ln -sv "${CONFIG_DIR}/.gitconfig" ~/.gitconfig ||
    echo -e "Not linked .gitconfig"
  printSeparator
}

linkGitConfig