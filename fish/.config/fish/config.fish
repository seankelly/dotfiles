for d in ~/local/bin ~/.cargo/bin
    if test -d $d; and not contains $d $PATH
        set PATH $d $PATH
    end
end

## git status
# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

### Functions
function fish_prompt
    set last_status $status
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal
    printf ' %s' (date '+%Y-%m-%d %H:%M:%S')
    printf '%s\n' (__fish_git_prompt)
    printf '%s@%s> ' (whoami) (hostname)
    #printf '> '
end
