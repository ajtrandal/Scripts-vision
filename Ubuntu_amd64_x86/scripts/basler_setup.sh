#!/bin/bash

sudo apt remove -y meson ninja-build
sudo -H python3 -m pip install meson ninja --upgrade

bash ./install_pylon.sh
#bash ./install_meson.sh

sudo apt install -y cmake gstreamer1.0-python3-plugin-loader ninja-build

export PYLON_ROOT=/opt/pylon

git clone https://github.com/basler/gst-plugin-pylon.git
cd gst-plugin-pylon
meson setup builddir --prefix /usr/

ninja -C builddir
sudo ninja -C builddir install

cd ../
rm -rf gst-plugin-pylon