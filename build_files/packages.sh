#!/bin/bash

set -ouex pipefail

# Uninstall
dnf5 -y remove toolbox gnome-disk-utility gnome-tour

# Install
dnf5 -y install distrobox flatpak keepassxc obs-studio fastfetch code tailscale tmux zsh nautilus-gsconnect gnome-tweaks gnome-shell-extension-gsconnect gnome-shell-extension-blur-my-shell gnome-shell-extension-caffeine gnome-shell-extension-gsconnect ghostty
