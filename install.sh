#!/bin/bash

#
# Clean up any old stuff.
#
# (Succeed even if target files/folders already do not exist.)
#
echo "Cleaning up artifacts from possible old installations..."

rm -f /etc/cron.d/remote-scripts
rm -rf /opt/nextworld/remote-scripts

#
# Clone the repository.
#
# (Succeed even if target files/folders already exist.)
#
echo "Cloning scripts into /opt/nextworld/remote-scripts..."

mkdir -p /opt/nextworld

cd /opt/nextworld

git clone https://github.com/nextworld-tools/remote-scripts.git

#
# Install an on-reboot cron job to update this cloned repository and run necessary scripts.
#
echo "Adding a reboot job to crontab to execute scripts at startup..."

cp ./cron /etc/cron.d/remote-scripts

#
# Make sure that installation went well.
#
if [[ -d "/opt/nextworld/remote-scripts" && -f "/etc/cron.d/remote-scripts" ]]; then
  echo "Installed Nextworld Remote Development Scripts onto this machine 🎉."
else
  echo "Something went wrong while installing Nextworld Remote Development Scripts 😢."
fi

#
# Manually execute the scripts once.
#
# (We do not know how long someone's development instance will go before restarting and kicking of
# the job as intended. This ensures we at least get to a known state.)
#
echo "Executing scripts for the first time..."

bash /opt/nextworld/remote-scripts/execute.sh