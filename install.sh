#!/bin/bash

# Dotfiles directory
DOTFILES="$HOME/dotfiles"

# Create symlinks
ln -sf "$DOTFILES/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/starship.toml" "$HOME/.config/starship.toml"
ln -sf "$DOTFILES/kitty.conf" "$HOME/.config/kitty/kitty.conf"

echo "Dotfiles installed!"
