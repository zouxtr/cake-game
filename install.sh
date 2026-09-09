#!/bin/sh
# Alien arcade installer — installs alientris, alien-man and the alien-games picker
# Usage: curl -fsSL https://raw.githubusercontent.com/zouxtr/alien-games/main/install.sh | bash
set -e

REPO="zouxtr/alien-games"
BRANCH="main"
BIN_DIR="${BIN_DIR:-$HOME/.local/bin}"

echo "==> Installing alien arcade to $BIN_DIR"
mkdir -p "$BIN_DIR"
for game in alientris alien-man alien-pong alien-games; do
  curl -fsSL "https://raw.githubusercontent.com/$REPO/$BRANCH/$game" -o "$BIN_DIR/$game"
  chmod +x "$BIN_DIR/$game"
  echo "    installed $game"
done

echo "==> Done! Run 'alien-games' to pick a game,"
echo "    or launch 'alientris' / 'alien-man' / 'alien-pong' directly."
case ":$PATH:" in
  *":$BIN_DIR:"*) ;;
  *)
    echo "NOTE: $BIN_DIR is not on your PATH."
    echo "Add this line to ~/.bashrc (then restart your terminal):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    ;;
esac
