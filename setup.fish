#!/usr/bin/fish

mkdir -p ~/.config/alacritty && cp alacritty.toml ~/.config/alacritty/alacritty.toml
mkdir -p ~/.config/zellij && cp zellij.kdl ~/.config/zellij/config.kdl
mkdir -p ~/.config/helix && cp helix.toml ~/.config/helix/config.toml && cp helix_languages.toml ~/.config/helix/languages.toml
mkdir -p ~/.config/fish && cp config.fish ~/.config/fish/config.fish
mkdir -p ~/.config/nvim && cp init.vim ~/.config/nvim/init.vim
cp starship.toml ~/.config/starship.toml
