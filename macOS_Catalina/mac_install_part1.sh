#!/bin/sh
# xcode-select --install (do this first)

# SETUP
cd $HOME
sudo rm -rf $HOME/.*

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew doctor

# SUBLIME
brew install --cask sublime-text
# After install packages:
# Rust Enhanced, rustFmt, Julia Enhanced, Elm syntax and Format, Clang Format, Ayu, TabNine

# CLANG FORMAT
brew install clang-format

# SCREEN FLOW
brew install --cask screenflow

# OPEN BROADCAST SOFTEWARE
# brew cask install obs

# Make MKV
# brew cask install makemkv

# FORTH
brew install -s gforth

# ELM
brew install elm
brew install elm-format
brew install node
npm install uglify-js --global

# WGET
brew install wget

# FFMPEG
brew install -s ffmpeg

# YOUTUBE-DL
brew install -s youtube-dl

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

# JULIA
cd $HOME/install
MAJOR_RELEASE=1
MINOR_RELEASE=5
MAINTENANCE_RELEASE=3
MM=$MAJOR_RELEASE.$MINOR_RELEASE
MMM=$MAJOR_RELEASE.$MINOR_RELEASE.$MAINTENANCE_RELEASE
curl https://julialang-s3.julialang.org/bin/mac/x64/$MM/julia-$MMM-mac64.dmg -o julia.dmg
sudo hdiutil attach julia.dmg
cd /Volumes/julia-$MMM
sudo cp -rf julia-$MM.app /Applications
cd $HOME/install
sudo hdiutil detach /Volumes/julia-$MMM
ln -s /Applications/julia-$MM.app/Contents/Resources/julia/bin/julia /usr/local/bin

# FINAL PROFILE
cd $HOME/Install/macOS_Catalina
cp .zprofile $HOME
cp Forth.sublime-syntax /Users/powers/Library/Application Support/Sublime Text 3/Packages/User/
