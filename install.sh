cd ~
mkdir .bash
cd .bash
git clone git://github.com/jimeh/git-aware-prompt.git
cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
echo "so ~/dotfiles/vimrc" >> ~/.vimrc
echo "source-file ~/dotfiles/tmux.conf" >> ~/.tmux.conf
echo "source ~/dotfiles/bashrc" >> ~/.bashrc
echo -e "[include]\n\tpath = ~/dotfiles/gitconfig" >> ~/.gitconfig
source ~/dotfiles/bashrc
