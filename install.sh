#!/bin/sh
set -eu

script_dir=$(realpath "$(dirname "$0")")
ln -snfv "$script_dir/.bashrc" "$HOME/.bashrc"
ln -snfv "$script_dir/.wezterm.lua" "$HOME/.wezterm.lua"
