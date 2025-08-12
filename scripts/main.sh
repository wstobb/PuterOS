#!/bin/bash

set -ouex pipefail

# Copying files to the container
cp -rv /ctx/os_files/* /

# Editing Dnf Repositories
/ctx/scripts/repos.sh

# Editing Packages
/ctx/scripts/packages.sh

# Editing Services
/ctx/scripts/services.sh
