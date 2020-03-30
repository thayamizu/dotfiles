#!/bin/zsh
USER_NAME=$(who | head -1 | cut -f 1 -d " ")
ZSH_PATH=$(which zsh)

#zpreztoのインストール
cd ~
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

#ログインシェルをzshに変更
sudo chsh ${USER_NAME} -s ${ZSH_PATH}
