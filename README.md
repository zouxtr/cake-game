# 👽 Alien Arcade

Two polished games for the Linux terminal. Single files, zero dependencies —
just Python 3 + `curses` (preinstalled on virtually every Linux distro).

- **👽 Alientris** — polished Tetris: 7-bag, ghost, hold, levels, combo scoring
- **👻 Alien-Man** — Pac-Man-style maze chase with 4 ghost personalities

![requires a terminal ≥ 72×26 with color support]

## Download & install

**One-line install with curl** (recommended — installs all three commands):

```bash
curl -fsSL https://raw.githubusercontent.com/zouxtr/alien-games/main/install.sh | bash
```

Then run the picker:

```bash
alien-games
```

or launch a game directly:

```bash
alientris    # tetris
alien-man    # pacman clone
alien-pong   # pong vs CPU
alien-break  # breakout
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
for g in alientris alien-man alien-pong alien-break alien-games; do
  curl -fsSL "https://raw.githubusercontent.com/zouxtr/alien-games/main/$g" \
    -o ~/.local/bin/$g
  chmod +x ~/.local/bin/$g
done
```

**Clone the repo:**

```bash
git clone https://github.com/zouxtr/alien-games.git
cd alien-games
./alien-games    # or ./alientris / ./alien-man / ./alien-pong / ./alien-break
```

## Remove the games

```bash
rm ~/.local/bin/alientris ~/.local/bin/alien-man ~/.local/bin/alien-pong \
   ~/.local/bin/alien-break ~/.local/bin/alien-games
```

Optionally delete saved best scores and settings:

```bash
rm -f ~/.alientris_highscore.json ~/.alientris_settings.json \
      ~/.alien-man_highscore.json ~/.alien-man_settings.json \
      ~/.alien-pong_highscore.json ~/.alien-pong_settings.json \
      ~/.alien-break_highscore.json ~/.alien-break_settings.json
```

That's everything — the games keep no other files on your system.

## Alientris controls

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

## Alien-Man controls

| Key | Action |
|-----|--------|
| Arrows / WASD / HJKL | Step: ONE cell per press · Auto: classic slide |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` / `Q` | quick restart / quit |
| `M` | toggle colors |

Eat every crumb to clear the maze. Power treats send the ghosts running —
hunt them for 200 → 400 → 800 → 1600. Three lives per run, endless levels.

Settings: **character skin** (Alien/Arcade/Retro/Letters — changes you, the
four ghosts, crumbs and walls), **theme** (Classic/Candy/Midnight/Forest),
speed (Chill/Normal/Turbo), **controls** (Step = one press per cell,
Auto = classic slide-until-wall), reset best.

## Alien-Pong controls

| Key | Action |
|-----|--------|
| `↑` / `W` / `K` | paddle up — one cell per press (hold to run) |
| `↓` / `S` / `J` | paddle down — one cell per press (hold to run) |
| Mouse | optional paddle-follow (Settings → Paddle follows) |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` / `Q` | quick restart / quit |
| `M` | toggle colors |

You are the LEFT paddle against the CPU. First to the win score takes
the match — rallies speed the ball up, longest rally is remembered.

Settings: **skin** (Alien/Retro/Round/Blocks — ball, paddles, net),
**theme** (Classic/Candy/Midnight/Forest), speed (Chill/Normal/Turbo),
AI difficulty (Easy/Normal/Hard), win score (5/7/11), reset records.

## Alien-Break controls

| Key | Action |
|-----|--------|
| `←` / `→` / `H` / `L` | paddle — one cell per press (hold to run) |
| Mouse | optional paddle-follow (Settings → Paddle follows) |
| `SPACE` | launch the ball |
| `ESC` / `P` | pause menu: Continue · Restart · Settings · Quit |
| `R` / `Q` | quick restart / quit |
| `M` | toggle colors |

Clear every brick to advance — endless levels, faster each time, top rows
pay more. Don't let the ball past your paddle.

Settings: **skin** (Alien/Retro/Round/Blocks — ball, paddle, bricks),
**theme** (Classic/Candy/Midnight/Forest), speed (Chill/Normal/Turbo),
lives (3/5), reset best.

## Requirements

- Linux, Python 3.8+, terminal with color (xterm-256color recommended)
- No pip packages needed — `curl` only for the one-line install
