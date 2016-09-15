#!/bin/bash
#4: Create passwordless SSH connection, so only logins with SSH keys work <TBD>
#Guide: https://www.raspberrypi.org/documentation/remote-access/ssh/passwordless.md

sudo nano /etc/ssh/sshd_config
#Uncomment and change PasswordAuthentication to no
<command to find correct line and change it> <TBD>

#Change "UsePAM yes" to "UsePAM no" - This will disable password authentication (PAM)
<command to find correct line and change it> <TBD>

#Disable challenge-response authentication
#Change "ChallengeResponseAuthentication yes" to "ChallengeResponseAuthentication no"
<command to find correct line and change it> <TBD>

#Restart sshd
sudo service restart sshd

#Or: sudo /etc/init.d/ssh reload ===> check which works better <TBD>

#Or just reboot and login with ssh keys
sudo reboot
