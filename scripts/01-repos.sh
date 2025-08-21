#!/bin/bash

set -ouex pipefail

dnf5 install -y 'dnf5-command(copr)'

# COPR
#sudo dnf copr enable -y @freecad/nightly
