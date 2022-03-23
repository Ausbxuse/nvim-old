#!/bin/sh

installpacker() {
  git clone https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim && nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
}

choosesystem() {
  echo choose your system:
  echo "   1) Arch"
  echo "   2) Debian"
  echo "   3) Termux"
  echo "   4) Mac[TODO]"
  echo "   5) Windows[TODO]"

  until [[ $system_choice =~ ^[1-3]$ ]]; do
    echo -n "[1-3]: "
    read  system_choice
  done


  case $system_choice in
    1) choice="Arch";;
    2) choice="Debian";;
    3) choice="Termux";;
  esac
}

installonarch() {
	echo "Installing on Arch"
	sudo pacman -S npm
	sudo pacman -S python-pip
	sudo npm i -g neovim
  pip3 install pynvim --user

	sudo pacman -S ripgrep fzf
	pip3 install neovim-remote
	npm install -g tree-sitter-cli
}

installondebian() {
	echo "Installing on Debian"
	sudo apt install nodejs
	sudo apt install npm

	sudo apt install python3-pip >/dev/null

	sudo apt install ripgrep fzf
	sudo apt install libjpeg8-dev zlib1g-dev python-dev python3-dev libxtst-dev
	pip3 install neovim-remote
	npm install -g tree-sitter-cli
}

installontermux() {
	echo "Installing on termux"
	# sudo apt install nodejs
	# sudo apt install npm

	# sudo apt install python3-pip >/dev/null

	pkg install ripgrep fzf fd
	# npm install -g tree-sitter-cli
}

install() {
  case $choice in
    "Arch") installonarch ;;
    "Debian") installondebian;;
    "Termux") installontermux;;
  esac
}

# install language servers
installLSP() {
  paru -S --noconfirm lua-language-server npm yarn clang
  npm i -g bash-language-server
  npm i -g typescript typescript-language-server
  npm i -g vscode-langservers-extracted # jsonls, html, css
  npm i -g pyright

}

main() {
  # installpacker
  installLSP
}

main

