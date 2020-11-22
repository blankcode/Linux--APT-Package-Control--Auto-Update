#!/bin/bash
# Linux (APT Package Control) Auto Update
# Add a cronjob for me.

which apt &>/dev/null; [[ $? == 0 ]] || { echo -ne "\n\# APT not installed\n"; };

echo -ne "__________________________________\nUpdating APT Database\n"
apt update && { echo "Update Complete" } || { echo "Update Failed, see error.\n"; exit 1; };
echo -ne "__________________________________\nRunning Autoclean on local packages\n"
apt autoclean -y && { echo "Autoclean Complete" } || { echo "Autoclean Failed, see error."; exit 1; };
echo -ne "__________________________________\nUpgradeing Packages\n"
apt full-upgrade -y && { echo "Package Upgrade Complete" } || { echo "Package Upgrade Failed, see error."; exit 1; };
echo -ne "__________________________________\nRunning Autoremove on local packages\n"
apt autoremove -y && { echo "Autoremove Complete" } || { echo "Autoremove Failed, see error."; exit 1; };
echo "__________________________________"

exit 0;