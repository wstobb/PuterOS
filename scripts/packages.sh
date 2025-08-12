#!/bin/bash

set -ouex pipefail

# Uninstall
dnf5 -y remove toolbox plasma-discover ark plasma-welcome kde-partitionmanager kwallet filelight kfind kwrite krfb

# Install
dnf5 -y install distrobox keepassxc obs-studio fastfetch code tailscale tmux zsh vim htop vlc discord
