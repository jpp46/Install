#!/bin/sh
# AMP
cargo install amp
cd $HOME/Install/macOS_Catalina
cp *.sublime-syntax /Users/powers/Library/Application\ Support/amp/syntaxes
cd /Users/powers/Library/Application\ Support/amp/syntaxes
wget https://raw.githubusercontent.com/sublimehq/Packages/master/Rust/Cargo.sublime-syntax
wget https://raw.githubusercontent.com/evancz/elm-syntax-highlighting/master/src/elm.sublime-syntax

# ALACRITTY CONFIG
mkdir $HOME/.config
mkdir $HOME/.config/alacritty
cd $HOME/Install/macOS_Catalina
cp alacritty.yml $HOME/.config/alacritty

# JULIA PACKAGES
julia $HOME/Install/macOS_Catalina/install_script.jl

# PYROSIM
mkdir $HOME/.source-build
cd $HOME/.source-build
git clone https://github.com/ccappelle/pyrosim.git
cd pyrosim
sh build.sh
pip install -e .

# COCO BENCHMARKING
cd $HOME/.source-build
git clone https://github.com/numbbo/coco.git
cd coco
python do.py run-python
python do.py install-postprocessing

# SHC SHELL SCRIPT COMPILER
cd $HOME/.source-build
git clone https://github.com/neurobin/shc.git
cd shc
./configure && make && make install

# ELM OPTIMIZE SCRIPT to BIN
cd $HOME/Install/macOS_Catalina
cp optimize.sh $HOME/.source-build
cd $HOME/.source-build
chmod +x optimize.sh
shc -f optimize.sh -o elm-make
mv elm-make /usr/local/bin

# CONFIGURE EXERCISM
exercism configure --token=c74dba39-40ac-4b31-bf6d-547783acc647

# INSTALL JULIA PACKAGES
cd $HOME/Install/macOS_Catalina
julia install_script.jl
cd $HOME

# SUPER COMPUTER ACCESS
ssh-keygen
ssh-copy-id jpowers4@bluemoon-user1.uvm.edu

# GITHUB SETUP
git config --global user.name jpp46
git config --global user.email jpowers4@uvm.edu
git config --global core.editor amp
git config --global credential.helper store

rm -rf Install

# EXTRA INFO
  # SLACK HANDLES
    # mecl-uvm elmlang rust-lang julialang cpplang wesbos data-lab-20

  # DISCORD HANDLES
    # rustsim handmade.network

  # APPS TO INSTALL
    # Pages Keynote Numbers
