# GStreamer

# sudo apt install python3-pip
sudo apt-get install meson
sudo apt-get install ninja-build


sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio cmake
export PYLON_ROOT=/opt/pylon

git clone https://github.com/basler/gst-plugin-pylon.git
cd gst-plugin-pylon
meson setup builddir --prefix /usr/
ninja -C builddir




git clone https://github.com/TheImagingSource/tiscamera.git






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
