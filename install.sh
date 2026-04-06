#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
    local src="$1" dst="$2"
    mkdir -p "$(dirname "$dst")"
    ln -sfn "$src" "$dst"
    echo "  linked: $dst"
}

echo "Installing dotfiles..."

link "$DOTFILES/hypr/custom"        ~/.config/hypr/custom
link "$DOTFILES/hypr/hyprland.conf" ~/.config/hypr/hyprland.conf
link "$DOTFILES/hypr/hypridle.conf" ~/.config/hypr/hypridle.conf 2>/dev/null
link "$DOTFILES/hypr/hyprlock.conf" ~/.config/hypr/hyprlock.conf 2>/dev/null
link "$DOTFILES/kitty"              ~/.config/kitty

echo "Done! Run: hyprctl reload"
