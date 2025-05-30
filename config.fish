### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
end
### END OF VI MODE ###

if status is-interactive
    # Commands to run in interactive sessions can go here
end

### RANDOM COLOR SCRIPT ###
# The 'if' statement prevents colorscript from showing in 'fzf' previews.
if status is-interactive
    colorscript random
end

starship init fish | source
