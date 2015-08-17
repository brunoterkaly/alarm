# Marketplace ARM Template Example

### Introduction
The purpose of this document is to allow customers to take partner images and apply them through the marketplace, using either the deploy to azure button you see below, or to use the other mechanisms.

### How to deploy images
Images from partners can be deployed in a variety of ways. First, they can be deployed using PowerShell or the cross platform tooling (Linux). They can also be deployed from the Azure marketplace.

### Using Command line tools

This document will focus on showing you how to deploy these images using the command line tools.

Command line tools provide the greatest flexibility because customers can modify these templates and configure additional infrastructure components on top of the custom images provided by partners, such as storage, additional VM instances, and much more.

### The deploy to Azure button

The beauty about this button is that it allows practically anybody easily provision partner images with a simple click of a button in the browser window. See the button below.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbrunoterkaly%2Falarm%2Fmaster%2Fmarketplace-example-byol%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template deploys a [Docker Trusted Registry](https://www.docker.com/docker-trusted-registry) VM
on Azure.


### The Docker Example

For illustration purposes, we are going to illustrate how a customer can provision a Docker image. in this case, the image provides the functionality of the Docker trusted registry. This virtual machine allows companies to host private repositories under their own subscription, so that they could offer internal images within an enterprise and avoid any of the multi-tenant challenges of using the docker repository at http://docker.com.

##### Substitute your own example

This example is not limited to Docker. Imagine the same exact approach working for Barracuda, Mesosphere, Github, and any other of the thousands of available products in the Azure marketplace.

### Getting set up at the command line tools

For a detailed explanation about how to set up the command line tools, specifically the Linux-based Azure cross-platform tooling, see this link.

[https://github.com/brunoterkaly/alarm/blob/master/README.md](https://github.com/brunoterkaly/alarm/blob/master/README.md "Help with working with the command line tooling")

Here are the command to set up command line tools:


**Ubuntu**
```
sudo apt-get update
sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo npm install -g azure-cli
```
**RPM Based (CentOS)**
```
su –
yum update [enter]
yum upgrade –y [enter]
yum install epel-release [enter]
yum install nodejs [enter]
yum install npm [enter]
npm install -g azure-cli [enter]
```

Here is some additional guidance that can help you:

[https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/](https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/ "setting up the command line tooling")

## Docker as an example

Different partners will provide different guidance for setting up their custom templates. The number and type of parameters that get past is partner specific. The parameters you see outlined below are specifically geared to working for Docker.


### Parameters

| Name   | Description |
|:--- |:---|
| `newStorageAccountName`  | Unique name for a new storage account where the VM disks will be stored. |
| `adminUsername` | Admin user for the Virtual Machines.  |
| `adminPassword` | Admin password for the Virtual Machines.  |
| `sshPublicKey` | SSH key for the Virtual Machines.  |
| `dnsName` | Unique DNS Name for the Swarm Management endpoint and the load balancer for slave nodes. |
| `licenseKey`  | License key from Docker - https://www.docker.com/docker-trusted-registry |

### How Marketplace templates work

There are a few differences that you need to be aware of when deploying a Marketplace image.

You need to add these variables which can be found [here](https://github.com/brunoterkaly/alarm/blob/master/marketplace-example-byol/azuredeploy.json#L38) in the azuredeploy.json file:

```
"imagePublisher": "docker",
"imageOffer": "docker-subscription-for-azure",
"sku": "dse-subem1y-000001",
"OSDiskName": "osdisk",
```

#### Tetting an exhaustive list of all the images

There is a tremendous list of marketplace offers. To get a list of that offers, the command line syntax below will enumerate them:

```
  azure vm image list westus 
```

###  More information

Once again, to get a more exhaustive explanation of all the options, see the following link:

[https://github.com/brunoterkaly/alarm/blob/master/README.md](https://github.com/brunoterkaly/alarm/blob/master/README.md "Help with working with the command line tooling")
