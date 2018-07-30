cd ~
mkdir .bash
cd .bash
git clone git://github.com/jimeh/git-aware-prompt.git
cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
echo "so ~/dotfiles/vimrc" >> ~/.vimrc
echo "source-file ~/dotfiles/tmux.conf" >> ~/.tmux.conf
echo "source ~/dotfiles/bashrc" >> ~/.bashrc
echo -e "[include]\n\tpath = ~/dotfiles/gitconfig" >> ~/.gitconfig
source ~/dotfiles/bashrc
