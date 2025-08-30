#!/usr/bin/env bash
set -euo pipefail

# Update system
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim zip unzip gcc ripgrep zsh curl git tmux

# Install Oh My Zsh (non-interactive)
export RUNZSH=no
export KEEP_ZSHRC=yes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# FZF (auto install, all options enabled)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# Zoxide (binary install, skip shell config edits)
mkdir -p ~/.local/bin
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh -s -- --bin-dir ~/.local/bin

# NVM (non-interactive install)
export NVM_DIR="$HOME/.nvm"
mkdir -p "$NVM_DIR"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source "$NVM_DIR/nvm.sh"
nvm install stable

# Dotfiles setup
git clone https://github.com/Advaith3600/config.git ~/config || true
cd ~/config

ln -sf ~/config/.gitconfig ~/.gitconfig
ln -sf ~/config/.tmux.conf ~/.tmux.conf
ln -sf ~/config/.vimrc ~/.vimrc
mkdir -p ~/.config
cp -r nvim ~/.config/

# --- Patch ~/.zshrc ---
ZSHRC="$HOME/.zshrc"

# Ensure plugins line includes autosuggestions + highlighting
if grep -q "^plugins=" "$ZSHRC"; then
    sed -i 's/^plugins=(.*)$/plugins=(git git-commit zsh-autosuggestions zsh-syntax-highlighting)/' "$ZSHRC"
else
    echo 'plugins=(git git-commit zsh-autosuggestions zsh-syntax-highlighting)' >> "$ZSHRC"
fi

# Add zoxide init if not already present
if ! grep -q "zoxide init" "$ZSHRC"; then
    echo 'eval "$(~/.local/bin/zoxide init zsh)"' >> "$ZSHRC"
fi

# Cleanup
sudo apt upgrade -y
sudo apt autoremove -y

echo "✅ Setup complete! Restart your terminal or run 'exec zsh' to apply changes."

