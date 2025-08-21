#!/bin/bash

set -ouex pipefail

if [ ! -s "/ctx/config/install_packages.list" ]; then
	echo "No packages to install"
else
	dnf install -y $(tr '\n' ' ' < /ctx/config/install_packages.list)
fi

if [ ! -s "/ctx/config/remove_packages.list" ]; then
	echo "No packages to remove"
else
	dnf remove -y $(tr '\n' ' ' < /ctx/config/remove_packages.list)
fi

# RPMs
#
# ProtonMail Bridge
wget https://proton.me/download/bridge/protonmail-bridge-3.21.2-1.x86_64.rpm
dnf install -y ./protonmail-bridge-3.21.2-1.x86_64.rpm
rm protonmail-bridge-3.21.2-1.x86_64.rpm
