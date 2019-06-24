#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "SETTING UP NETWORKING"
echo "###############################################"

systemctl enable NetworkManager
systemctl start NetworkManager
systemctl status NetworkManager
nmcli device wifi connect "$WIFI_SSID" password "$WIFI_PASSWORD"
