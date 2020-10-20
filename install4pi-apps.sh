#!/bin/bash

cp ~/system-tools/system-tools.desktop ~/Desktop || echo "$(tput setaf 1)failed to create desktop shortcut! $(tput sgr 0)"
sudo cp ~/system-tools/system-tools.desktop /usr/share/applications || echo "$(tput setaf 1)failed to create menu shortcut! $(tput sgr 0)"
cd ~/system-tools || error "Failed to change to /home/pi/system-tools"
sudo chmod +x system-tools.sh || error "failed to mark system-tools.sh as executable!"
sudo chmod +x install2.sh || error "failed to mark install2.sh as executable!"
./install2.sh || error "failed to run install4pi-apps.sh!"
echo "$(tput setaf 2)Installation succesful! $(tput sgr 0)"