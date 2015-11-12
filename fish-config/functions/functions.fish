function fish_user_key_bindings
    if status --is-login
     bind \x1b forward-word
     bind \x1d  backward-word
    end
end
