#!/bin/bash

sudo apt install libgl1-mesa-dri libgl1-mesa-glx libxcb-xinerama0 libxcb-xinput0 net-tools


if [ $(dpkg-query -W -f='${Status}' pylon | grep -c 'ok installed') -eq 0 ]; then
    wget https://www2.baslerweb.com/media/downloads/software/pylon_software/pylon_7_4_0_14900_linux_x86_64_debs.tar.gz
    tar -xzf pylon_7_4_0_14900_linux_x86_64_debs.tar.gz ./pylon_7.4.0.14900-deb0_amd64.deb
    rm pylon_7_4_0_14900_linux_x86_64_debs.tar.gz
sudo dpkg -i pylon_7.4.0.14900-deb0_amd64.deb
rm pylon_7.4.0.14900-deb0_amd64.deb
else
    echo Pylon is already installed
fi


