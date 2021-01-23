#!/bin/sh
###########################
#Installation of Python 3.7
###########################

sudo add-apt-repository ppa:jonathonf/python-3.7
sudo apt-get update && sudo apt-get install python3.7 python3.7-dev

cd ~
git clone https://github.com/NewYorkCoinNYC/electrumx.git
cd electrumx
sudo python3.7 setup.py install

