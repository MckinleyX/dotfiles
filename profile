export EDITOR=nvim
#xdg stuff is in /etc/profile
export PATH=$PATH:$XDG_DATA_HOME/gem/ruby/3.0.0/bin
#export PATH=$PATH:$HOME/.local/bin
export HOSTNAME=$(hostname)
export QT_QPA_PLATFORMTHEME=qt5ct
export BAT_THEME="Catppuccin-macchiato"
#export MOZ_USE_XINPUT2=1

export ANDROID_HOME="$XDG_DATA_HOME"/android
export ASYMPTOTE_HOME="$XDG_CONFIG_HOME"/asymptote
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export GOPATH=$XDG_DATA_HOME/go
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
export PYTHONPATH=$XDG_DATA_HOME/python
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export WINEPREFIX=$XDG_DATA_HOME/wine
export GEM_HOME=$XDG_DATA_HOME/gem
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CALCHISTFILE=$XDG_STATE_HOME/calc_history
export CARGO_HOME=$XDG_DATA_HOME/cargo
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export _Z_DATA=$XDG_STATE_HOME/z
export SPACEMACSDIR=$XDG_CONFIG_HOME/spacemacs
export MAXIMA_USERDIR="$XDG_CONFIG_HOME"/maxima
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export W3M_DIR="$XDG_DATA_HOME"/w3m
export AUR=/var/cache/pacman/aur
#export http_proxy="socks5://splash:1080"
#export https_proxy=$http_proxy

# For Arduino Makefile
export ARDUINO_DIR=/usr/share/arduino
export ARDMK_DIR=/usr/share/arduino
export AVR_TOOLS_DIR=/usr
export AVRDUDE=/usr/bin/avrdude
export AVRDUDE_CONF=/etc/avrdude.conf
export ALTERNATE_CORE_PATH=/usr/share/arduino/hardware/archlinux-arduino/avr


alias wget="wget --hsts-file=$XDG_STATE_HOME/wget-hsts"
alias units="units --history $XDG_STATE_HOME/wget-hsts"

alias ls='ls --color=auto -h'
if [ -f "/usr/bin/bat" ]; then
	alias cat='bat --theme="Catppuccin-mocha"'
fi
alias auracle="auracle --chdir=$AUR"
alias tmux='tmux -2'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias feh='feh --no-fehbg'
alias sudoedit='doas vi'
alias emacs='emacs -nw'
alias FAHClient="FAHClient --chdir=$HOME/.local/share/foldingathome"
alias ghc='ghc -dynamic'
alias tlmgr='tllocalmgr'
alias von='python -m von'
alias when='when --auto_pm=8 --items_today_style=bold,fggreen --past=0'
alias xdg-ninja="xdg-ninja --skip-unsupported"
alias zathura='zathura --fork'
alias 'g++'='g++ -o prog -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wduplicated-cond -Wlogical-op -O2'
alias bc='bc -l'
alias 'pacman -R'='pacman -Rs'
alias vim='vim -i NONE'
alias startx="startx $XINITRC"
alias packettracer="HOME=/home/faefeyfa/school/cisco packettracer"
alias maxima="rlwrap maxima"
alias ussh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -q"
alias proxify='http_proxy=socks5://splash:1080 https_proxy=socks5://splash:1080'
alias pdiscord='proxify discord --proxy-server="socks5://splash:1080" & disown && exit'

alias df='df -h'
alias free='free -h'
alias du='du -h'

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
		startx
fi
