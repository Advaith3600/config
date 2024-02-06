# Personal Configuration 

## Zsh Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

DEVELOPMENT_DIR="/home/advaith/development"

alias art="php artisan"
alias vim=nvim
alias dev="cd $DEVELOPMENT_DIR"
alias setup="cd $DEVELOPMENT_DIR/config && ./setup $1"

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
```

## SSH keygen

```bash
ssh-keygen -t ed25519 -C "advaitharunjeena@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

ssh -T git@github.com
ssh-keyscan -t ed25519 github.com >> ~/.ssh/known_hosts
```

## Tmux

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd ~/.config/tmux
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
- [NvChad](https://nvchad.com/)
- [win32yank](https://github.com/equalsraf/win32yank/releases)
