#!/bin/bash

sudo nano /etc/ssh/sshd_config
#Uncomment and change PasswordAuthentication to no
<command to find correct line and change it> <TBD>

#Change "UsePAM yes" to "UsePAM no" - This will disable password authentication (PAM)
<command to find correct line and change it> <TBD>

#change "ChallengeResponseAuthentication yes" to "ChallengeResponseAuthentication no"

#Restart sshd
sudo service restart sshd

#Or: sudo /etc/init.d/ssh reload ===> check which works better <TBD>

#Or just reboot and login with ssh keys
sudo reboot
