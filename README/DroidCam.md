# install droidcam

    cd /tmp/
    wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_2.1.2.zip
    # sha1sum: d5eb769f249011fbfa0edef05ffd56949b63d470
    unzip droidcam_latest.zip -d droidcam
    cd droidcam && sudo ./install-client

after that:

    sudo apt install libappindicator3-1
    sudo apt install linux-headers-`uname -r` gcc make
    sudo ./install-video

# Android USB connections:

(a) Turn on “USB Debugging” on your phone. Its located in the system Settings, under Developer Options.
On most phones the Developer Options screen is hidden by default. To unlock it, open the phones Settings, go to About Phone and search for Build number. Tap Build Number seven times to unlock Developer options. Once unlocked, search for USB Debugging and turn it On.

(b) Ensure adb is installed. The client app will try to invoke adb automatically to setup the DroidCam connection.
Debian-based Linux users can do: 

        sudo apt-get install adb

# iOS USB Connections:
The client will try to communicate with **usbmuxd** to detect and connect to your iOS device. Make sure **usbmuxd** is installed and running.