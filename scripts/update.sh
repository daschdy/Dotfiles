#!/bin/bash

## Update Homebrew 
echo "Updating Homebrew ..." 
brew update 
brew upgrade 

echo "Cleaning Homebrew ..."
brew cleanup 
brew autoremove 

## SKDMAN 
echo "Updating sdkman ..."
sdk update

## RustUp 
echo "Updating Rust ..."
rustup update 

## Zap 
echo "Updating Zap ..."
zap update self 
zap update plugins 

## NEOVIM

echo "You are up to date!!!"
