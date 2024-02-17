A collection of `dotfiles` managed by [`chezmoi`](https://github.com/twpayne/chezmoi).

## Setup Guide

The following command will bootstrap a new system with these `dotfiles`

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrmash/dotfiles/main/bootstrap.sh)"
```

When the above is complete, the following commands will help further prepare the system for use.

```
chezmoi apply

## Install Packages
brew update
brew bundle

## Install Tools
tfswitch --latest
tgswitch --latest
```