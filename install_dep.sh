#!/bin/bash

wget https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
sudo tar -xvf go1.12.2.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
echo "Enter go project name to setup GOPATH : "
read name
export GOPATH=$HOME/Projects/$name
echo "GOPATH set to : $HOME/Projects/$name"
echo -e "\n"


sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs
