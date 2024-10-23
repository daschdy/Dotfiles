#!/bin/zsh

## Sourcing .zshrc for sdkman
source ~/Developer/Dotfiles/zsh/.zshrc

## Update Homebrew 
echo "Updating Homebrew ..."
echo ""
brew update 

echo "Updating Homebrew Packages..."
echo ""
brew upgrade

echo "Cleaning Homebrew ..."
echo ""
brew cleanup 
brew autoremove 

## SKDMAN 
echo "Updating sdkman ..."
echo ""
sdk update

echo ""
echo "You are up to date!!!"
