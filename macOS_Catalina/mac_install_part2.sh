#!/bin/sh

# ANACONDA PYTHON
brew cask install anaconda

# JULIA PACKAGES
julia $HOME/Install/macOS_Catalina/install_script.jl

# PYROSIM
# mkdir $HOME/.source-build
# cd $HOME/.source-build
# git clone https://github.com/ccappelle/pyrosim.git
# cd pyrosim
# sh build.sh
# pip install -e .

# COCO BENCHMARKING
# cd $HOME/.source-build
# git clone https://github.com/numbbo/coco.git
# cd coco
# python do.py run-python
# python do.py install-postprocessing

# SUPER COMPUTER ACCESS
ssh-keygen
ssh-copy-id jpowers4@vacc-user1.uvm.edu

# GITHUB SETUP
git config --global user.name jpp46
git config --global user.email jpowers4@uvm.edu
git config --global core.editor subl
git config --global credential.helper store

rm -rf Install

# EXTRA INFO
  # SLACK HANDLES
    # mecl-uvm elmlang rust-lang julialang cpplang wesbos

  # DISCORD HANDLES
    # rustsim handmade.network

  # APPS TO INSTALL
    # Pages Keynote Numbers SnippetsLab OmniPlayerPro
