#!/usr/bin/env bash

SPECTACLE_LINK="https://s3.amazonaws.com/spectacle/downloads/Spectacle+1.2.zip"

# Installing Homebrew
echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Done installing homebrew..."

# Installing useful apps
echo "Installing the following: git, yarn, make, travis, vs-code, chrome, firefox, spectacle, iterm2 and more!"

brew install git yarn make travis

brew cask install visual-studio-code google-chrome firefox spectacle iterm2 docker vlc

# Installing ohmyszhhhhh
echo "Installing ohmyzsh!"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "done installing ohmyzsh"

echo "Installing node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node
echo "Done installing nodejs"

# SETTING UP VIM PLUG
echo "Setting up neovim plugin manager - vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done setting up neovim plugin manager"


############################ END OF INSTALLATIONS ##########################################
nvm use node
