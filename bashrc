# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias tmux='tmux -2'
alias sshews='ssh tbhanso2@linux.ews.illinois.edu'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias sshhome='ssh tim@timbhanson.com'
alias sshfshome='mkdir -p ./home_mnt && sshfs tim@timbhanson.com:/home/tim/ home_mnt/'
alias rsync_eb='rsync -azv /home/tim/Documents/Ebooks/ tim@timbhanson.com:~/Documents/Ebooks/'
alias rsync_tb='rsync -azv /home/tim/Documents/Textbooks/ tim@timbhanson.com:~/Documents/Textbooks/'

# functions

function speed_test () {
    wget -O /dev/null --show-progress http://212.183.159.230/1GB.zip
}

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

set -o vi
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
TERM=xterm-256color
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PATH=$PATH:$HOME/bin
export MYVIMRC=$HOME/dotfiles/bashrc
export TB=$HOME/Documents/Textbooks
export bashrc=$HOME/dotfiles/bashrc
export vimrc=$HOME/dotfiles/vimrc
export TEXMFHOME=$HOME/.texmf
export EDITOR=vim

export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$bldred\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

