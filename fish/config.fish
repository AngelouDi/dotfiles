if status is-interactive
  neofetch
  alias vim="nvim"
  alias matlab="/home/mitsos/MATLAB/R2023b/bin/matlab"
  alias icat="kitten icat"
  alias s="kitten ssh"
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

# Created by `pipx` on 2023-07-08 11:22:39
set PATH $PATH /home/mitsos/.local/bin
