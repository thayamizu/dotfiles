#!/bin/bash

# Visual Studio Code :: Extension list
extlist=(
alefragnani.Bookmarks
amazonwebservices.aws-toolkit-vscode
CoenraadS.bracket-pair-colorizer
crest.insert-file
dbaeumer.vscode-eslint
dionmunk.vscode-notes
donjayamanne.githistory
dramforever.vscode-ghc-simple
eamodio.gitlens
EditorConfig.EditorConfig
emilast.LogFileHighlighter
Equinusocio.vsc-community-material-theme
esafirm.kotlin-formatter
formulahendry.code-runner
IBM.output-colorizer
jebbs.plantuml
jeremyrajan.webpack
joelday.docthis
johnpapa.vscode-peacock
justusadam.language-haskell
karigari.chat
kenhowardpdx.vscode-gist
kisstkondoros.vscode-codemetrics
mathiasfrohlich.Kotlin
mrmlnc.vscode-duplicate
ms-azuretools.vscode-docker
MS-CEINTL.vscode-language-pack-ja
ms-dotnettools.csharp
ms-python.python
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-ssh-explorer
ms-vscode-remote.remote-wsl
ms-vscode-remote.vscode-remote-extensionpack
ms-vscode.cpptools
ms-vscode.powershell
ms-vsliveshare.vsliveshare
ms-vsliveshare.vsliveshare-pack
msjsdiag.vscode-react-native
naco-siren.gradle-language
notZaki.pandocciter
octref.vetur
Pivotal.vscode-boot-dev-pack
Pivotal.vscode-concourse
Pivotal.vscode-manifest-yaml
Pivotal.vscode-spring-boot
PKief.material-icon-theme
rbbit.typescript-hero
rebornix.ruby
redhat.java
richardwillis.vscode-gradle
rogalmic.bash-debug
rust-lang.rust
sgryjp.japanese-word-handler
shd101wyy.markdown-preview-enhanced
sjhuangx.vscode-scheme
tomsaunders.vscode-workspace-explorer
VisualStudioExptTeam.vscodeintellicode
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscjava.vscode-spring-boot-dashboard
vscjava.vscode-spring-initializr
vscode-icons-team.vscode-icons
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

