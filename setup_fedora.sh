#!/usr/bin/env bash
set -euo pipefail

# PACKAGES
sudo dnf install -y zsh alacritty tmux git git-delta yadm code

# YADM — clone dotfiles into $HOME
yadm clone https://github.com/codebychunkz/myenv.git

# GIT CONFIG
git config --global include.path ~/.personal_git.conf

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# ATUIN
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
