### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
