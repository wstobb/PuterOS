#!/bin/bash

set -ouex pipefail

/ctx/install_scripts/01-repos.sh
/ctx/install_scripts/02-packages.sh
/ctx/install_scripts/03-services.sh

echo 'Modifications Done!'
