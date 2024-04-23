#!/usr/bin/env bash

VIM_DIR="${HOME}/.vim"
VIMRC_PATH="${HOME}/.vimrc"
VIM_THEMES_DIR="${VIM_DIR}/pack/themes/start"
VIM_PLUGINS_DIR="${VIM_DIR}/pack/plugins/start"

echo "Creating vim plugin dir"
mkdir -p $VIM_PLUGINS_DIR

echo "Creating vim plugin dir"
mkdir -p $VIM_THEMES_DIR

echo "Installing vimrc"
cp ./vimrc ${VIMRC_PATH}

echo "Installing NERDTree"
git clone https://github.com/preservim/nerdtree.git ${VIM_PLUGINS_DIR}/nerdtree

git clone https://github.com/dracula/vim.git ${VIM_THEMES_DIR}/dracula

echo "Installing vim-go"
git clone https://github.com/fatih/vim-go.git ${VIM_PLUGINS_DIR}/vim-go

echo "Installing splitjoin"
git clone https://github.com/AndrewRadev/splitjoin.vim.git ${VIM_PLUGINS_DIR}/splitjoin

echo "Installing ultisnips"
git clone https://github.com/SirVer/ultisnips.git ${VIM_PLUGINS_DIR}/ultisnips

echo "Installing cltrp"
git clone https://github.com/ctrlpvim/ctrlp.vim.git ${VIM_PLUGINS_DIR}/ctrlp

echo "Installing lightline"
git clone https://github.com/itchyny/lightline.vim.git ${VIM_PLUGINS_DIR}/lightline

echo "Running required vim commands"
vim +GoInstallBinaries +qall
