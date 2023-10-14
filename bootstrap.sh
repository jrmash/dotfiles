#!/usr/bin/env -S bash -euET -o pipefail

## Install and setup Homebrew (if missing) and enable it in the current shell.
if [ ! "$(command -v brew)" > /dev/null ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  
  if [ -d "/opt/homebrew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

brew install chezmoi
chezmoi init https://github.com/jrmash/dotfiles.git
chezmoi apply -v
