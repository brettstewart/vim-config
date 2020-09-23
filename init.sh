#!/usr/bin/env bash

VIM_DIR="${HOME}/.vim"
VIMRC_PATH="${HOME}/.vimrc"
VIM_THEMES_DIR="${VIM_DIR}/colors"
VIM_PLUGINS_DIR="${VIM_DIR}/pack/plugins/start"

echo "Creating vim plugin dir"
mkdir -p $VIM_PLUGINS_DIR

echo "Installing vimrc"
cp ./vimrc ${VIMRC_PATH}

echo "Installing NERDTree"
git clone https://github.com/preservim/nerdtree.git ${VIM_PLUGINS_DIR}/nerdtree

echo "Installing theme"
mkdir -p $VIM_THEMES_DIR
curl https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim -o ${VIM_THEMES_DIR}/jellybeans.vim

echo "Installing vim-go"
git clone https://github.com/fatih/vim-go.git ${VIM_PLUGINS_DIR}/vim-go

echo "Installing splitjoin"
git clone https://github.com/AndrewRadev/splitjoin.vim ${VIM_PLUGINS_DIR}/splitjoin

echo "Installing ultisnips"
git clone https://github.com/SirVer/ultisnips.git ${VIM_PLUGINS_DIR}/ultisnips

echo "Installing cltrp"
git clone https://github.com/ctrlpvim/ctrlp.vim.git ${VIM_PLUGINS_DIR}/ctrlp

echo "Running required vim commands"
vim +GoInstallBinaries +qall
