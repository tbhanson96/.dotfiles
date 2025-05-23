cd ~
mkdir .bash
cd .bash
git clone https://github.com/jimeh/git-aware-prompt.git
cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/tbhanson96/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/briancollins/vim-jst.git ~/.vim/bundle/vim-jst
echo "so ~/.dotfiles/vimrc" >> ~/.vimrc
echo "source-file ~/.dotfiles/tmux.conf" >> ~/.tmux.conf
echo "source ~/.dotfiles/bashrc" >> ~/.bashrc
echo -e "[include]\n\tpath = ~/.dotfiles/gitconfig" >> ~/.gitconfig
source ~/.dotfiles/bashrc
