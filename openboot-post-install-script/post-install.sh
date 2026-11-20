#!/bin/bash

## Add Homebrew to your PATH
BREW_LINE='eval "$(/opt/homebrew/bin/brew shellenv zsh)"'
if ! grep -qF "$BREW_LINE" "$HOME/.zprofile" 2>/dev/null; then
  printf '\n%s\n' "$BREW_LINE" >> "$HOME/.zprofile"
fi
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

## Editor settings (Antigravity IDE & VS Code)
mkdir -p "$HOME/Library/Application Support/Antigravity IDE/User"
cp "$HOME/.dotfiles/antigravity-ide/settings.json" "$HOME/Library/Application Support/Antigravity IDE/User/settings.json"
chmod 644 "$HOME/Library/Application Support/Antigravity IDE/User/settings.json"

mkdir -p "$HOME/Library/Application Support/Code/User"
cp "$HOME/.dotfiles/antigravity-ide/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
chmod 644 "$HOME/Library/Application Support/Code/User/settings.json"

## SSH permissions
chmod 700 "$HOME/.dotfiles/.ssh"
chmod 600 "$HOME/.dotfiles/.ssh/config"

## Nerd Font
brew install --cask font-meslo-lg-nerd-font

## iTerm2 settings
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

echo "Setup complete! Don't forget to enable SSH Agent in Proton Pass under Settings > General > SSH Agent on a fresh install."
