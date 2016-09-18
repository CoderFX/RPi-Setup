#!/bin/bash

echo -e 'Make sure you have plugged in USB and have your keys stored there'
echo -e 'Note that this will remove any previously stored keys'

cd ~
#Make sure ssh keys are installed
sudo install -d -m 700 ~/.ssh
sudo mkdir -p ~/.ssh
sudo cp /mnt/usb/authorized_keys ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
