# modified version of afowler theme

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

function zle-line-init zle-keymap-select {
  VIMODE='input'
  VIMODE="${${KEYMAP/vicmd/normal}/(main|viins)/input}"
  RPS1="${return_code}"
  PROMPT='%m %{${fg_bold[blue]}%}:: %{$reset_color%}%{${fg[green]}%}%3~ $(git_prompt_info)$ZSH_THEME_GIT_PROMPT_PREFIX$VIMODE$ZSH_THEME_GIT_PROMPT_SUFFIX%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
