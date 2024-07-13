#!/bin/sh

case ${1} in
"1" )xte -x$DISPLAY "mouseclick 1";;
"2" )xte -X$DISPLAY "mouseclick 3";;
esac
