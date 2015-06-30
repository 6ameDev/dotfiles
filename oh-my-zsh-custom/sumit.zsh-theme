function user_computer {
  echo "%{\e[0;30;47m%}user:%n%{$reset_color%}"
}

function current_directory {
  echo "%{\e[36m%}%~%{$reset_color%}"
}

function prompt_char() {
  echo "%{$fg[cyan]%}$%{$reset_color%}"
}

PROMPT=$'$(user_computer) $(git_prompt_info) \n$(current_directory) $(prompt_char) %{$reset_color%}'
RPROMPT='%{$fg[cyan]%}%p $(current_ruby)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[white]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"

export LSCOLORS=bxfxcxdxbxegedabagacad
