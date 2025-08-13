#!/bin/bash

set -ouex pipefail

if [ ! -s "/ctx/config/install_packages" ]; then
	echo "No packages to install"
else
	dnf install -y $(tr '\n' ' ' < /ctx/config/install_packages)
fi

if [ ! -s "/ctx/config/remove_packages" ]; then
	echo "No packages to remove"
else
	dnf remove -y $(tr '\n' ' ' < /ctx/config/remove_packages)
fi
