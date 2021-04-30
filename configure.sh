#!/bin/bash

source ./helpers.sh

CONFIG_DIR="$(getScriptDirectory)"

function linkConfig {
  fileName="${1}"
  fileExtraPath="${2}"

  requireFileNotExist "${HOME}/${fileName}" "Do you want to replace ${fileName}?" &&
    echo "Linking ${fileName}..." &&
    ln -sv "${CONFIG_DIR}/${fileExtraPath}${fileName}" "${HOME}/${fileName}" ||
    echo -e "Not linked ${fileName}"
  printSeparator
}

linkConfig .gitconfig
linkConfig .zshrc zsh/
