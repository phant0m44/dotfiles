# dotfiles

My personal Hyprland configuration based on [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland) (illogical-impulse).

## What's included

- `hypr/custom/` — personal Hyprland overrides (keybinds, rules, env, execs)
- `hypr/hyprland.conf` — main config
- `hypr/hypridle.conf` — idle/lock screen config
- `hypr/hyprlock.conf` — lock screen config
- `kitty/` — terminal config

## Requirements

- Arch-based or Fedora-based Linux (tested on Nobara)
- [illogical-impulse](https://github.com/end-4/dots-hyprland) installed first
- `git`, `jq`

## Install

**1. Install illogical-impulse first**
```bash
bash <(curl -s https://ii.clsty.link/get)
```

**2. Clone this repo**
```bash
git clone git@github.com:phant0m44/dotfiles.git ~/dotfiles
```

**3. Run install script**
```bash
cd ~/dotfiles && ./install.sh
```

**4. Reload Hyprland**
```bash
hyprctl reload
```

## Update

After making changes to your configs:
```bash
cd ~/dotfiles
git add .
git commit -m "update configs"
git push
```

## Notes

- `hypr/custom/` is symlinked, so changes apply instantly without copying
- Do not modify files inside `~/.config/hypr/hyprland/` — those belong to illogical-impulse and will be overwritten on update
- Canvas mode scripts are in `hypr/custom/scripts/`
