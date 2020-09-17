---
title: Running the CosmosDB emulator on Linux
layout: post
---

Unfortunately even though "Microsoft 🖤 Linux" the CosmosDB team seem less keen. This is not fun, pretty or stable, but at least it works which is something.

There is a docker image but it only runs on docker-for-windows so it's no help here.

## Overview

1. Grab a Windows VM, install the emulator.
2. Copy the emulator SSL cert to the host.
3. Map the ports.
4. Redirect the VM ip back to localhost with iptables.

## Steps

### Get a Windows VirtualBox VM Running

Download the VirtualBox image from <https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/> (2 month free trial, no key needed).

Install VirtualBox.
 
Fix the VM image configuration (if you are using the slightly older VirtualBox from ubuntu's apt repositories) by removing `controller="VBoxSVGA"` from the `.ovf` file in the `.ova` file (which is a tar.gz archive). See <https://schnouki.net/post/2020/how-to-run-a-win10-dev-vm-on-virtualbox-5/> for details.

Import the VM into VirtualBox

Run the VM

Install the guest additions (Devices > Insert guest additions CD)

Set the timezone (VM defaults to US).

Turn on seamless copy-paste & drag-and-drop (so that we can move certificate and data files to/from the host easily).

### Set up the CosmosDB emulator

In the Windows VM download and install the CosmosDB emulator in the VM from <https://docs.microsoft.com/en-us/azure/cosmos-db/local-emulator?tabs=ssl-netstd21#installation>

If the emulator is already running, shut it down:

```powershell
cd "C:\Program Files\Azure Cosmos DB Emulator"
.\Microsoft.Azure.Cosmos.Emulator.exe /shutdown
```

Start the emulator with network access enabled.

```powershell
cd "C:\Program Files\Azure Cosmos DB Emulator"
.\Microsoft.Azure.Cosmos.Emulator.exe /AllowNetworkAccess /DisableRateLimiting /Key='C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw=='
```

(This key is the hard-coded well-known key that the emulator uses by default, which makes it easy to connect the storage explorer).

Check it is listening on `0.0.0.0:8081` (as opposed to `127.0.0.1:8081`):

```
netstat -a |findstr 8081
```

### Map the CosmosDB port to the host

In the VirtualBox network settings for the VM, click advanced and add a port mapping for 8081 on the VM to 8081 on the host.

See <https://www.howtogeek.com/122641/how-to-forward-ports-to-a-virtual-machine-and-use-it-as-a-server/>

This makes the emulator appear as if it was running on the linux host.


### Connect with Storage Explorer

Install the Azure Storage Explorer on your linux host, either with the .tar.gz or from the snap store

<https://azure.microsoft.com/en-us/features/storage-explorer/>

Run the storage explorer.

Connect to the emulator on localhost.

You should now be able to create collections and add documents, and then view them.

### Connecting from dotnet-core

There are two problems connecting from core that don't appear with storage explorer:

Firstly, the SSL certificate is rejected:

```
System.Net.Http.HttpRequestException:
The SSL connection could not be established,
see inner exception. ---> System.Security.Authentication.AuthenticationException:
The remote certificate is invalid according to the validation procedure.
  at at System.Net.Security.SslStream.StartSendAuthResetSignal(
	ProtocolToken message, AsyncProtocolRequest asyncRequest, ExceptionDispatchInfo exception)
```

And secondly, CosmosDB sets the [`ReadEndpoint`](https://docs.microsoft.com/en-us/dotnet/api/microsoft.azure.documents.client.documentclient.readendpoint) to be the VM's ip address, which isn't accessible from the host because we are using NAT and port mapping.

#### Accepting the emulator SSL certificate

Export the emulator's public SSL certificate "DocumentDbEmulatorCertificate" as base64 X509.

Reference: <https://docs.microsoft.com/en-us/azure/cosmos-db/local-emulator-export-ssl-certificates#how-to-export-the-azure-cosmos-db-tlsssl-certificate>

Copy the exported file to your linux host.

Add the certificate to the trusted certificates on your machine (these instructions are for Ubuntu/Mint):

```
sudo cp --verbose cosmos-emulator.cer /usr/local/share/ca-certificates/cosmos-emulator.crt
sudo update-ca-certificates --verbose
```

Reference: <https://stackoverflow.com/questions/44159793/trusted-root-certificates-in-dotnet-core-on-linux-rhel-7-1/44160125#44160125>

Note the change in file extension from `.cer` to `.crt` between export and import.

#### Redirecting ReadEndpoint traffic

In the VM in a powershell or command prompt run `ipconfig` to get the machine's ip address.

Tell iptables to redirect all requests for the VM's ip address back to localhost:

```bash
sudo iptables -t nat -I OUTPUT --dst 10.0.2.XXX -p tcp --dport 8081 -j REDIRECT --to-ports 8081
```

Where `XXX` is the ip of your VM.

As per: <https://unix.stackexchange.com/questions/441182/how-to-map-an-ip-address-to-localhost>

## ~ End ~

With all of the above I was then able to connect a dotnet-core application on linux to a CosmosDB emulator.

If you need to import data then use data migration tool from <https://docs.microsoft.com/en-us/azure/cosmos-db/import-data#Install>
