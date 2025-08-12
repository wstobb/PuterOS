#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

dnf5 -y remove toolbox gnome-terminal gnome-disk-utility gnome-tour

# this installs a package from fedora repos
dnf5 -y install distrobox flatpak keepassxc obs-studio fastfetch code tailscale tmux zsh nautilus-gsconnect gnome-tweaks gnome-shell-extensions-gsconnect gnome-shell-extensions-tailscale-gnome-qs gnome-shell-extensions-blur-my-shell gnome-shell-extensions-caffeine

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

# Ghostty
dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty
dnf5 -y copr disable scottames/ghostty

#### Example for enabling a System Unit File

systemctl enable podman.socket
