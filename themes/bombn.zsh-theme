
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'
zstyle ':vcs_info:*' actionformats "%F{cyan}±%f[%F{magenta}%b%f|%F{yellow}⚛%a⚛%f]"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

zstyle ':vcs_info:*' formats '%F{cyan}±%f[%u%c%F{magenta}%b%f%m]'

precmd () {
    vcs_info
}

setopt prompt_subst

PROMPT='%F{cyan}%2c%f %B%F{yellow}⚡%f%b '
RPROMPT='${vcs_info_msg_0_}'
