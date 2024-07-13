#!/bin/sh

case ${1} in
"1" ) xte -x$DISPLAY "mousermove 0 -15";;#up
"2" ) xte -x$DISPLAY "mousermove 0 15";;#down
"3" ) xte -x$DISPLAY "mousermove 15 0";;#right
"4" ) xte -x$DISPLAY "mousermove -15 0";;#left
esac

