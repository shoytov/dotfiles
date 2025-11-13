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

# Kitty

```shell
cp -r ~/dotfiles/kitty ~/.config
```

# Midnight Commander

```shell
mkdir -p ~/.local/share/mc/skins
cp ~/dotfiles/mc/skins/* ~/.local/share/mc/skins
cp ~/dotfiles/mc/ini ~/.config/mc
```

# Neovim

```shell
cp -r ~/dotfiles/nvim/user/ ~/.config/nvim/lua
```

# Lazydocker

## MacOS

```shell
cp ~/dotfiles/lazydocker/config.yml ~/Library/Application\ Support/Lazydocker/config.yml
```

## Linux

```shell
cp ~/dotfiles/lazydocker/config.yml ~/.config/lazydocker/config.yml
```

# Lazygit

## Linux
```shell
cp ~/dotfiles/lazygit/linux/config.yml ~/.config/lazygit/config.yml
```

## MacOS
```shell
cp ~/dotfiles/lazygit/MacOS/config.yml ~/Library/Application\ Support/Lazygit/config.yml
```

# AiChat

```shell
cp -r ~/dotfiles/aichat ~/.config
```

# Zed Editor

```shell
cp -r ~/dotfiles/zed ~/.config
```

# Ansible

```shell
cp ~/dotfiles/ansible/* ~/.ansible
```

# LM Studio
```
cp -r ~/dotfiles/lm-studio ~/.cache
```

# MCP Host
```
cp ~/dotfiles/.mcphost.json ~/
```

```
cp -r ~/dotfiles/.prompts ~/.prompts
```
