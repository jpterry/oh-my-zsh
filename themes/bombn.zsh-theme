zmodload zsh/regex
machine_name_string () {
    if [[ `hostname` -regex-match ^SirIsaac.* ]] &&
	echo "" || echo "%m"
}


PROMPT='[%F{green}%n@$(machine_name_string) %F{green}%2c%f] '

RPROMPT='$(git_prompt_info) %F{cyan}%D{%L:%M} %F{yellow}%D{%p}%f'


#PROMPT='%F{green}%2c%F{blue} [%f '


ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{cyan}±%f|%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f|%b"
#ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}⚡%f"
#ZSH_THEME_GIT_PROMPT_CLEAN=""
