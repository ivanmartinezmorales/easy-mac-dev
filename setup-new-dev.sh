#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Installing Homebrew
echo "--------------------------------------------------------------------"
echo "Installing homebrew"
echo "--------------------------------------------------------------------"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "--------------------------------------------------------------------"
echo "Done installing homebrew..."
echo "--------------------------------------------------------------------"
# Installing useful apps
echo "--------------------------------------------------------------------"
echo "Installing the following: git, yarn, make, travis, vs-code, chrome, firefox, spectacle, iterm2 and more!"
echo "--------------------------------------------------------------------"

brew install git yarn make travis

brew cask install visual-studio-code google-chrome firefox spectacle iterm2 docker vlc

# Installing ohmyszhhhhh
echo "--------------------------------------------------------------------"
echo "Installing ohmyzsh!"
echo "--------------------------------------------------------------------"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "--------------------------------------------------------------------"
echo "done installing ohmyzsh"
echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
echo "Installing node.js..."
echo "--------------------------------------------------------------------"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node
echo "--------------------------------------------------------------------"
echo "Done installing nodejs"
echo "--------------------------------------------------------------------"
# SETTING UP VIM PLUG
echo "--------------------------------------------------------------------"
echo "Setting up neovim plugin manager - vim-plug"
echo "--------------------------------------------------------------------"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "--------------------------------------------------------------------"
echo "Done setting up neovim plugin manager"
echo "--------------------------------------------------------------------"



############################ END OF INSTALLATIONS ##########################################
nvm use node
