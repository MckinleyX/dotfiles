#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx
fcitx5 -d -r


#feh --bg-scale $HOME/.wallpapers/wallhaven-kw7d37_1920x1080.png
feh --bg-scale --randomize $HOME/.wallpapers/*
xinput disable "pointer:ELAN2514:00 04F3:29CE" #disable touchscreen since this computer is bad with palm detection
#xinput --map-to-output "pointer:ELAN2514:00 04F3:29CE Stylus Pen (0)" eDP #Make sure the stylus maps only to the laptop screen
#xinput --map-to-output "pointer:ELAN2514:00 04F3:29CE Stylus Eraser (0)" eDP 

numlockx & # Save numlock status
xmousepasteblock & # Disable middle click pasting
discord --start-minimized &
#xkbcomp $HOME/.config/Xkbrc $DISPLAY #keyboard layout
picom -b
dunsnt &
#stretchly &
if [ $(mpc playlist | wc -l) -eq 0 ]; then
	mpc clear && mpc load dvorak && mpc shuffle && mpc play && mpc pause
fi
thunderbird --profile $XDG_DATA_HOME/thunderbird/*.default-release > /dev/null &
#glava --audio=fifo --desktop
exec bspwm
