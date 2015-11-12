function fish_user_key_bindings
    if status --is-login
     bind \x1d  forward-word
     bind \x1b  backward-word
    end
end
