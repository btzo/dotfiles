# Add the `ctrl` + `[` and `ctrl` + `]` key bindings to 
# move backward and forward respectively between words in command line text
function fish_user_key_bindings
    if status --is-login
     bind \x1d  forward-word
     bind \x1b  backward-word
    end
end
