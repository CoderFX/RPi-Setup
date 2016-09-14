   echo -------------------------------
   echo This is the script named \"menu\"		   echo This is the script named \"menu\"
   echo -------------------------------		   echo -------------------------------
+  
+  #NOTE: I'm using PiBaker to bake a RPi that already has basic Wifi connection to home network and has VNC server running at start
+  Change default password for pi
+  Add RSA 4096 bit SSH keys
+  Create passwordless SSH connection
+  Create Wifi access point (requires 2 wifi adapters)
+  Create Ad-hoc wifi network
+  Create Ad-hoc bluetooth network (for SSH connection)
+  Add option to
+  Add VPN settings, so RPi is always in home LAN network
+  Auto mount network NAS at startup
+  ===> Option to run read and run scripts from NAS?
+  Setup backups for RPi to NAS
+  
+  
+  
   echo -e 'S: Show Network config '		   echo -e 'S: Show Network config '
   echo -e 'I: IP Address '		   echo -e 'I: IP Address '
   echo -e 'C: Change Network config'		   echo -e 'C: Change Network config'
   echo -e 'N: Change Network Name'		   echo -e 'N: Change Network Name'
+  echo -e 'N: Add SSH Keys
+  echo -e 'N: 
   echo -e 'Q: Quit           '		   echo -e 'Q: Quit           '
   echo -n 'You choose > '		   echo -n 'You choose > '
   read opt		   read opt
