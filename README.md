Mash's `dotfiles`, managed by [`chezmoi`](https://github.com/twpayne/chezmoi).

> [!WARNING]
> As with anything you find on the internet, _**use at your own risk**_.
> 
> This collection of configuration files is available purely for educational purposes. If you want to use the dotfiles in this repository, you should first fork it, review the code, and add/remove/update things to suit your own needs.
> 
> **Do not blindly use my settings unless you're fully aware of what that entails**.

## Setup Guide

The following command will bootstrap a new system with these `dotfiles`

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrmash/dotfiles/main/bootstrap.sh)"
```

When the above is complete, the following commands will help further prepare the system for use.

```
brew bundle

## Setup Tools
tfswitch --latest
tgswitch --latest
```
