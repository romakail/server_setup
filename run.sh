#!/bin/bash

set -exo pipefail

### ZSH

cur_folder=$(pwd)

wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir ~/.zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C ~/.zsh --strip-components 1
cd ~/.zsh


./configure --prefix=${HOME}/.zsh
make
make install

export PATH=$PATH:~/.zsh/Src

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# compaudit | xargs chmod g-w,o-w

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cd ${cur_folder}
cp ./zshrc ~/.zshrc

# chsh -s $(which zsh)

### TMUX

# sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ./tmux.conf ~/.tmux.conf

# Don't forget to press ctrl+a and shift+i to install the plugins

### VIM

cp ./vimrc ~/.vimrc

### FZF

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
echo "~/.fzf/install" | /home/romakail/.zsh/Src/zsh


