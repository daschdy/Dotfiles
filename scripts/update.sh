#!/bin/zsh

## Sourcing .zshrc for sdkman and zap
source ~/Developer/DotfilesMac/zsh/.zshrc

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

## Zap 
echo "Updating Zap ..."
echo ""
zap update self 
zap update plugins 

echo ""
echo "You are up to date!!!"
