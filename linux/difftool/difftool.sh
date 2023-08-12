#!/bin/bash
wget  -c https://cdist2.perforce.com/perforce/r19.1/bin.linux26x86_64/p4v.tgz 
tar zxvf p4v.tgz
sudo mkdir -p /opt/p4v
sudo cp -r ./p4v*/* /opt/p4v/
sudo ln -s /opt/p4v/bin/p4merge /usr/local/bin/p4merge
cp ./gitconfig ~/.gitconfig
rm -rf ./p4v* 


