# Personal Configuration 

## Neovim Installation

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim zip unzip gcc
```

### NVM, FZF, Zoxide
```bash
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install stable
```

## Zsh Installation

```bash
sudo apt install zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

DEVELOPMENT_DIR="~/development"

alias art="php artisan"
alias vim=nvim
alias dev="cd $DEVELOPMENT_DIR"
alias setup="cd $DEVELOPMENT_DIR/config && ./setup $1"

export PATH=$PATH:/root/.local/bin
eval "$(zoxide init zsh)"

cd $DEVELOPMENT_DIR;

if [ -z "$TMUX" ]
then
    tmux has-session -t 0 2>/dev/null || { 
        if [[ -z "$(pwd)" || "$(pwd)" == "/root" ]]; 
        then tmux new-session -d -s 0 -c $DEVELOPMENT_DIR;
        else tmux new-session -d -s 0 -c $(pwd); 
        fi 
    }; 
    exec tmux attach -t 0
fi

if [ -z "$TMUX" ]
then
  exec tmux;
fi

export BROWSER=$DEVELOPMENT_DIR/config/open-browser.sh
```

## Install xdg-open for WSL (For windsurf chat)

```bash
sudo apt install xdg-utils
```

## Ubuntu update (fzf requires latest version)

```bash
lsb_release -a
vim /etc/update-manager/release-upgrades
do-release-upgrade
```

## SSH Keygen

```bash
ssh-keygen -t ed25519 -C "advaitharunjeena@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

ssh -T git@github.com
ssh-keyscan -t ed25519 github.com >> ~/.ssh/known_hosts
```

## Link Configs

```bash
git clone git@github.com:Advaith3600/config.git && cd config
ln .gitconfig ~/.gitconfig
ln .tmux.conf ~/.tmux.conf
ln .vimrc ~/.vimrc
cp -r nvim ~/.config/
```

## Tmux

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
```

`<C-b>I` to initialize.

## Nginx Config

```nginx
proxy_http_version 1.1;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection 'upgrade';
proxy_set_header Host $host;
proxy_cache_bypass $http_upgrade;

location / {
    proxy_pass http://localhost:3000;
}

location /api {
    proxy_pass http://127.0.0.1:8000;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $host;
    proxy_redirect off;

    proxy_connect_timeout       70s;
    proxy_send_timeout          86400;
    proxy_read_timeout          86400;
    send_timeout                86400;
}
```

## Quick Links

- [NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [NvChad](https://nvchad.com)
- [win32yank](https://github.com/equalsraf/win32yank/releases)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)
- [fzf](https://github.com/junegunn/fzf)
- [NVM](https://github.com/nvm-sh/nvm)
- [NerdFonts](https://www.nerdfonts.com/font-downloads)
