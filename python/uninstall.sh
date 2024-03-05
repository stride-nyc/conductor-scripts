#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Uninstalling Autopilot..."
pipx uninstall stride-autopilot
pip3.11 cache purge

echo "Remove Autopilot user directory? (Y/N)"
read yesorno
if [ "$yesorno" = 'Y' ] || [ "$yesorno" = 'y' ]; then
    rm -rf ~/.autopilot/
fi

echo "Autopilot uninstalled successfully..."