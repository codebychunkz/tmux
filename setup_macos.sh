#!/usr/bin/env bash
set -euo pipefail

# HOMEBREW
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# PACKAGES
brew install git git-delta bash tmux neovim osx-cpu-temp yadm stats make
brew install --cask alacritty
brew install --cask visual-studio-code
brew install --cask raycast

# YADM — clone dotfiles into $HOME (runs yadm alt automatically, symlinking ##os.Darwin alternates)
yadm clone https://github.com/codebychunkz/myenv.git

# GIT CONFIG
git config --global include.path ~/.personal_git.conf

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# ATUIN
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# PODMAN
#brew install podman podman-compose
#podman machine init
#podman machine start
