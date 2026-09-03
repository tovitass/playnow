```markdown
# playnow

A minimalist, retro cyber-TUI media metadata display built for Fedora, Hyprland, Kitty, and MPRIS-compatible media players.

`playnow` renders current playback details—including high-density album artwork, track titles, artist info, album names, dynamic playback spinners, and a thick retro progress bar—directly in your terminal with double-buffered, flicker-free rendering.

---

## Features

* **High-Density Album Artwork:** Uses `chafa` with Unicode half-block symbols (`vhalf`) to render album art crisply without raw image overlay glitching.
* **Double-Buffered TUI Engine:** Prevents terminal flickering and screen tearing by building entire frame buffers before rendering.
* **Metadata Auto-Sync:** Fetches live track details, playback status, position, and artwork URLs using `playerctl`.
* **Zero Input Echo:** Suppresses keyboard echoing and input noise during active playback loops.
* **Adaptive Centering:** Automatically calculates layout dimensions and scales visual elements when terminal windows are resized.

---

## Dependencies

`playnow` relies on standard system tools and terminal graphics libraries. 

Make sure `playerctl`, `chafa`, `curl`, and `bash` are installed on your system before running the script.

---

## Installation

### 1. Fedora (Native Support)

Install the required packages via `dnf`:

```bash
sudo dnf install playerctl chafa curl

```

### 2. Other Linux Distributions

Install the equivalent dependencies using your distribution's package manager:

* **Arch Linux / Manjaro:**
```bash
sudo pacman -S playerctl chafa curl

```


* **Ubuntu / Debian / Pop!_OS:**
```bash
sudo apt install playerctl chafa curl

```


* **openSUSE:**
```bash
sudo zypper install playerctl chafa curl

```



### 3. Install the `playnow` Binary

Clone or download this repository, then copy the script to your system path:

```bash
# Clone the repository
git clone [https://github.com/YOUR_USERNAME/playnow.git](https://github.com/YOUR_USERNAME/playnow.git)
cd playnow

# Install executable globally
sudo cp playnow /usr/local/bin/playnow
sudo chmod +x /usr/local/bin/playnow

```

---

## Usage

Start playing media in any MPRIS-supported application (Spotify, Amberol, VLC, Firefox, etc.) and launch the utility from any terminal emulator:

```bash
playnow

```

### Tips & Keyboard Controls

* **Exit:** Press `Ctrl + C` at any time to close `playnow`. The script automatically restores terminal echo and cursor settings upon exit.
* **Terminal Emulator:** Optimized for **Kitty** under Hyprland, but functions across all modern terminal emulators supporting ANSI sequences and UTF-8 characters.

---

## License

MIT License. Feel free to modify, distribute, and integrate into your personal dotfiles.

```

```