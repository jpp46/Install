#!/bin/sh
# xcode-select --install (do this first)

# SETUP
cd $HOME
sudo rm -rf $HOME/.*

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew doctor

# FIRA CODE FONTS
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# SUBLIME
brew cask install sublime-text
# After install packages:
# Rust Enhanced, rustFmt, Julia Enhanced, Elm syntax and Format, Clang Format, Ayu, TabNine

# CLANG FORMAT
brew install clang-format

# SLACK
brew cask install slack

# DISCORD
brew cask install discord

# SCREEN FLOW
brew cask install screenflow

# OPEN BROADCAST SOFTEWARE
brew cask install obs

# Make MKV
brew cask install makemkv

# JULIA
brew cask install julia

# FORTH
brew install gforth

# ELM
brew install elm
brew install elm-format
brew install node
npm install uglify-js --global

# ARRAYFIRE
brew cask install arrayfire

# WGET
brew install wget

# OMP
brew install --build-from-source libomp

# FFMPEG
brew install --build-from-source ffmpeg

# YOUTUBE-DL
brew install --build-from-source youtube-dl

# CLEANUP
brew update
brew upgrade
brew doctor
brew cleanup
brew update
brew upgrade
brew doctor
brew cleanup

# CLEAN HOME DIR
cd $HOME
sudo rm -rf .*
mkdir .source-build

# FINAL PROFILE
cd Install/macOS_Catalina
cp .zprofile $HOME
