#!/usr/bin/fish

cp .tmux.conf ~/.tmux.conf
mkdir -p ~/.config/alacritty && cp alacritty.yml ~/.config/alacritty/alacritty.yml
mkdir -p ~/.config/fish && cp config.fish ~/.config/fish/config.fish
mkdir -p ~/.config/nvim && cp init.vim ~/.config/nvim/init.vim
cp starship.toml ~/.config/starship.toml
