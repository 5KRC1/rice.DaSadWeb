#!/bin/sh

userresources=$XDG_CONFIG_HOME/X11/xresources
usermodmap=$XDG_CONFIG_HOME/X11/xmodmap
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

# Keyboard and Display
setxkbmap -layout us -variant dvorak -option caps:escape &
xsetroot -cursor_name left_ptr
picom -f &
# store prefered setup variable
if [ ! -f /tmp/single_monitor.txt ];
then
    echo "false" > /tmp/single_monitor.txt
fi

# polkit
/usr/bin/polkit-dumb-agent &

# Optimus-Manager and BSPWM
/usr/bin/prime-offload
bspwm
sudo /usr/bin/prime-switch

# Kill Lemonbar
killall -q panel &
