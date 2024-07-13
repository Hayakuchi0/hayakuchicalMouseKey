#!/bin/sh

case ${1} in
"1" ) xte -x$DISPLAY "mousermove 0 -70";;#up
"2" ) xte -x$DISPLAY "mousermove 0 70";;#down
"3" ) xte -x$DISPLAY "mousermove 200 0";;#right
"4" ) xte -x$DISPLAY "mousermove -200 0";;#left
esac

