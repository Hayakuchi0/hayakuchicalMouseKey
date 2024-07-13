#!/bin/sh

here=`dirname ${0}`
here=`cd ${here};pwd`
writeDir=${here}/dragLocate
mkdir -p ${writeDir}

startX=`xdotool getmouselocation | sed -e "s/x://" | sed -e "s/ [a-zA-Z0-9: ]*//g"`
endX=`xdotool getmouselocation | sed -e "s/x://" | sed -e "s/ [a-zA-Z0-9: ]*//g"`
startY=`xdotool getmouselocation | sed -e "s/[a-zA-Z0-9: ]*y://" | sed -e "s/ [a-zA-Z0-9: ]*//g"`
endY=`xdotool getmouselocation | sed -e "s/[a-zA-Z0-9: ]*y://" | sed -e "s/ [a-zA-Z0-9: ]*//g"`
case ${1} in
"1" )
	echo ${startX}
	echo ${startY}
	echo ${startX} > ${writeDir}/START_X.txt
	echo ${startY} > ${writeDir}/START_Y.txt
;;
"2" )
	echo ${endX}
	echo ${endY}
	echo ${endX} > ${writeDir}/END_X.txt
	echo ${endY} > ${writeDir}/END_Y.txt
;;
esac
