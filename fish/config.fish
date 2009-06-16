set -x EDITOR vim

# clear out PATH first
if status --is-login
    set -l tmp_path
    for path in $PATH;
        if test -d $path;
            set tmp_path $tmp_path $path
        end
    end
    set PATH $tmp_path

    set -l local_path $HOME/local/bin $HOME/local/games 

    set PATH $local_path $PATH
end
