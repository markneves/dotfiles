#!/bin/bash
while true; do
    read -p "Install Antigen? [y/N] " yn
    case $yn in
        [Yy]* )
          mkdir $HOME/.antigen
          curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen/antigen.zsh
            break;;
        [Nn]* ) break;;
        * ) break;;
    esac
done
echo
echo "Copying config files to homedir:"

files=(".zshrc" ".zsh_alias" ".screenrc" ".tmux.conf" ".vimrc" ".gitconfig")

for i in "${files[@]}"
do
    cp -v $i ~/
done

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    files=("${files[@]}" ".Xdefaults")
    echo -e "COLOR_MOD=\"--color\"\n$(cat ~/.zshrc)" > ~/.zshrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
    printf "COLOR_MOD=\"-G\"\n$(cat ~/.zshrc)" > ~/.zshrc
fi

if [[ "$HOSTNAME" == "workbox" ]]; then
    echo "source ~/.zsh-work" >> ~/.zshrc
fi

echo
echo "[*] Complete"
