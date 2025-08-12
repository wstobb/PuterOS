#!/bin/bash

set -ouex pipefail

/ctx/build_files/copr.sh

systemctl enable podman.socket
