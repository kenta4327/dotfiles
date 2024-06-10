#!/bin/zsh

# 現在のディレクトリ
THIS_DIR=$(cd $(dirname $0); pwd)

ln -sf ${THIS_DIR}/.vimrc ~/.vimrc
ln -sf ${THIS_DIR}/.zshrc ~/.zshrc

source ~/.zshrc

if [ ! -e ~/.cache/dein ]; then
    # ないときだけdein.vimインストール
    mkdir -p ~/.cache/dein
    curl https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh > dein_installer.sh
    sh ./dein_installer.sh ~/.cache/dein
    rm dein_installer.sh
fi

