# REQUIRED
sudo dnf install zsh alacritty tmux git git-delta

#TMUX PACKAGE MANAGER
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#SETUP ATUIN
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
