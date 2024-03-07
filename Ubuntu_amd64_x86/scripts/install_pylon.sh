#!/bin/bash

sudo apt-get update
sudo apt install libgl1-mesa-dri libgl1-mesa-glx libxcb-xinerama0 libxcb-xinput0 net-tools

# Change mtu size to 9000 - Note adaptername only valid for NUC extreme 12700
sudo ifconfig enp108s0 mtu 9000
# ring buffer size to 4096 - Note adaptername only valid for NUC extreme 12700
sudo ethtool -G enp108s0 rx 4096 tx 4096
# Configure the interrupt moderation rate  - Note adaptername only valid for NUC extreme 12700
# sudo ethtool -C enp108s0 adaptive-rx off adaptive-tx off rx-usecs 62 tx-usecs 62

if [ $(dpkg-query -W -f='${Status}' pylon | grep -c 'ok installed') -eq 0 ]; then
    wget https://www2.baslerweb.com/media/downloads/software/pylon_software/pylon_7_4_0_14900_linux_x86_64_debs.tar.gz
    tar -xzf pylon_7_4_0_14900_linux_x86_64_debs.tar.gz ./pylon_7.4.0.14900-deb0_amd64.deb
    rm pylon_7_4_0_14900_linux_x86_64_debs.tar.gz
sudo dpkg -i pylon_7.4.0.14900-deb0_amd64.deb
rm pylon_7.4.0.14900-deb0_amd64.deb
else
    echo Pylon is already installed
fi



