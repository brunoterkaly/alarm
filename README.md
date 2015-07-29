# ALARM (Azure Linux Resource Manager)

The purpose of alarm is to enable ISVs to better enable license key management on customer virtual machines.

- There are partners in the Azure Marketplace that have two models for monetization
	- The first is a BYOL model 
    - The second is a paid customer support model for their open source products. 
- Currently, it is not easy to deploy some of these solutions in the marketplace 
- The expectation is that the customer will remote into the VM and install the license key(s) that they purchased
- Another issue is customer discovery
- There is no mechanism that tells the partner which customers have provisioned software from the partner and which license keys are being used
- There is also no mechanism to determine per hour CPU usage

![](images/buylicense.png)

## How this content can help

The purpose of this content is to enable your customers to quickly and easily place the license keys in virtual machines that they provision.

- Your customers will need to use the Azure resource manager to do their provisioning
- This document will help you simplify replacements of life in school on provisioned virtual machines
- Your customers will:
	- Need to begin by provisioning a Linux virtual machine through the portal
	- Install the Azure cross platform tooling on the Linux VM
	- Will clone this repository to the Linux VM
	- Make necessary changes to azuredeploy.json to include customer information as well as license key information


## Getting Setup

One of the first things you'll need to do is provision a Linux VM:
- This Linux VM will be used to provision a cluster
- We will install the Azure cross platform tooling on it
- We will also clone this repository to it
- It will enable us to leverage the two important files used in the provisioning process
	- azuredeploy.json
	- azuredeploy.parameters.json


![](images/snap1.png)

#### Getting the connection information of the VM

Once you have provisioned this virtual machine, you will need to gather its connection information:
- The IP address
- The port number

![](images/snap002.png)

#### SSH into the VM

From there you will need to remotely connect into that virtual machine. MacOS has built them as SSH capabilities. Windows requires you to install the Putty application.

![](images/snap003.png)


#### Installing the cross-platform tooling

Your next goal is to install the Azure cross-platform tooling. For Ubuntu images. This is simply a matter of issuing the following commands:

```
sudo apt-get update
sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo npm install -g azure-cli
``` 

![](images/snap005.png)


#### Testing the cross platform tooling

If tooling was successful, you will just need to type in the following command

````
azure --help
````



![](images/snap006.png)

## Getting Setup


## Getting Setup


## Getting Setup


## Getting Setup


