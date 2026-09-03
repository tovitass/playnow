#!/bin/bash

echo "Installing playnow..."

# Fetch the executable directly from GitHub into system path
sudo curl -sSL https://raw.githubusercontent.com/tovitass/playnow/main/playnow -o /usr/local/bin/playnow
sudo chmod +x /usr/local/bin/playnow

echo "playnow installed successfully! Run 'playnow' in any terminal."
