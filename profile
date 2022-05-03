export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export PATH=$PATH:$XDG_DATA_HOME/gem/ruby/3.0.0/bin
export PATH=$PATH:$HOME/.local/bin
export TEXMFHOME=$XDG_DATA_HOME/texmf
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PYTHONPATH=$XDG_DATA_HOME/python
export HOSTNAME=$(hostname)
export WINEPREFIX=$HOME/.local/share/wine
export GEM_HOME=$XDG_DATA_HOME/gem
export QT_QPA_PLATFORMTHEME=qt5ct

alias ls='ls --color=auto -h'
if [ -f "/usr/bin/bat" ]; then
	alias cat='bat'
fi
alias tmux='tmux -2'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias trm='trash-put'
alias sudoedit='doas vi'
alias emacs='emacs -nw'
alias FAHClient="FAHClient --chdir=$HOME/.local/share/foldingathome"
alias auracle='auracle --chdir=$HOME/.aur_packages'
alias ghc='ghc -dynamic'
alias when='when --auto_pm=8 --items_today=bold,fggreen --past=0'
alias von='python -m von'
alias tlmgr='tllocalmgr'
alias zh2en='trans -s zh -t en'
alias en2zh='trans -s en -t zh'
alias zathura='zathura --fork'
alias 'g++'='g++ -o prog -Wall'
alias bc='bc -l'
alias 'pacman -R'='pacman -Rs'

alias df='df -h'
alias free='free -h'
alias du='du -h'

if [[ $TERM == "linux" && $(who | wc -l) == 1  ]]; then
	startx
fi
