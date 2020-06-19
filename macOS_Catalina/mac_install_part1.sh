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

# FIREFOX
brew cask install firefox

# DROPBOX
brew cask install dropbox

# SUBLIME
brew cask install sublime-text
# After install packages:
# Rust Enhanced, rustFmt, Julia Enhanced, Elm syntax and Format, Clang Format, Ayu, TabNine

# CLANG FORMAT
brew install --build-from-source clang-format

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

# VLC
brew cask install vlc

# JULIA
brew cask install julia

# ELM
brew install elm
brew install elm-format
brew install node
npm install uglify-js --global

#OPENGL GLFW GLEW
brew install --build-from-source llvm
brew install --build-from-source glfw
brew install --build-from-source glew

# ARRAYFIRE
brew cask install arrayfire

# XQUARTZ
brew cask install xquartz

# QEMU
brew install --build-from-source qemu

# WGET
brew install --build-from-source wget

# FFMPEG
brew install --build-from-source ffmpeg

# YOUTUBE-DL
brew install --build-from-source youtube-dl

# PARI/GP
brew install --build-from-source pari

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
