#!/bin/bash

set -e

echo "Installing playnow..."

# Ensure target directory exists
sudo mkdir -p /usr/local/bin

# Copy script and grant execution permissions
sudo cp playnow /usr/local/bin/playnow
sudo chmod +x /usr/local/bin/playnow

echo "Done! Run 'playnow' from any terminal."