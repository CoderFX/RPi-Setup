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
Add option to
Add VPN settings, so RPi is always in home LAN network
Auto mount network NAS at startup
===> Option to run read and run scripts from NAS?
Setup backups for RPi to NAS
Setup Alexa (might be complicated)
Install important applications
   >Python (for GPIO)
   >Nginx
   
