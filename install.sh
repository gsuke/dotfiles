#!/bin/sh

script_dir="$(
    cd "$(dirname "$0")" || exit
    pwd
)"

ln -nfs "$script_dir/.wezterm.lua" ~
