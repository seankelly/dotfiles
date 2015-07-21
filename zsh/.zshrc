# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sean/.zshrc'

export LESS='-FIMRX'
export PAGER='less'
export EDITOR='vim'
export BLOCKSIZE=K
export LANG='en_US.UTF-8'

for f in $HOME/.zsh/*.zsh ; do
    [[ -e $f ]] && . $f
done

setopt HIST_IGNORE_DUPS

autoload -U promptinit
promptinit
prompt walters

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ $TERM == screen ]]; then
    export TERM=screen-256color
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib
export PATH=$PATH:$HOME/local/bin
