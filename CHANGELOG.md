# Changelog

## 1.0.0

First public release.

- Terminal-window lock screen for hyprlock: clock, date, system specs,
  live CPU/memory/temperature/power, network rates, uptime and time-locked
  with millisecond display, sudo-style password prompt, vim-style status bar
- `kyber` CLI: `lock`, `apply`, `apply --default`, `config`, `doctor`
- Settings file (`~/.config/kyber/config`) with palettes (Catppuccin, Gruvbox,
  Nord, Tokyo Night, Dracula), fonts, 12/24h clock and blur/brightness
- Backgrounds: desktop screenshot, single image, crossfading slideshow, solid color
- Privacy toggles: hide hostname, IP address, or all network rows
- Package count for pacman, dpkg and rpm; CPU temperature via hwmon with
  thermal-zone fallback
