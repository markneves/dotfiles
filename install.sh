#!/bin/bash
while true; do
  if [ "$1" == "--auto" ]; then
    install='Y'
  else
    read -p "Install ZGen? [y/N] " install
  fi
    case $install in
        [Yy]* )
            git clone https://github.com/tarjoilija/zgen.git $HOME/.zgen
            break;;
        [Nn]* ) break;;
        * ) break;;
    esac
done
echo
echo "Copying config files to homedir:"

files=(".zshrc" ".zsh_alias" ".screenrc" ".tmux.conf" ".vimrc")

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

echo
echo "[*] Complete"
