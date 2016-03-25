#!/bin/bash

echo -e "Install zadochob vim configuration\n"

echo "Getting pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Clone plugins repos..."
cd ~/.vim/bundle
git clone git@github.com:kien/ctrlp.vim.git
git clone git@github.com:scrooloose/nerdtree.git
git clone git@github.com:scrooloose/syntastic.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:pangloss/vim-javascript.git

cd -
cp ./colors/* ~/.vim/colors
cp ./.vimrc ~/.vimrc
