#!/bin/bash

# updater.sh - Weekly update script
# This script checks for the latest updates, downloads them, then reboots the system
# Place this script in /etc/cron.weekly, ensure it is owned by root (chown root:root /etc/cron.weekly/updater.sh
# Ensure the script has at least user execute permissions (chmod 700 /etc/cron.weekly/updater.sh
# If you want updates to be ran once daily or monthly, simply place this script into /etc/cron.daily or /etc/cron.monthly as you see fit

export DEBIAN_FRONTEND=noninteractive
apt-get -q update
apt-get -y -q dist-upgrade
apt-get -y -q autoremove
logger updater.sh ran successfully. Rebooting system
init 6
exit 0
