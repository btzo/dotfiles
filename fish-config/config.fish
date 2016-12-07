. "$HOME/.config/fish/functions/z.fish"
. "$HOME/.config/fish/functions/fish_prompt.fish"
. "$HOME/.config/fish/functions/functions.fish"
. "$HOME/.config/fish/functions/updatevim.fish"

eval (python -m virtualfish compat_aliases)

#Add alias for git
alias st='git status'
alias di='git diff'
alias push='git push'
alias pull='git pull'
alias remote='git remote'
alias map='gitup map'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
