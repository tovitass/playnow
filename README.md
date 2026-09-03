# playnow

> A minimalist, retro cyber-TUI media metadata display for Linux terminals.

`playnow` renders live playback details—high-density album artwork, track info, dynamic playback spinners, and a retro progress bar—directly in your terminal with double-buffered, flicker-free rendering.

---

## Features

* **High-Density Album Artwork:** Crisp rendering via `chafa` using Unicode half-blocks (`vhalf`) without overlay glitches.
* **Double-Buffered TUI Engine:** Eliminates terminal screen tearing and flickering by pre-building full frame buffers.
* **Metadata Auto-Sync:** Live tracking of playback status, position, track info, and artwork URLs via MPRIS.
* **Zero Input Echo:** Suppresses keyboard echoing and noise during active playback loops.
* **Adaptive Centering:** Real-time layout recalculation and scaling on terminal resize.

---

## Prerequisites

| Tool | Purpose |
| --- | --- |
| `playerctl` | MPRIS metadata extraction |
| `chafa` | Terminal image rendering |
| `curl` | Fetching remote album cover artwork |
| `bash` | Shell runtime environment |

---

## Quick Installation

Run this command in your terminal to install `playnow` :

```bash
curl -sSL https://raw.githubusercontent.com/tovitass/playnow/main/install.sh | bash
```
---

## Quick Start

1. Start media playback in any MPRIS-supported application (*Spotify, Amberol, VLC, Firefox, etc.*).
2. Launch the utility:

```bash
playnow

```

### Keyboard Controls & Compatibility

| Key / Context | Description |
| --- | --- |
| `Ctrl + C` | Exit (automatically restores cursor and echo settings) |
| **Tested Environments** | Optimized for **Kitty** + **Hyprland**; compatible with any modern UTF-8 ANSI terminal. |

---

## License

Distributed under the [MIT License](https://www.google.com/search?q=LICENSE).
