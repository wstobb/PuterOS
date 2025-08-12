#!/bin/bash

set -ouex pipefail

cp -rv /ctx/system_files/* /
/ctx/build_files/copr.sh
/ctx/build_files/packages.sh

systemctl enable podman.socket
