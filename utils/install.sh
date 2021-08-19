#!/bin/sh

installpacker() {
  git clone https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
}

install() {
	echo "Installing node..."
	sudo pacman -S npm
	sudo pacman -S python-pip
	sudo npm i -g neovim
  pip3 install pynvim --user

	sudo pacman -S ripgrep fzf
	pip3 install neovim-remote
	npm install -g tree-sitter-cli
}

