if not set -q TMUX 
    exec tmux
end

set --export PATH $PATH ~/.cargo/bin
set --export PATH $PATH /usr/local/go/bin
set --export EDITOR /usr/bin/nvim

# starship prompt 
starship init fish | source

function ls
    exa $argv
end

function vim
    nvim $argv
end

# Greeting
function fish_greeting
end
