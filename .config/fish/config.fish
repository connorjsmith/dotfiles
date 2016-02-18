set -x EDITOR "emacsclient -t"
set -U SXHKD_SHELL /bin/bash
set -x XDG_CONFIG_HOME "/home/connor/.config"

# Colorful man pages
# from http://pastie.org/pastes/206041/text
setenv -x LESS_TERMCAP_mb (set_color -o red)
setenv -x LESS_TERMCAP_md (set_color -o red)
setenv -x LESS_TERMCAP_me (set_color normal)
setenv -x LESS_TERMCAP_se (set_color normal)
setenv -x LESS_TERMCAP_so (set_color -b blue -o yellow)
setenv -x LESS_TERMCAP_ue (set_color normal)
setenv -x LESS_TERMCAP_us (set_color -o green)

# use a daemon for emacs
alias e="emacsclient -c -t"
alias emacs="emacsclient -c"
alias proc="ps -aux| grep"
alias restart_wifi="sudo wifi off;sleep 1;sudo wifi on"