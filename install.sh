sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim zip unzip gcc ripgrep -y

sudo apt install zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install stable

git clone https://github.com/Advaith3600/config.git
cd config
ln .gitconfig ~/.gitconfig
ln .tmux.conf ~/.tmux.conf
ln .vimrc ~/.vimrc
cp -r nvim ~/.config/

apt upgrade -y
apt autoremove
