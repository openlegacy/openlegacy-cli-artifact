#!/bin/bash

CURR_PATH="`pwd`"
SHELL_TYPE=$SHELL
pattern=".*bash.*"

if [[ $SHELL_TYPE =~ $pattern ]]; then
	echo "Installing..."
	echo "export PATH=\"${PATH}:${CURR_PATH}\"" >> ~/.bash_profile
	echo "source ${CURR_PATH}/.ol-completion.sh" >> ~/.bash_profile
	source ~/.bash_profile
elif [[ $SHELL_TYPE =~ .*zsh.* ]]; then
	echo "Installing..."
	echo "export PATH=\"$PATH:${CURR_PATH}\"" >> ~/.zshrc
	echo "source ${CURR_PATH}/.ol-completion.sh" >> ~/.zshrc
	source ~/.zshrc
fi

chmod +x ol
