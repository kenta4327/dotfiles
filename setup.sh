#!/bin/zsh

if [ ! -e ~/.cache/dein ]; then
    # ないときだけdein.vimインストール
    mkdir -p ~/.cache/dein
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
    sh ./dein_installer.sh ~/.cache/dein
    rm dein_installer.sh
fi

# 現在のディレクトリ
THIS_DIR=$(cd $(dirname $0); pwd)

ln -sf ${THIS_DIR}/.vimrc ~/.vimrc
ln -sf ${THIS_DIR}/.inputrc ~/.inputrc
ln -sf ${THIS_DIR}/.bashrc ~/.bashrc
ln -sf ${THIS_DIR}/.zshrc ~/.zshrc

# bash ~/.bashrc
# sh で起動しても zsh にする
zsh
source ~/.zshrc

