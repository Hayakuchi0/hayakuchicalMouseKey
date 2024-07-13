#!/bin/sh

case ${1} in
"1" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool mousemove -x 0 -y -70;;#up
"2" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool mousemove -x 0 -y 70;;#down
"3" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool mousemove -x 200 -y 0;;#right
"4" )YDOTOOL_SOCKET="$HOME/.ydotool_socket" ${HOME}/.hayakuchicalMouseKey/bin/ydotool mousemove -x -200 -y 0;;#left
esac
