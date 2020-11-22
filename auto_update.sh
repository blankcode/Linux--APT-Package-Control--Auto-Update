#!/bin/bash
# Linux (APT Package Control) Auto Update

echo "__________________________________"
echo "Updating APT Database"
apt update && echo "Update Complete" || echo "Update Failed, see error."
echo "__________________________________"
echo "Running Autoclean APT Database"
apt autoclean -y && echo "Autoclean Complete" || echo "Autoclean Failed, see error."
echo "__________________________________"
echo "Running Autoremove APT Database"
apt autoremove -y && echo "Autoremove Complete" || echo "Autoremove Failed, see error."
echo "__________________________________"
echo "Upgradeing Packages"
apt upgrade -y && echo "Package Upgrade Complete" || echo "Package Upgrade Failed, see error."
echo "__________________________________"