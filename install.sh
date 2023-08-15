#/bin/bash
# Select the Nerd Font from https://www.nerdfonts.com/font-downloads

echo "[-] Download The Nerd $1 fonts [-]"
echo "#######################"
if [ -z "$1" ]; then
    echo "Please provide the nerd font name. Example: JetBrainsMono"
fi
if [ "$(command -v curl)" ]; then
    echo "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$1.zip"
    curl -OL "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$1.zip"
elif [ "$(command -v wget)" ]; then
    echo "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$1.zip"
    wget "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$1.zip"
else
    echo "We cannot find the curl and wget command. First, install the curl and wget command, one of them."
fi
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -fv
echo "done!"