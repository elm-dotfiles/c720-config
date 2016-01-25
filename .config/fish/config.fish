# add /usr/local/bin to path
set -g -x PATH /usr/local/bin $PATH

# remove fish greeting
set -g -x fish_greeting ''

# set 256 color term
set fish_term256 1

# color scheme:
eval sh $HOME/.config/theme/base16-shell/base16-flat.dark.sh

# ALIASES
########################

# x resolution
alias xresolution "xdpyinfo  | grep 'dimensions:' | sed -n -e 's/dimensions: *\([0-9]*\)x[0-9]* pixels.*/\1/p' | sed 's/ //g'"
# y resolution
alias yresolution "xdpyinfo  | grep 'dimensions:' | sed -n -e 's/dimensions: *[0-9]*x\([0-9]*\) pixels.*/\1/p' | sed 's/ //g'"
