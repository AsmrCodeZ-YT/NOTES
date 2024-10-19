# Notes
How to reset network in ubuntu:

    nmcli general status
    sudo systemctl restart NetworkManager
    ip a
    ping -c 4 google.com
    
Set/Reset Dns:

        sudo nano /etc/systemd/resolved.conf
        sudo systemctl restart systemd-resolved
