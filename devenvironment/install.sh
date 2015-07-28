#!/bin/sh
# Custom BYOL install script for Ubuntu 14.02
# $1 = licenseKey

logger "Installing Azure Dev Environment"

customer=$1

echo $customer >> /tmp/log.txt

sudo apt-get install --yes nodejs-legacy
sudo apt-get install --yes npm
sudo npm install -g azure-cli

# install git
sudo apt-get install --yes git
