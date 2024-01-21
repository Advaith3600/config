# Personal Configuration 

## Zsh Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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

## Git init

```bash
git config --global user.name "Advaith A J"
git config --global user.email "advaitharunjeena@gmail.com"
git branch --set-upstream-to=origin/main main
```

## Tmux

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd ~/.config/tmux
```

`<C-b>I` to initialize.

## Quick Links

- [NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [NvChad](https://nvchad.com/)
- [win32yank](https://github.com/equalsraf/win32yank/releases)
