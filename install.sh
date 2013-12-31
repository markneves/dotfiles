#!/bin/sh
files=(".zshrc" ".screenrc" ".vimrc" ".Xdefaults" ".xprofile")
for i in "${files[@]}"
do
	cp -v $i ~/
done

while true; do
    read -p "Install oh-my-zsh and plugins? [y/N] " yn
    case $yn in
        [Yy]* ) 
            curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; 
            git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/zsh-syntax-highlighting;
            git clone git://github.com/tarruda/zsh-autosuggestions ~/.oh-my-zsh/custom/zsh-autosuggestions;
            curl https://raw.github.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh > ~/.oh-my-zsh/custom/zsh-history-substring-search.zsh
            break;;
        [Nn]* ) exit;;
        * ) exit;;
    esac
done
cp -v themes/mark2.zsh-theme ~/.oh-my-zsh/themes/

echo
echo "[*] Complete"
