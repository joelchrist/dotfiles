#!/bin/bash

# This script will bootstrap the docfiles on a Mac OSX system.



# Symlink all our dotfiles
echo "==> Symlinking all your dotfiles"
scripts/symlink.sh

# Make system changes
echo "==> Making system changes"
scripts/system-changes.sh
