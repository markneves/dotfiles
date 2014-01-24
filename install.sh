#!/bin/sh
while true; do
    read -p "Install oh-my-zsh and plugins? [y/N] " yn
    case $yn in
        [Yy]* ) 
            curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; 
            git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/zsh-syntax-highlighting;
            git clone git://github.com/tarruda/zsh-autosuggestions ~/.oh-my-zsh/custom/zsh-autosuggestions;
            curl https://raw.github.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh > ~/.oh-my-zsh/custom/zsh-history-substring-search.zsh
            break;;
        [Nn]* ) break;;
        * ) break;;
    esac
done
echo
echo "Copying config files to homedir:"
cp -v themes/mark2.zsh-theme ~/.oh-my-zsh/themes/

files=(".zshrc" ".screenrc" ".tmux.conf" ".vimrc" ".gitconfig" ".Xdefaults")
for i in "${files[@]}"
do
    cp -v $i ~/
done
echo
echo "[*] Complete"
