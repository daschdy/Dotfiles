#!/bin/zsh

## Sourcing .zshrc for sdkman and zap
source ~/Developer/Dotfiles/zsh/.zshrc

## Update Homebrew 
echo "Updating Homebrew ..."
echo ""
brew update 
brew upgrade 

echo "Cleaning Homebrew ..."
echo ""
brew cleanup 
brew autoremove 

## SKDMAN 
echo "Updating sdkman ..."
echo ""
sdk update

## RustUp 
echo "Updating Rust ..."
echo ""
rustup update 

echo ""
echo "You are up to date!!!"
