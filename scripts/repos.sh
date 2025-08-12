#!/bin/bash

set -ouex pipefail

# Discord
dnf5 -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
