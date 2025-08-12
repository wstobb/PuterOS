#!/bin/bash

set -ouex pipefail

cp -rv /ctx/os_files/* /
/ctx/scripts/copr.sh
/ctx/scripts/packages.sh

systemctl enable podman.socket
