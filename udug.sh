#!/bin/bash

############################
#
# Linux (deb) Update and Upgrade script.
#
############################
hostname=$(hostname -s)

# Print start status message.
echo "Updating and Upgrading $hostname"
date
echo
# Updating and upgrading
sudo apt-get -y update && sudo apt-get -y upgrade
echo "Removing packages that are no longer needed from $hostname"
sudo apt-get -y autoremove
# Print end status message.
echo
echo "Update and Upgrade finished"
date