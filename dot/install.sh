#!/bin/bash

function has() {
   hash $1
}

HTTPS_URL="https://github.com/depth401/dotfiles.git"
SSH_URL="git@github.com:depth401/dotfiles.git"
TARBALL_URL="https://github.com/depth401/dotfiles/archive/master.tar.gz"

GHQ_DOTPATH="github.com/depth401/dotfiles"
DOTPATH=~/.dotfiles

# Donwload dotfiles repository and change directory.
if has "ghq"; then
   ghq get "$HTTPS_URL"
   cd "$(ghq root)/${GHQ_DOTPATH}"
elif has "git"; then
   git clone --recursive "$HTTPS_URL" "$DOTPATH"
   cd "$DOTPATH"
elif has "curl" || has "wget"; then
   if has "curl"; then
      curl -L "$TARBALL_URL"
   elif has "wget"; then
      wget -O - "$TARBALL_URL"

   fi | tar zxv
else
   echo "None of ghq, git, curl and wget exist."
   exit 1
fi

cd dot

# Check GNU Stow is installed or not.
if ! has "stow"; then
    echo "Stow does not exists"
    exit 1
fi

# Link dotfiles.
stow --verbose=2 zsh emacs tig config -t ~/
