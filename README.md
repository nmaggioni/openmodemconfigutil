OpenModem Configuration Utility
==========

This is the graphical configuration utility for [OpenModem](https://github.com/markqvist/OpenModem).

To download packaged builds, see the [OpenModem page at unsigned.io](https://unsigned.io/openmodem). Packages are supplied for MacOS and Windows.

For Linux and Raspberry Pi the recommended method is to install from this repository, using the following instructions: 

```bash
# If you don't already have Python3, install it:
sudo apt install python3 pip3

# If on a Raspberry Pi, install GTK and webkit dependencies 
sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-3.0 gir1.2-webkit2-4.0

# Install OpenModem Configuration dependencies
pip3 install pyserial requests psutil pywebview

# Download the program from GitHub
git clone https://github.com/markqvist/openmodemconfigutil.git

# Go to the folder and run the program
cd openmodemconfigutil
python3 openmodemconfigutil.py
```

## Dependencies:
 - Python 3
 - pyserial
 - requests
 - psutil
 - pywebview

## Running with Docker

1. Build the image:
   
   ```bash
   docker build -t openmodemconfig .
   ```

2. Allow access to the local X11 server:
   
   ```bash
   xhost +local:docker
   ```

3. Run the image:
   
   ```bash
   docker run -it --rm --env=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/ttyUSB0 openmodemconfig
   ```
