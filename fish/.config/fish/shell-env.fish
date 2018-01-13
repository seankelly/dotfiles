set -Ux BLOCKSIZE K
set -Ux EDITOR 'vim'
if test -d /usr/home/sean
    set -Ux HOME /usr/home/sean
end
set -Ux LANG 'en_US.UTF-8'
set -Ux LESS '-FIMRX'
set -Ux PAGER 'less'
# It seems having CLICOLOR set is sufficient to colorize ls output.
set -Ux CLICOLOR yes
