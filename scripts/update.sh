#!/bin/zsh

## Sourcing .zshrc for sdkman and zap
source ~/Developer/Dotfiles/zsh/.zshrc

## Update Homebrew 
echo "Updating Homebrew ..."
echo ""
brew update 
brew upgrade
brew upgrade --cask

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
