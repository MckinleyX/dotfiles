#!/bin/sh

cd $HOME

userresources=$XDG_CONFIG_HOME/X11/Xresources
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
$HOME/.local/bin/upd_wall
fix_touchscreen

numlockx & # Save numlock status
xmousepasteblock & # Disable middle click pasting
#discord --start-minimized &
#xkbcomp $HOME/.config/Xkbrc $DISPLAY #keyboard layout
picom -b
dunsnt &
mpc repeat on
if [ $(mpc playlist | wc -l) -eq 0 ]; then
	#mpc load radio
	mpc load fav && mpc shuffle 
fi
#thunderbird --profile $XDG_DATA_HOME/thunderbird/*.default-release > /dev/null &
#glava --audio=fifo --desktop
setxkbmap -model pc104 -layout us -variant dvp -option caps:backspace
xsetroot -cursor_name left_ptr
xset r rate 250 30
mkdir /tmp/Downloads
exec bspwm
