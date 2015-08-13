# Marketplace ARM Template Example

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fbrunoterkaly%2Falarm%2Fmaster%2Fmarketplace-example-byol%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template deploys a [Docker Trusted Registry](https://www.docker.com/docker-trusted-registry) VM
on Azure.

## Parameters

| Name   | Description |
|:--- |:---|
| `newStorageAccountName`  | Unique name for a new storage account where the VM disks will be stored. |
| `adminUsername` | Admin user for the Virtual Machines.  |
| `adminPassword` | Admin password for the Virtual Machines.  |
| `sshPublicKey` | SSH key for the Virtual Machines.  |
| `dnsName` | Unique DNS Name for the Swarm Management endpoint and the load balancer for slave nodes. |
| `licenseKey`  | License key from Docker - https://www.docker.com/docker-trusted-registry |

## How Marketplace templates work

There are a few differences that you need to be aware of when deploying a Marketplace image.

You need to add these variables:

```
"imagePublisher": "docker",
"imageOffer": "docker-subscription-for-azure",
"sku": "dse-subem1y-000001",
"OSDiskName": "osdisk",
```

The way you get the image offer and the sku is to run this command line
```
  azure vm image list westus docker
```
