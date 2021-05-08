#!/bin/bash

# Visual Studio Code :: Extension list
extlist=(
amazonwebservices.aws-toolkit-vscode
amiralizadeh9480.laravel-extra-intellisense
Arjun.swagger-viewer
bmewburn.vscode-intelephense-client
codingyu.laravel-goto-view
crest.insert-file
cschlosser.doxdocgen
dbaeumer.vscode-eslint
donjayamanne.githistory
dramforever.vscode-ghc-simple
eamodio.gitlens
EditorConfig.EditorConfig
felixfbecker.php-debug
formulahendry.code-runner
huizhou.githd
jeremyrajan.webpack
johnpapa.vscode-peacock
junstyle.php-cs-fixer
justusadam.language-haskell
kisstkondoros.vscode-codemetrics
MehediDracula.php-namespace-resolver
mikestead.dotenv
ms-azuretools.vscode-docker
MS-CEINTL.vscode-language-pack-ja
ms-dotnettools.csharp
ms-python.python
ms-toolsai.jupyter
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-wsl
ms-vscode-remote.vscode-remote-extensionpack
ms-vscode.cpptools
ms-vsliveshare.vsliveshare
ms-vsliveshare.vsliveshare-audio
ms-vsliveshare.vsliveshare-pack
neilbrayfield.php-docblocker
notZaki.pandocciter
onecentlin.laravel-blade
onecentlin.laravel-extension-pack
onecentlin.laravel5-snippets
redhat.vscode-yaml
rogalmic.bash-debug
rust-lang.rust
ryanluker.vscode-coverage-gutters
ryannaddy.laravel-artisan
shd101wyy.markdown-preview-enhanced
stef-k.laravel-goto-controller
tomsaunders.vscode-workspace-explorer
vscode-icons-team.vscode-icons
waderyan.gitblame
)


for i in ${extlist[@]}; do
    code --install-extension $i
done

# copy setting
USER_NAME=$(id -u -n | head -1 | cut -f 1 -d " ")
MAC_VSCODE_DATA_PATH="/Users/${USER_NAME}/Library/Application Support/Code/User/"
WIN_VSCODE_DATA_PATH="/C/Users/${USER_NAME}/AppData/Roaming/Code/User/"
VSCODE_DIR="./vscode/"
KEYBINDING_FILE="keybindings.json"
SETTING_FILE="settings.json"
OS=$(uname)

if [ ${OS} = "Darwin" ];  then
    rm -f "${MAC_VSCODE_DATA_PATH}${SETTING_FILE}"
    rm -f "${MAC_VSCODE_DATA_PATH}${KEYBINDING_FILE}"
    ln "${VSCODE_DIR}${SETTING_FILE}" "${MAC_VSCODE_DATA_PATH}${SETTING_FILE}"
    ln "${VSCODE_DIR}${KEYBINDING_FILE}" "${MAC_VSCODE_DATA_PATH}${KEYBINDING_FILE}"

elif [[ ${OS} =~ ^MINGW ]]; then
    rm -f "${WIN_VSCODE_DATA_PATH}${SETTING_FILE}"
    rm -f "${WIN_VSCODE_DATA_PATH}${KEYBINDING_FILE}"
    ln "${VSCODE_DIR}${SETTING_FILE}" "${WIN_VSCODE_DATA_PATH}${SETTING_FILE}"
    ln "${VSCODE_DIR}${KEYBINDING_FILE}" "${WIN_VSCODE_DATA_PATH}${KEYBINDING_FILE}"
fi

