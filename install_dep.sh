#!/bin/bash

wget https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
sudo tar -xvf go1.12.2.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local
echo "export GOROOT=/usr/local/go" >> ~/.profile
echo "Enter go project name to setup GOPATH : "
read name
echo "export GOPATH=$HOME/Projects/$name" >> ~/.profile
echo "GOPATH set to : $HOME/Projects/$name"
echo -e "\n"
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
source ~/.profile

sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs
sudo apt-get install npm
