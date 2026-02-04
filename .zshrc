autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

# ATUIN
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"


# BINDINGS
bindkey '^[[1;5C' forward-word   # Ctrl+Right
bindkey '^[[1;5D' backward-word  # Ctrl+Left

# PROMPT
setopt PROMPT_SUBST
PROMPT='[%n@%F{blue}%3~ %F{red}${vcs_info_msg_0_}%]%f# '
