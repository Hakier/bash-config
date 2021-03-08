#!/bin/bash

function getScriptDirectory {
  echo $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )
}

function yesNo {
  read -p "$1 ([y]yes or [N]o): "
  case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
    y|yes)  echo "yes"  ;;
    *)      echo "no"   ;;
  esac
}

function printSeparator {
  echo '----------'
}

CONFIG_DIR="$(getScriptDirectory)"

function linkGitConfig {
  destinationPath=~/.gitconfig

  if [[ ! -e "${destinationPath}" ]]; then
    _linkGitConfig
  elif [[ "yes" == $(yesNo "Do you want to replace .gitconfig?") ]]; then
    rm "${destinationPath}" -v &&
      echo -e "Not linked .gitconfig"
  else
    echo -e "Not linked .gitconfig"
  fi

  printSeparator
}

function _linkGitConfig {
  echo "Linking .gitconfig..." &&
    ln -s "${CONFIG_DIR}/.gitconfig" ~/.gitconfig
}

linkGitConfig