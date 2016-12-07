function updatevim
    set -lx SHELL (which sh)
    vim +PluginInstall! +PluginClean +qall
end
