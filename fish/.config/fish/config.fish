for d in ~/local/bin ~/.cargo/bin ~/.gem/bin
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

# FreeBSD before 13.0 doesn't have tmux entries in its termcap. Fall back to
# xterm-256color if running as tmux-256color.
if test (uname -s) = FreeBSD && test (uname -K) -lt 1300000 && test $TERM = tmux-256color ;
    set -x TERM xterm-256color
end

### Functions
function fish_prompt
    set -l last_pipestatus $pipestatus
    set -l normal (set_color normal)

    # Different prompt and cwd color for root.
    set -l color_cwd $fish_color_cwd
    set -l prompt '>'
    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set prompt '#'
    end

    # Use different color hostname when running over SSH.
    set -l color_host $fish_color_host
    if set -q SSH_TTY
        set color_host $fish_color_host_remote
    end

    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

    echo -s (set_color $color_cwd) (prompt_pwd) $normal ' ' (date '+%Y-%m-%d %H:%M:%S') (fish_vcs_prompt)
    echo -n -s (set_color $fish_color_user) "$USER" $normal @ (set_color $color_host) (prompt_hostname) $normal $prompt_status $prompt " "
end
