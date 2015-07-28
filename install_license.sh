#!/bin/sh
# Custom BYOL install script for Ubuntu 14.02
# $1 = licenseKey

logger "Installing License"

licenseKey=$1

echo $licenseKey >> /tmp/licensefile.txt
