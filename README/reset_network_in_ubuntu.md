# Notes
How to reset network in ubuntu:

    nmcli general status
    sudo systemctl restart NetworkManager
    ip a
    ping -c 4 google.com
