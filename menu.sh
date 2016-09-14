#!/bin/bash
function nocase()
{
  if [ "`echo $1 | tr [:lower:] [:upper:]`" = "`echo $2 | tr [:lower:] [:upper:]`" ]
  then
    return 0  # true
  else
    return 1 # false
  fi
}
exit=FALSE
while [ "$exit" = "FALSE" ]
do
  clear
  echo -------------------------------
  echo This is the script named \"menu\"
  echo -------------------------------
  echo -e '1: Change default password for pi'
  echo -e '2: Run raspi-config and setup hostname, overclocking, other settings'
  echo -e '3: Add RSA 4096 bit SSH keys'
  echo -e '4: Create passwordless SSH connection'
  echo -e '5: Create Wifi access point (requires 2 wifi adapters)'
  echo -e '6: Create Ad-hoc wifi network'
  echo -e '7: Create Ad-hoc wifi network'
  echo -e '8: Create Ad-hoc bluetooth network (for SSH connection)'
  echo -e '9: Add option to SSH via USB'
  echo -e '10: Add VPN settings, so RPi always connects to home LAN network if possible'
  echo -e '11: Auto mount network NAS at startup'
  echo -e '12: ===> Option to run read and run scripts from NAS?'
  echo -e '13: Setup backups for RPi to NAS'
  echo -e '14: Setup Alexa (might be complicated)'
  echo -e '15: Install important applications'
  echo -e '16: >Python (for GPIO)''
  echo -e '17: >Nginx'
    echo -e 'S: Show Network config '
  echo -e 'I: IP Address '
  echo -e 'C: Change Network config'
  echo -e 'N: Change Network Name'
  echo -e 'Q: Quit           '
  echo -n 'You choose > '
  read opt
  if nocase "$opt" "S"
  then
    ./network.status
    echo -n Hit [return]
    read a
  elif nocase "$opt" "I"
  then
    ./ip
    read a
  elif nocase "$opt" "C"
  then
    sudo ./switch
  elif nocase "$opt" "N"
  then
    sudo ./change.network.name
  
  #1: Change default password for pi
  elif nocase "$opt" "1"
  then
    sudo passwd pi
    
  #2: Run raspi-config and setup hostname, overclocking, other settings
  elif nocase "$opt" "2"
  then
    sudo raspi-config
    
  #3: Add RSA 4096 bit SSH keys <TBD>
  elif nocase "$opt" "3"
  then
    sudo ./ssh-keys.sh
  
  #4: Create passwordless SSH connection <TBD>
  elif nocase "$opt" "3"
  then
    sudo ./passwordless-ssh.sh
  
  elif nocase "$opt" "Q"
  then
    exit=TRUE
  else
    echo Ah ben merde
  fi
done

#NOTE: I'm using PiBaker to bake a RPi that already has basic Wifi connection to home network and has VNC server running at start
Change default password for pi
Run raspi-config and setup hostname, overclocking, other settings
Add RSA 4096 bit SSH keys
Create passwordless SSH connection
Create Wifi access point (requires 2 wifi adapters)
Create Ad-hoc wifi network
Create Ad-hoc bluetooth network (for SSH connection)
Add option to SSH via USB
Add VPN settings, so RPi always connects to home LAN network if possible
Auto mount network NAS at startup
===> Option to run read and run scripts from NAS?
Setup backups for RPi to NAS
Setup Alexa (might be complicated)
Install important applications
   >Python (for GPIO)
   >Nginx
   
