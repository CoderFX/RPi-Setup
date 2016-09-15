#!/bin/bash

#1. Make sure 2 Wifi dongles are in. On RPi 3 one is integrated, so still need 1 in USB port.
#2. Setup /e/tc/wpa_supplicant/wpa_supplicant.conf to support both wlan0 and wlan1
#One should be broadcasting AP, other one - connected to local Wifi, both networks bridged.
