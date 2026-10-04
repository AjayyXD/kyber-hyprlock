#!/usr/bin/env bash
# Remove a user-level kyber install. Your settings are kept unless you pass --purge.
set -euo pipefail

PREFIX="${PREFIX:-$HOME/.local}"
rm -f  "$PREFIX/bin/kyber"
rm -rf "$PREFIX/share/kyber"
echo "removed kyber from $PREFIX"

if [[ ${1:-} == --purge ]]; then
    rm -rf "${XDG_CONFIG_HOME:-$HOME/.config}/kyber"
    echo "removed settings in ${XDG_CONFIG_HOME:-$HOME/.config}/kyber"
else
    echo "settings kept in ${XDG_CONFIG_HOME:-$HOME/.config}/kyber (use --purge to delete)"
fi
echo "if you used 'kyber apply --default', restore your old config from"
echo "~/.config/hypr/hyprlock.conf.bak-* or delete ~/.config/hypr/hyprlock.conf."
