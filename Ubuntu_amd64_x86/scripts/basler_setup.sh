#!/bin/bash


# Meson and ninja build system
# Remove older meson and ninja from APT and install newer PIP version
sudo apt remove meson ninja-build
sudo -H python3 -m pip install meson ninja --upgrade
sudo apt install meson
