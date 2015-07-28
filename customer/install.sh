#!/bin/sh
# Custom BYOL install script for Ubuntu 14.02
# $1 = licenseKey

logger "Installing Azure Dev Environment"

customerName=$1
contactName=$2
contactEmail=$3
customerAzureSubscriptionId=$4


echo $customerName >> /tmp/log.txt
echo $contactName >> /tmp/log.txt
echo $contactEmail >> /tmp/log.txt
echo $customerAzureSubscriptionId >> /tmp/log.txt
