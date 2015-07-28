#!/bin/sh
# Custom BYOL install script for Ubuntu 14.02
# $1 = licenseKey

logger "Installing Azure Dev Environment"

customer=$1

echo $customer >> /tmp/log.txt

sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo npm install -g azure-cli
