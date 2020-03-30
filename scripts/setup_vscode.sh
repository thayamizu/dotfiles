#!/bin/bash

# Visual Studio Code :: Extension list
extlist=(
alefragnani.Bookmarks
amazonwebservices.aws-toolkit-vscode
CoenraadS.bracket-pair-colorizer
dbaeumer.vscode-eslint
donjayamanne.githistory
eamodio.gitlens
EditorConfig.EditorConfig
emilast.LogFileHighlighter
fabiospampinato.vscode-todo-plus
formulahendry.code-runner
IBM.output-colorizer
ICS.japanese-proofreading
jebbs.plantuml
jeremyrajan.webpack
joelday.docthis
johnpapa.vscode-peacock
justusadam.language-haskell
karigari.chat
kenhowardpdx.vscode-gist
kisstkondoros.vscode-codemetrics
mrmlnc.vscode-duplicate
ms-azuretools.vscode-docker
MS-CEINTL.vscode-language-pack-ja
ms-python.python
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-ssh-explorer
ms-vscode-remote.remote-wsl
ms-vscode-remote.vscode-remte-extensionpack
ms-vscode.cpptools
ms-vscode.csharp
ms-vscode.powershell
ms-vsliveshare.vsliveshare
ms-vsliveshare.vsliveshare-audio
ms-vsliveshare.vsliveshare-pack
octref.vetur
rbbit.typescript-hero
rebornix.ruby
rogalmic.bash-debug
scala-lang.scala
sgryjp.japanese-word-handler
shd101wyy.markdown-preview-enhanced
sjhuangx.vscode-scheme
tomsaunders.vscode-workspace-explorer
vscode-icons-team.vscode-icons
vscodevim.vim
waderyan.gitblame
wingrunr21.vscode-ruby
zhuangtongfa.material-theme
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
    cp -f "${VSCODE_DIR}${SETTING_FILE}" "${MAC_VSCODE_DATA_PATH}${SETTING_FILE}"
    cp -f "${VSCODE_DIR}${KEYBINDING_FILE}" "${MAC_VSCODE_DATA_PATH}${KEYBINDING_FILE}"

elif [[ ${OS} =~ ^MINGW ]]; then
    cp -f "${VSCODE_DIR}${SETTING_FILE}" "${WIN_VSCODE_DATA_PATH}${SETTING_FILE}"
    cp -f "${VSCODE_DIR}${KEYBINDING_FILE}" "${WIN_VSCODE_DATA_PATH}${KEYBINDING_FILE}"
fi

