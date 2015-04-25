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
sudo sh -c 'wget -qO- https://get.docker.com/ | sh'
sudo apt-get install apparmor
sudo apt-get install -y curl
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose


# Install R
sudo cat "deb http://cran.csiro.au/bin/linux/ubuntu trusty/" > /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install -y r-base
