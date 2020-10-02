#!/bin/bash

# Visual Studio Code :: Extension list
extlist=(
alefragnani.Bookmarks
amazonwebservices.aws-toolkit-vscode
amiralizadeh9480.laravel-extra-intellisense
Arjun.swagger-viewer
bmewburn.vscode-intelephense-client
codingyu.laravel-goto-view
CoenraadS.bracket-pair-colorizer
crest.insert-file
cschlosser.doxdocgen
dbaeumer.vscode-eslint
donjayamanne.githistory
dramforever.vscode-ghc-simple
eamodio.gitlens
EditorConfig.EditorConfig
emilast.LogFileHighlighter
Equinusocio.vsc-community-material-theme
felixfbecker.php-debug
formulahendry.code-runner
golang.go
huizhou.githd
IBM.output-colorizer
jebbs.plantuml
jeremyrajan.webpack
joelday.docthis
johnpapa.vscode-peacock
junstyle.php-cs-fixer
justusadam.language-haskell
k--kato.docomment
kenhowardpdx.vscode-gist
kisstkondoros.vscode-codemetrics
mattn.Lisp
MehediDracula.php-namespace-resolver
mikestead.dotenv
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
ms-vsliveshare.vsliveshare-audio
ms-vsliveshare.vsliveshare-pack
msjsdiag.vscode-react-native
naco-siren.gradle-language
neilbrayfield.php-docblocker
notZaki.pandocciter
octref.vetur
onecentlin.laravel-blade
onecentlin.laravel-extension-pack
onecentlin.laravel5-snippets
Pivotal.vscode-boot-dev-pack
Pivotal.vscode-concourse
Pivotal.vscode-manifest-yaml
Pivotal.vscode-spring-boot
PKief.material-icon-theme
rbbit.typescript-hero
rebornix.ruby
redhat.java
redhat.vscode-yaml
richardwillis.vscode-gradle
rogalmic.bash-debug
rust-lang.rust
ryanluker.vscode-coverage-gutters
ryannaddy.laravel-artisan
shd101wyy.markdown-preview-enhanced
sjhuangx.vscode-scheme
stef-k.laravel-goto-controller
thanhtrang.vscode-react-redux-snippets
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

