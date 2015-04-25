#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04
# instances

sudo apt-get update

sudo apt-get install -y git-core byobu

# Install Emacs
sudo apt-get install -y emacs24

# Install Python
sudo apt-get install -y python-pip pypy 
sudo pip install -U virtualenvwrapper
mkdir -p ~/.virtualenvs

# Install Docker
sudo -i wget -qO- https://get.docker.com/ | sh

# Install R
sudo cat "deb http://cran.csiro.au/bin/linux/ubuntu trusty/" > /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install -y r-base
