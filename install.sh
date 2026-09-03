#!/bin/bash

echo "Installing playnow..."

# Install binary to system path
sudo cp playnow /usr/local/bin/playnow
sudo chmod +x /usr/local/bin/playnow

echo "playnow installed successfully! Run 'playnow' in any terminal."
