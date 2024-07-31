#!/bin/bash

##
# Runs after pulling the latest changes to the remote development scripts repository.
##

#
# VERSION 2
#
# Just re-install everything. The install script performs cleanup steps first, and then installs.
# This is easier than trying to bake logic into both the update and the install procedures.
#
# Adding it to this onupdate.sh script rather than update.sh script ensures this will be run the
# on the next reboot rather than after two reboots, due to how update.sh runs is running the old
# version of itself after pulling latest changes down.
#
echo "Re-installing scripts..."

bash /opt/nextworld/remote-scripts/install.sh