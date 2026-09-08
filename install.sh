#!/bin/sh
# Caketris installer — installs the game to ~/.local/bin/caketris
# Usage: curl -fsSL https://raw.githubusercontent.com/zouxtr/cake-game/main/install.sh | bash
set -e

REPO="zouxtr/cake-game"
BRANCH="main"
BIN_DIR="${BIN_DIR:-$HOME/.local/bin}"
TARGET="$BIN_DIR/caketris"

echo "==> Installing caketris to $TARGET"
mkdir -p "$BIN_DIR"
curl -fsSL "https://raw.githubusercontent.com/$REPO/$BRANCH/caketris" -o "$TARGET"
chmod +x "$TARGET"

echo "==> Done! Run it with: caketris"
case ":$PATH:" in
  *":$BIN_DIR:"*) ;;
  *)
    echo "NOTE: $BIN_DIR is not on your PATH."
    echo "Add this line to ~/.bashrc (then restart your terminal):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    ;;
esac
