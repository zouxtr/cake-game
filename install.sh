#!/bin/sh
# Cake arcade installer — installs caketris, cakeman and the cake-game picker
# Usage: curl -fsSL https://raw.githubusercontent.com/zouxtr/cake-game/main/install.sh | bash
set -e

REPO="zouxtr/cake-game"
BRANCH="main"
BIN_DIR="${BIN_DIR:-$HOME/.local/bin}"

echo "==> Installing cake arcade to $BIN_DIR"
mkdir -p "$BIN_DIR"
for game in caketris cakeman cake-game; do
  curl -fsSL "https://raw.githubusercontent.com/$REPO/$BRANCH/$game" -o "$BIN_DIR/$game"
  chmod +x "$BIN_DIR/$game"
  echo "    installed $game"
done

echo "==> Done! Run 'cake-game' to pick a game,"
echo "    or launch 'caketris' / 'cakeman' directly."
case ":$PATH:" in
  *":$BIN_DIR:"*) ;;
  *)
    echo "NOTE: $BIN_DIR is not on your PATH."
    echo "Add this line to ~/.bashrc (then restart your terminal):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    ;;
esac
