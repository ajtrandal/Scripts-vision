#!/bin/bash

if [ $(dpkg-query -W -f='${Status}' meson | grep -c 'ok installed') -eq 0 ]; then
    wget http://ports.ubuntu.com/pool/universe/m/meson/meson_0.61.2-1_all.deb
    sudo dpkg -i meson_0.61.2-1_all.deb
    rm meson_0.61.2-1_all.deb
else
    echo Meson is already installed
fi