#!/usr/bin/env bash
# User-level install of kyber into ~/.local (no root needed).
#   ./install.sh              install and generate the theme
#   ./install.sh --default    ...and use it as ~/.config/hypr/hyprlock.conf
#   PREFIX=/usr/local sudo -E ./install.sh   system-wide
set -euo pipefail
cd "$(dirname "$0")"

PREFIX="${PREFIX:-$HOME/.local}"

install -Dm755 bin/kyber                    "$PREFIX/bin/kyber"
install -Dm644 share/kyber/hyprlock.conf.in "$PREFIX/share/kyber/hyprlock.conf.in"
install -Dm644 share/kyber/config.example   "$PREFIX/share/kyber/config.example"

echo "installed to $PREFIX"
case ":$PATH:" in
    *":$PREFIX/bin:"*) ;;
    *) echo "note: $PREFIX/bin is not in your PATH; add it to run 'kyber' from a shell." ;;
esac

"$PREFIX/bin/kyber" config >/dev/null
"$PREFIX/bin/kyber" apply "$@"
echo
"$PREFIX/bin/kyber" doctor || true
echo
echo "next: run 'kyber lock' to try it (keep a TTY handy the first time; see README)."
