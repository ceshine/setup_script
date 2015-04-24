#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04
# instances

sudo apt-get update

sudo apt-get install -y git-core byobu

# Install emacs
sudo apt-get install -y emacs24

# Install python
sudo apt-get install -y python-pip pypy 
sudo pip install -U virtualenvwrapper
mkdir ~/.virtualenvs
