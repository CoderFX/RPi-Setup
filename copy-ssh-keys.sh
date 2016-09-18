#!/bin/bash

echo -e 'Make sure you have plugged in USB and have your keys stored there'
echo -e 'Note that this not remove any previously stored keys, so you can feel safe :)'

cd ~
sudo install -d -m 700 ~/.ssh
sudo mkdir -p ~/.ssh
sudo cat /mnt/usb/id_rsa.pub >> /home/pi/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
