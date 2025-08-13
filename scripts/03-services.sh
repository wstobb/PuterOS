#!/bin/bash

set -ouex pipefail

if [ ! -s "/ctx/config/enable_services.list" ]; then
	echo "No services to enable"
else
	systemctl enable $(tr '\n' ' ' < /ctx/config/enable_services.list)
fi

if [ ! -s "/ctx/config/disable_services" ]; then
	echo "No services to disable"
else
	systemctl disable $(tr '\n' ' ' < /ctx/config/disable_services.list)
fi

