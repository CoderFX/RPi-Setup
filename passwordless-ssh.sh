#!/bin/bash

sudo nano /etc/ssh/sshd_config
#Uncomment and change PasswordAuthentication to no
<command to find correct line and change it> <TBD>

#Restart sshd
sudo service restart sshd

#Or just reboot and login with ssh keys
sudo reboot
