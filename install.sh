#!/bin/bash

echo "Installing playnow..."

# Fetch binary directly from GitHub into /usr/local/bin
sudo curl -sSL https://raw.githubusercontent.com/tovitass/playnow/main/playnow -o /usr/local/bin/playnow
sudo chmod +x /usr/local/bin/playnow

echo "playnow installed successfully! Run 'playnow' in any terminal."
