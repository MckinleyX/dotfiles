export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export PATH=$PATH:$HOME/.local/bin
export TEXMFHOME=$XDG_DATA_HOME/texmf
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PYTHONPATH=$XDG_DATA_HOME/python
export HOSTNAME=$(hostnamectl hostname)
export WINEPREFIX=$HOME/.local/share/wine

alias ls='ls --color=auto -h'
if [ -f "/usr/bin/bat" ]; then
	alias cat='bat'
fi
alias tmux='tmux -2'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias sudo='doas'
alias emacs='emacs -nw'
alias FAHClient="FAHClient --chdir=$HOME/.local/share/foldingathome"
alias auracle='auracle --chdir=$HOME/.aur_packages'
alias ghc='ghc -dynamic'
alias when='when --auto_pm=9 --items_today=bold,fggreen --past=0'
alias von='python -m von'
alias tlmgr='tllocalmgr'
alias trans='trans -s fr -t zh'
alias zathura='zathura --fork'
alias 'g++'='g++ -o prog'
