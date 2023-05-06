sudo apt-get install vim zsh tmux

### ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./zshrc ${HOME}/.zshrc

chsh -s $(which zsh)

### TMUX

sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mv tmux ~/.tmux.conf

# Don't forget to press ctrl+a and shift+i to install the plugins

### VIM

mv vimrc ~/.vimrc