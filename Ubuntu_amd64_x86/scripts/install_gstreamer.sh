# GStreamer

sudo apt install python3-pip
pip3 install --user meson



sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev cmake
sudo apt install gstreamer1.0-python3-plugin-loader
sudo apt --fix-broken install


# for pylon in default location
export PYLON_ROOT=/opt/pylon

git clone https://github.com/basler/gst-plugin-pylon.git
cd gst-plugin-pylon
meson setup builddir --prefix /usr/

meson setup builddir --prefix /usr/ -Dpython-bindings=enabled

# Build
ninja -C builddir

# Test
ninja -C builddir test

# Install
sudo ninja -C builddir install

gst-inspect-1.0 pylonsrc
