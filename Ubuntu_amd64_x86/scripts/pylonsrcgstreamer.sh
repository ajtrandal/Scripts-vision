
# Meson and ninja build system
# Remove older meson and ninja from APT and install newer PIP version

                       
sudo apt remove meson ninja-build
sudo apt-get install python3 python3-pip python3-setuptools python3-wheel ninja-build
# sudo -H python3 -m pip install meson ninja --upgrade

# GStreamer
sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev cmake
# if you want to use the sample python plugin
sudo apt install gstreamer1.0-python3-plugin-loader
sudo apt install meson



# for pylon in default location
export PYLON_ROOT=/opt/pylon

git clone https://github.com/basler/gst-plugin-pylon.git
cd gst-plugin-pylon
meson setup builddir --prefix /usr/ -Dpython-bindings=enabled

# Build
ninja -C builddir

# Test
ninja -C builddir test

# Install
sudo ninja -C builddir install

gst-inspect-1.0 pylonsrc
