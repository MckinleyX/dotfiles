export EDITOR=nvim
#xdg stuff is in /etc/profile
export PATH=$PATH:$XDG_DATA_HOME/gem/ruby/3.0.0/bin
#export PATH=$PATH:$HOME/.local/bin
export HOSTNAME=$(hostname)
export QT_QPA_PLATFORMTHEME=qt5ct
export MOZ_USE_XINPUT2=1

export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PYTHONPATH=$XDG_DATA_HOME/python
export WINEPREFIX=$XDG_DATA_HOME/wine
export GEM_HOME=$XDG_DATA_HOME/gem
export CALCHISTFILE=$XDG_STATE_HOME/calc_history
export CARGO_HOME=$XDG_DATA_HOME/cargo
export GOPATH=$XDG_DATA_HOME/go
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export _Z_DATA=$XDG_STATE_HOME/z
export SPACEMACSDIR=$XDG_CONFIG_HOME/spacemacs

alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

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
alias auracle="auracle --chdir=$XDG_CACHE_HOME/aur"
alias ghc='ghc -dynamic'
alias when='when --auto_pm=8 --items_today_style=bold,fggreen --past=0'
alias von='python -m von'
alias tlmgr='tllocalmgr'
alias zathura='zathura --fork'
alias 'g++'='g++ -o prog -Wall'
alias bc='bc -l'
alias 'pacman -R'='pacman -Rs'
alias vim='vim -i NONE'

alias df='df -h'
alias free='free -h'
alias du='du -h'

if [[ $TERM == "linux" && $(who | wc -l) == 1  ]]; then
	startx
fi
