#!/bin/bash

function getScriptDirectory {
  cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd
}

function confirm {
  read -rp "$1 ([y]yes or [N]o): "
  case $(echo "$REPLY" | tr 'A-Z' 'a-z') in
    y|yes)  return 0  ;;
    *)      return 1  ;;
  esac
}

function requireFileNotExist {
  filePath="${1}"
  message="${2}"

  if [[ ! -e "${filePath}" ]]; then
    return 0
  else
    confirm "${message:="Do you want to remove ${filePath}?"}" &&
      rm "${filePath}" -v &&
      return 0 ||
      return 1
  fi
}

function printSeparator {
  echo '----------'
}
