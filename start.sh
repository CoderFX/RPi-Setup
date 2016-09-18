#!/bin/bash

#Turn the folder into executable
echo -e 'Starting Raspbery Pi Setup'
sudo chmod +x -R /home/pi/scripts/RPi-Setup
sudo ./home/pi/scripts/RPi-Setup/menu.sh
