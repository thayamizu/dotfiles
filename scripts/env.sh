#!/bin/bash
# 定数定義
SCRIPT_DIR=$(cd $(dirname $0); pwd)
OS=$(uname)
HOME_PATH=$(cd ~; pwd)
VIM_BUNDLE="${HOME_PATH}/.vim/bundle"
NEO_BUNDLE="neobundle.vim"

## シンボリックリンクを設置
# Emacs
ln -si "${SCRIPT_DIR}/.emacs.d" "${HOME_PATH}/.emacs.d"

# VIM
ln -si ${SCRIPT_DIR}/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
if [ ! -f "${VIM_BUNDLE}/${NEO_BUNDLE}" ]; then
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

#zsh
if [ ${OS} = "Linux" ]; then
    #zsh-complitionsのレポジトリの登録
    cd /etc/yum.repos.d/
    wget https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/CentOS_6/shells:zsh-users:zsh-completions.repo

    #zshのインストール
    yum install -y zsh
    yum install -y zsh-completions
elif [ ${OS} = "Darwin" ];  then
    brew install zsh
    brew install zsh-completions
fi
#npm
ln -si ${SCRIPT_DIR}/.npmrc "${HOME_PATH}/.npmrc"
ln -si ${SCRIPT_DIR}/.prettierrc "${HOME_PATH}/.prettierrc"
ln -si ${SCRIPT_DIR}/.prettierignore "${HOME_PATH}/.prettierignore"
ln -si ${SCRIPT_DIR}/.eslintrc "${HOME_PATH}/.eslintrc"

#git
ln -si ${SCRIPT_DIR}/.gitattributes "${HOME_PATH}/.gitattributes"
ln -si ${SCRIPT_DIR}/.gitignore "${HOME_PATH}/.gitignore"

