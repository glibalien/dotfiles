#!/bin/bash

# Dotfiles directory
DOTFILES="$HOME/dotfiles"

# Create symlinks
ln -sf "$DOTFILES/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/starship.toml" "$HOME/.config/starship.toml"

# Only install kitty config if kitty exists
if command -v kitty &> /dev/null; then
    mkdir -p "$HOME/.config/kitty"
    ln -sf "$DOTFILES/kitty.conf" "$HOME/.config/kitty/kitty.conf"
fi

echo "Dotfiles installed!"
