# ATUIN
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"


# BINDINGS
bindkey '^[[1;5C' forward-word   # Ctrl+Right
bindkey '^[[1;5D' backward-word  # Ctrl+Left

# PROMPT
# Show: [user@last/3/dirs]
# %n = username
# %~ = cwd (with ~ for $HOME)
# ${(j:/:)${(s:/:)${...}[-3,-1]}} = join last 3 path segments with /
PROMPT='[%n@%3~] %# '
