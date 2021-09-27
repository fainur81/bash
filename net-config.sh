#!/bin/bash
echo \
"network:
 ethernets:
  enp0s3:
   addresses:
    - 192.168.0.105/24
   gateway4: 192.168.0.1
   nameservers:
    addresses: [192.168.0.1, 8.8.4.4]
   optional: true
 version: 2
 renderer: networkd"  > ./00-installer-config.yaml
 sudo rm -rf /etc/netplan/00-installer-config.yaml && sudo cp ./00-installer-config.yaml /etc/netplan/ 
 sudo netplan try
 sudo netplan --debug apply
