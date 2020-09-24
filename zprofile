emulate sh -c 'source /etc/profile'
#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#    startx
#fi

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec sway
fi
