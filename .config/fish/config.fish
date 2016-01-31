# add /usr/local/bin to path
set -g -x PATH /usr/local/bin $PATH

# set nvm path/ node and nvm env vars
set -x NVM_DIR ~/.nvm
source $NVM_DIR/nvm.fish

# remove fish greeting
set -g -x fish_greeting ''

# COLOR SCHEME:
########################

# load colors
eval sh $HOME/.config/theme/base16-shell/base16-flat.dark.sh

# set prompt colors 
set -g fish_color_normal      base0
set -g fish_color_command     base0
set -g fish_color_quote       cyan
set -g fish_color_redirection base0
set -g fish_color_end         base0
set -g fish_color_error       red
set -g fish_color_param       blue
set -g fish_color_comment     base01
set -g fish_color_match       cyan
set -g fish_color_search_match "--background=$base02"
set -g fish_color_operator    orange
set -g fish_color_escape      cyan
set -g fish_color_hostname    cyan
set -g fish_color_cwd         yellow
set -g fish_color_git         green

# ALIASES
########################

# x resolution
alias xresolution "xdpyinfo  | grep 'dimensions:' | sed -n -e 's/dimensions: *\([0-9]*\)x[0-9]* pixels.*/\1/p' | sed 's/ //g'"
# y resolution
alias yresolution "xdpyinfo  | grep 'dimensions:' | sed -n -e 's/dimensions: *[0-9]*x\([0-9]*\) pixels.*/\1/p' | sed 's/ //g'"
