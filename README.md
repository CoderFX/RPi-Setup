# RPi-Setup
Automating Raspberry Pi settings

#Problem:
Every time I try something new on my Raspberry Pi and something breaks, I have to do clean image install and start over again which is terribly frustrating.

#Solution
Automate everything!!!

#Getting ready:

1. Prepare RPi sd card with PiBaker to at least let you ssh into your Pi from home network. You can setup some more automation with it. (Ideas are welcome)

2. Copy settings.txt to USB storage and change it to your settings

3. Start RPi and SSH into it

4. Run code:

		sudo apt-get update -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y
		sudo apt-get install git -y


5. Create working folder:

		sudo mkdir scripts
		cd scripts
		sudo git clone https://github.com/CoderFX/RPi-Setup.git
		cd RPi-Setup (???)
		sudo chmod +x start.sh
		sudo ./start.sh

#Feel free to contribute!
