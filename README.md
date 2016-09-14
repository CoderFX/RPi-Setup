# RPi-Setup
Automating Raspberry Pi settings

#Problem:
Every time I try something new on my Raspberry Pi and something breaks, I have to do clean image install and start over again which is terribly frustrating.

#Solution
Automate everything!!!

#Getting ready:

sudo apt-get update -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y
sudo apt-get install git -y

Create working folder:
sudo mkdir scripts
cd scripts
sudo git clone https://github.com/CoderFX/RPi-Setup.git
cd RPi-Setup (???)
sudo chmod +x start.sh
sudo ./start.sh
