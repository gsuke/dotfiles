#!/bin/sh
set -eu

script_dir=$(realpath "$(dirname "$0")")
cd "$script_dir"

for f in .??*; do
    [ "$f" = ".git" ] && continue

    ln -snfv "$script_dir/$f" ~/
done
