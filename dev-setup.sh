#!/bin/sh -v

# https://asdf-vm.com/#/core-manage-asdf-vm
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

sudo apt-get install libssl-dev libreadline-dev zlib1g-dev
asdf plugin add ruby

asdf install

# show versions in use
asdf current
