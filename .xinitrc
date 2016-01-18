#load Xresources to theme urxvt
xrdb -merge ~/.Xresources

#remap search key to super_L
xmodmap -e "keycode 133 = Super_L"

#set background color
hsetroot -solid "#2C3E50" &

#launch hotkey daemon
sxhkd -c /home/poco/.config/sxhkd/sxhkdrc &

#launch window manager
exec bspwm

