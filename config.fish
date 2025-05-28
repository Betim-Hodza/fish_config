if status is-interactive
    # Commands to run in interactive sessions can go here
    pokemon-colorscripts -r  --no-title
end

# Disable welcome message
set fish_greeting

# Colorize man pages (bat)
command -v bat &>/dev/null && export MANPAGER="sh -c \"col -bx | bat -l man -p\""
command -v bat &>/dev/null && export MANROFFOPT="-c"

# Source user aliases
test -f "$HOME/.aliases" && source "$HOME/.aliases"

# Init zoxide (goated dir algorith)
command -v zoxide &>/dev/null && zoxide init fish | source

# Init starship promt (except tty)
if not tty | string match -q "/dev/tty*"
    and command -v starship >/dev/null
    starship init fish | source
end


# alias
