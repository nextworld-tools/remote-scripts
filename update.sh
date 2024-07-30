#!/bin/bash

##
# Pulls the latest changes to the remote development scripts repository.
##

#
# Update the clone.
#
echo "Updated cloned scripts..."

cd /opt/nextworld/remote-scripts

git pull

#
# Run the post-update script.
#
echo "Running post-update steps..."

bash /opt/nextworld/remote-scripts/onupdate.sh

#
# Make sure that update went well.
#
echo "Updated Nextworld Remote Development Scripts 🎉."