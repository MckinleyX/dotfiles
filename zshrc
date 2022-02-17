autoload -Uz compinit promptinit vcs_info
compinit
promptinit

[[ -f ~/.profile ]] && . ~/.profile #If ~/.profile exists then source it

zstyle ':completion:*' menu select

function prompt_char { 
	if [ $UID -eq 0 ]; then echo '#'; else echo '$'; fi
}
zstyle ':vcs_info:*' actionformats \
    '%F{9}(%f%s%F{9})%F{3}-%F{9}[%F{2}%b%F{3}|%F{1}%a%F{9}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{9}(%f%s%F{9})%F{3}-%F{9}[%F{2}%b%F{9}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

precmd () { vcs_info }
setopt prompt_subst
#PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '
PROMPT='[%B%F{green}%n@%m %F{blue}%1~%b%f]$(prompt_char) '
RPROMPT='${vcs_info_msg_0_}'

SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zsh/history
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt NO_HIST_BEEP
setopt SHARE_HISTORY
unsetopt beep
bindkey -v #vi keybindings
bindkey '' history-incremental-search-backward


unsetopt beep
setopt HIST_IGNORE_SPACE
bindkey -v #vi keybindings
bindkey '' history-incremental-search-backward

alias zshconfig="$EDITOR ~/.zshrc"

#Startup stuff


#newsboat --url-file="$XDG_CONFIG_HOME/newsboat/arch" --execute=reload --execute=print-unread
#neomutt -Z
bold=$(tput bold)
normal=$(tput sgr0)
read rows cols < <(stty size)
if [[ "$HOSTNAME" = "dream" && $cols -gt 70 ]]; then
	task next
	when w --noheader --items_today=bold,fggreen --past=0
	bold=$(tput bold)
	normal=$(tput sgr0)
fi

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
