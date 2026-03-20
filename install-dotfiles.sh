#!/usr/bin/bash
set -euo pipefail

rsync -rlv dotfiles/ ~

if [ "${container:-}" = "podman" ]; then
    sed -i 's/gpgsign = true/gpgsign = false/' ~/.gitconfig
fi
