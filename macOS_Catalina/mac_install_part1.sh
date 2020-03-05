#!/bin/sh
# xcode-select --install (do this first)

# SETUP
cd $HOME
sudo rm -rf $HOME/.*

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew doctor

# FIREFOX
brew cask install firefox

# SLACK
brew cask install slack

# DISCORD
brew cask install discord

# SCREEN FLOW
brew cask install screenflow

# STEAM
brew cask install steam

# F.LUX
brew cask install flux

# BALENA ETCHER
brew cask install balenaetcher

# SUBLIME
brew cask install sublime-text
# After install packages:
# Rust Enhanced, rustFmt, Julia Enhanced, Magic Python, Elm syntax and Format, Clang Format

# CLANG FORMAT
brew install clang-format

# ANACONDA PYTHON
brew cask install anaconda

# JULIA
brew cask install julia

# ELM
brew install elm
brew install elm-format
brew install node
npm install uglify-js --global

# NASM
brew install nasm

# EXERCISM
brew install exercism

# ARRAYFIRE
brew cask install arrayfire

# XQUARTZ
brew cask install xquartz

# QEMU
brew install qemu

# WGET
brew install wget

# FFMPEG
brew install ffmpeg

# YOUTUBE-DL
brew install youtube-dl

# PARI/GP
brew install pari

# TMUX
brew install tmux

# ALACRITTY
brew cask install alacritty

# CLEANUP
brew update
brew doctor
brew cleanup

# CLEAN HOME DIR
cd $HOME
sudo rm -rf .*
mkdir .source-build

# RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rm $HOME/.profile

# FINAL PROFILE
echo \
"
#PATH VARIABLES
export PATH=$HOME/.cargo/bin:/usr/local/anaconda3/bin:/usr/local/bin:/usr/local/sbin:\$PATH

export LD_LIBRARY_PATH=/usr/local/anaconda3/lib:\$LD_LIBRARY_PATH

# Get on the uvm super computer
alias vacc='ssh jpowers4@bluemoon-user1.uvm.edu'

proj() {
  cd /Users/powers/Documents/Joshua/Github/\$1
}

ml() {
  cd /Users/powers/Documents/Joshua/Learning/Udemy/MLCourse
  jupyter-notebook
}

submit() {
  exercism submit \$1
}

# Push to github with commit message
push() {
  git add .
  git commit -m \"\$1\"
  git push -u origin master
}

findAll() {
  ps aux | grep \$1
}

killAll() {
  kill \$(ps aux | grep \$1 | grep -v grep | awk '{print \$2}')
}

# Show hidden files in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide hidden files in finder
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Create install media
makedrive() {
  sudo \"/Applications/Install macOS Catalina.app/Contents/Resources/createinstallmedia\" --volume /Volumes/\$1
}" \
> $HOME/.zprofile

