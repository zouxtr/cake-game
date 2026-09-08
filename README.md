# 🍰 Cake Arcade

Two polished games for the Linux terminal. Single files, zero dependencies —
just Python 3 + `curses` (preinstalled on virtually every Linux distro).

- **🍰 Caketris** — polished Tetris: 7-bag, ghost, hold, levels, combo scoring
- **👻 Cakeman** — Pac-Man-style maze chase with 4 ghost personalities

![requires a terminal ≥ 72×26 with color support]

## Download & install

**One-line install with curl** (recommended — installs all three commands):

```bash
curl -fsSL https://raw.githubusercontent.com/zouxtr/cake-game/main/install.sh | bash
```

Then run the picker:

```bash
cake-game
```

or launch a game directly:

```bash
caketris    # tetris
cakeman     # pacman clone
```

> If your shell says `command not found`, `~/.local/bin` is not on your
> PATH. Add this to `~/.bashrc` and restart your terminal:
>
> ```bash
> export PATH="$HOME/.local/bin:$PATH"
> ```

**Manual download:**

```bash
mkdir -p ~/.local/bin
for g in caketris cakeman cake-game; do
  curl -fsSL "https://raw.githubusercontent.com/zouxtr/cake-game/main/$g" \
    -o ~/.local/bin/$g
  chmod +x ~/.local/bin/$g
done
```

**Clone the repo:**

```bash
git clone https://github.com/zouxtr/cake-game.git
cd cake-game
./cake-game    # or ./caketris / ./cakeman
```

## Remove the games

```bash
rm ~/.local/bin/caketris ~/.local/bin/cakeman ~/.local/bin/cake-game
```

Optionally delete saved best scores and settings:

```bash
rm -f ~/.caketris_highscore.json ~/.caketris_settings.json \
      ~/.cakeman_highscore.json ~/.cakeman_settings.json
```

That's everything — the games keep no other files on your system.

## Caketris controls

| Key | Action |
|-----|--------|
| `←` `→` / `H` `L` | move (exactly one cell per press) |
| `↓` / `S` / `J` | HOLD for fast fall (+1/cell, never teleports) |
| `↑` / `X` / `W` | rotate clockwise |
| `Z` / `A` | counter-clockwise / 180° |
| `SPACE` | hard drop (+2/cell) |
| `C` | hold |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` / `Q` | quick restart / quit |

Settings: ghost piece, colors, **piece skin** (Solid/Outline/Letters/Dots),
**theme** (Classic/Candy/Ocean/Sunset), next-preview count, reset best.

## Cakeman controls

| Key | Action |
|-----|--------|
| Arrows / WASD / HJKL | Step: ONE cell per press · Auto: classic slide |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` / `Q` | quick restart / quit |
| `M` | toggle colors |

Eat every crumb to clear the maze. Power treats send the ghosts running —
hunt them for 200 → 400 → 800 → 1600. Three lives per run, endless levels.

Settings: **character skin** (Cake/Arcade/Retro/Letters — changes you, the
four ghosts, crumbs and walls), **theme** (Classic/Candy/Midnight/Forest),
speed (Chill/Normal/Turbo), **controls** (Step = one press per cell,
Auto = classic slide-until-wall), reset best.

## Requirements

- Linux, Python 3.8+, terminal with color (xterm-256color recommended)
- No pip packages needed — `curl` only for the one-line install
