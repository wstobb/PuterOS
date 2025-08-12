#!/bin/bash

set -ouex pipefail

# Uninstall
dnf5 -y remove toolbox gnome-disk-utility gnome-tour

# Install
dnf5 -y install distrobox keepassxc obs-studio fastfetch code tailscale tmux zsh ghostty vim htop
