export BLOCKSIZE=K
export EDITOR='vim'
[[ -d /usr/home/sean ]] && export HOME='/usr/home/sean'
export LANG='en_US.UTF-8'
export LESS='-FIMRX'
export PAGER='less'
# It seems having CLICOLOR set is sufficient to colorize ls output.
export CLICOLOR=yes
export PATH=$PATH:$HOME/local/bin
[[ -d ~/.cargo/bin ]] && export PATH="$HOME/.cargo/bin:$PATH"
