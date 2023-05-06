sudo apt-get install vim zsh tmux
pip3 install thefuck --user

### ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./zshrc ${HOME}/.zshrc

chsh -s $(which zsh)

### TMUX

sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ./tmux.conf ~/.tmux.conf

# Don't forget to press ctrl+a and shift+i to install the plugins

### VIM

cp ./vimrc ~/.vimrc

### FZF

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install