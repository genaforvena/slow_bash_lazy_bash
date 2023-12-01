#!/bin/bash

# Check if #startoftheshortcuts is already in .bashrc and if so, remove the whole block
# which is between #startoftheshortcuts and #endoftheshortcuts

if grep -q "#startoftheshortcuts" ~/.bashrc; then
		echo "Removing old aliases..."
		sed -i '/#startoftheshortcuts/,/#endoftheshortcuts/d' ~/.bashrc
fi

echo "#startoftheshortcuts: " >> ~/.bashrc

# Add aliases to .bashrc
echo "alias falkon='flatpak run org.kde.falkon'" >> ~/.bashrc
echo "alias update='sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc
echo "alias install='sudo apt-get install'" >> ~/.bashrc
echo "alias venvcreate='virtualenv -p python3 venv'" >> ~/.bashrc
echo "alias venvactivate='source venv/bin/activate'" >> ~/.bashrc
echo "alias gpt3='openai api chat.completions.create -m gpt-3.5-turbo -g user '">> ~/.bashrc
echo "alias gpt4='openai api chat.completions.create -m gpt-4 -g user '">> ~/.bashrc
echo "alias models='openai api models.list'" >> ~/.bashrc
# I use it to install pip packages into the system, not the virtualenv
echo "alias pipoff='pip install --break-system-packages '" >> ~/.bashrc

echo "#endoftheshortcuts: " >> ~/.bashrc
# Source .bashrc so aliases take effect immediately
source ~/.bashrc


echo "Aliases have been added and sourced to .bashrc."

