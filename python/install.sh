#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

# If you don't have python 3.11 and pipx installed, here's how you can install it:
# Install Brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install python@3.11
# brew link python@3.11
# brew install pipx

VERSION="@${AUTOPILOT_VERSION:-main}"

echo "Installing Autopilot.."
pipx install -f "git+https://github.com/stride-nyc/stride-autopilot$VERSION"
echo ""

echo "Autopilot pipx installed successfully."
echo ""

echo "Command autopilot now accessible from any path in the console. The files at your current path will be used as a basis for the active project."
echo ""

echo "Start with 'autopilot init' to set up your user and project config."
echo ""
echo "autopilot init"
echo ""

echo "Autopilot commands can be listed with autopilot --help."
autopilot --help