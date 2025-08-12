#!/bin/bash

set -ouex pipefail

# Removing Dnf Packages
dnf5 -y remove \
    ark \
    filelight \
    kde-partitionmanager \
    kfind \
    krfb \
    kwrite \
    plasma-discover \
    plasma-welcome \
    toolbox

# Installing Dnf Packages
dnf5 -y install \
    code \
    distrobox \
    fastfetch \
    htop \
    keepassxc \
    kvantum \
    materia-kde \
    materia-kde-kvantum \
    obs-studio \
    papirus-icon-theme \
    tailscale \
    tmux \
    vim \
    vlc \
    zsh
