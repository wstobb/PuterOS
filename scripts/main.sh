#!/bin/bash

set -ouex pipefail

cp -rv /ctx/os_files/* /
/ctx/scripts/repos.sh
/ctx/scripts/packages.sh

systemctl enable podman.socket
