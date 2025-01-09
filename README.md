# Scripts
Base sripts for other utils

```shell
cp -r ~/dotfiles/scripts ~
```

# TMUX

Install tmux on operational system like that:

```shell
brew install tmux
```

```shell
sudo pacman -S tmux

```

etc.

## Config
```
cd
git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
```

# ZSH

Install this plugin [https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

Example of .zshrc in repo
