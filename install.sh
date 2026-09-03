#!/bin/bash

# Visual formatting
BOLD="\031[1m"
GREEN="\033[32m"
RED="\033[31m"
YELLOW="\033[33m"
CYAN="\033[36m"
RESET="\033[0m"

echo -e "${CYAN}${BOLD}"
echo "  ┌─────────────────────────────────┐"
echo "  │     Installing playnow TUI      │"
echo "  └─────────────────────────────────┘"
echo -e "${RESET}"

# 1. Dependency Checks
echo -e "${BOLD}[1/3] Checking system dependencies...${RESET}"

MISSING_DEPS=()

if ! command -v playerctl &> /dev/null; then
    MISSING_DEPS+=("playerctl")
fi

if ! command -v chafa &> /dev/null; then
    MISSING_DEPS+=("chafa")
fi

if [ ${#MISSING_DEPS[@]} -ne 0 ]; then
    echo -e "${RED}✘ Missing dependencies detected:${RESET} ${MISSING_DEPS[*]}"
    echo -e "${YELLOW}Please install them via your package manager:${RESET}"
    echo -e "  Fedora: ${BOLD}sudo dnf install playerctl chafa${RESET}"
    echo -e "  Ubuntu/Debian: ${BOLD}sudo apt install playerctl chafa${RESET}"
    echo -e "  Arch: ${BOLD}sudo pacman -S playerctl chafa${RESET}"
    exit 1
fi

echo -e "${GREEN}✔ All dependencies found! (playerctl, chafa)${RESET}\n"

# 2. Download Binary
echo -e "${BOLD}[2/3] Downloading playnow binary...${RESET}"

# Request sudo upfront so prompt doesn't break terminal output
sudo -v

# Fetch binary silently with curl
sudo curl -sSL https://raw.githubusercontent.com/tovitass/playnow/main/playnow -o /usr/local/bin/playnow

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✔ Download complete.${RESET}\n"
else
    echo -e "${RED}✘ Download failed. Please check your network connection.${RESET}"
    exit 1
fi

# 3. Set Permissions
echo -e "${BOLD}[3/3] Setting executable permissions...${RESET}"
sudo chmod +x /usr/local/bin/playnow

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✔ Permissions updated successfully.${RESET}\n"
else
    echo -e "${RED}✘ Failed to set permissions on /usr/local/bin/playnow.${RESET}"
    exit 1
fi

# Finished Output
echo -e "${GREEN}${BOLD}=========================================${RESET}"
echo -e "${GREEN}${BOLD}  playnow installed successfully! 🚀     ${RESET}"
echo -e "${GREEN}${BOLD}=========================================${RESET}"
echo -e "Type ${CYAN}${BOLD}playnow${RESET} in any terminal to launch.\n"