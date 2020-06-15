#!/bin/bash

## install emacs+plus
brew tap d12frosted/emacs-plus
brew install emacs-plus

## install source-code-pro
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

## clone spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


## overwrite init.el
rm -f ~/.emacs.d/init.el
rm -f ~/.spacemacs
ln ./init.el ~/.emacs.d/init.el
ln ./.spacemacs.el ~/.spacemacs
