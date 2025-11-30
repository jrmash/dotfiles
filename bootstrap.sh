#!/usr/bin/env -S bash -euET -o pipefail

arch="$(uname -m)"
platform="$(uname -s)"

## Install and setup Homebrew (if missing) and enable it in the current shell.
if [ ! "$(command -v brew)" > /dev/null ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  if [[ "${platform}" == "Darwin" ]]; then
    if [[ "${arch}" == "arm64" ]]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ "${arch}" == "x86_64" ]]; then
      eval "$(/usr/local/bin/brew shellenv)"
    fi
  elif [[ "${platform}" =~ ^Linux ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi
fi

brew install chezmoi
chezmoi init https://github.com/jrmash/dotfiles.git
chezmoi apply -v
