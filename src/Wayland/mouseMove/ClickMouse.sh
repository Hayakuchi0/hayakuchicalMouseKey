#!/bin/sh

case ${1} in
"1" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool click 0xC0;;
"2" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool click 0xC1;;
esac
