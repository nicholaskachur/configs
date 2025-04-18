# Modified version of the built-in dst theme.
# Should be placed in ~/.oh-my-zsh/themes and referenced in ~/.zshrc

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}
MACOS_HOSTNAME="$(scutil --get ComputerName)"

PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[green]%}%n%{$reset_color%}@%{$fg[yellow]%}$MACOS_HOSTNAME%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)
$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
