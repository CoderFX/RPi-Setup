#!/bin/bash

#3: Create RSA 4096 bit SSH keys <TBD>
#Guide: https://www.raspberrypi.org/documentation/remote-access/ssh/passwordless.md

#Create keys
echo -e 'Creating RSA 4096 bit SSH keys for RPi. I suggest you save it in the default location (/home/pi/.ssh/id_rsa) by just hitting Enter)'
ssh-keygen -b 4096 -t rsa -C pi@raspberry

#Add new public key to authorized_keys
echo -e 'Moving keys to USB storage'
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

#Move public key to USB
sudo mv ~/.ssh/id_rsa.pub /mnt/usb/id_rsa.pub

#Move private key to USB. You will need this later to login to RPi
sudo mv ~/.ssh/id_rsa /mnt/usb/id_rsa

#Make a copy of authorized_keys to USB
sudo cp ~/.ssh/authorized_keys /mnt/usb/authorized_keys
