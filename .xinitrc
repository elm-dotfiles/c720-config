# change search key to super
xmodmap -e "keycode 133 = Super_L"

# map left shift to esc on standalone
xcape -e 'Shift_L=Escape'

# merge and load Xresources
xrdb merge ~/.Xresources

# set background color
hsetroot -solid "#2C3E50" &

# start hotkey daemon
sxhkd &

# start window manager
exec bspwm
