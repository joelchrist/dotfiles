path+=('/home/joelchrist/.bin')

export PATH

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
