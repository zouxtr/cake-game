# 🍰 Caketris

A polished Tetris for the Linux terminal. Single file, zero dependencies —
just Python 3 + `curses` (preinstalled on virtually every Linux distro).

![requires a terminal ≥ 72×26 with color support]

## Download & install

**Option 1 — one-line install with curl** (recommended):

```bash
curl -fsSL https://raw.githubusercontent.com/zouxtr/cake-game/main/install.sh | bash
```

This downloads the game to `~/.local/bin/caketris` and makes it executable.
Then just run:

```bash
caketris
```

> If your shell says `caketris: command not found`, `~/.local/bin` is not on
> your PATH. Add this to `~/.bashrc` and restart your terminal:
>
> ```bash
> export PATH="$HOME/.local/bin:$PATH"
> ```

**Option 2 — manual download:**

```bash
mkdir -p ~/.local/bin
curl -fsSL https://raw.githubusercontent.com/zouxtr/cake-game/main/caketris \
  -o ~/.local/bin/caketris
chmod +x ~/.local/bin/caketris
caketris
```

**Option 3 — clone the repo:**

```bash
git clone https://github.com/zouxtr/cake-game.git
cd cake-game
./caketris
```

Extra flags: `caketris --help`, `caketris --seed 42` (reproducible pieces),
`caketris --no-ghost`, `caketris --mono`, `caketris --test` (self-test).

## Remove the game

Delete the installed binary:

```bash
rm ~/.local/bin/caketris
```

Optionally also delete your saved best score:

```bash
rm ~/.caketris_highscore.json
```

That's everything — caketris keeps no other files on your system.

## Controls

| Key | Action |
|-----|--------|
| `←` `→` / `H` `L` | move (exactly one cell per press) |
| `↓` / `S` / `J` | HOLD for fast fall (+1/cell, never teleports) |
| `↑` / `X` / `W` | rotate clockwise |
| `Z` | rotate counter-clockwise |
| `A` | rotate 180° |
| `SPACE` | hard drop (+2/cell) |
| `C` | hold |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` | quick restart (keeps your settings) |
| `Q` | quit |
| `M` | toggle ghost piece |

Holding `←`/`→` repeats via your terminal's own key-repeat, so a single
tap always moves exactly one cell.

### Pause menu & settings

Press `ESC` (or `P`) mid-game to pause and open the menu. Navigate with
`↑↓` + `Enter` (or `1`–`4`); where the terminal supports mouse, buttons
are clickable. Settings lets you toggle the ghost piece and colors,
change the next-preview count (1–5), and reset the best score.

## Features

- Regulation 10×20 board, 7-bag randomizer, SRS-style wall kicks
- Ghost piece, hold queue, next-piece preview
- Guideline scoring: 100/300/500/800 × level, 1.5× back-to-back Tetris
  bonus, combo bonus, soft/hard-drop points
- Level every 10 lines with real gravity curve + progress bar
- Lock delay, line-clear flash, clean pause/settings/game-over menus
- Live stats and persistent best score in `~/.caketris_highscore.json`

## Requirements

- Linux, Python 3.8+, terminal with color (xterm-256color recommended)
- No pip packages needed — `curl` only for the one-line install
