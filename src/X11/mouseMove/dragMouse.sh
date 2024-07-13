#!/bin/sh

here=`dirname ${0}`
here=`cd ${here};pwd`
readDir=${here}/dragLocate
mkdir -p ${readDir}
${here}/setDragLocate.sh 2

startX=`cat ${readDir}/START_X.txt`
endX=`cat ${readDir}/END_X.txt`
startY=`cat ${readDir}/START_Y.txt`
endY=`cat ${readDir}/END_Y.txt`
x=`expr ${endX} - ${startX}`
y=`expr ${endY} - ${startY}`
echo $x
echo $y

xte -x$DISPLAY "mousemove ${startX} ${startY}"
xte -x$DISPLAY "mousedown 1"
xte -x$DISPLAY "usleep 1000"
if [ ${y} -le 0 ];then
	while [ ${y} -le 0 ]
	do
		xte -x$DISPLAY "mousermove 0 -5"
		y=`expr ${y} + 5`
	done
else
	while [ 0 -le ${y} ]
	do
		xte -x$DISPLAY "mousermove 0 5"
		y=`expr ${y} - 5`
	done

fi
if [ ${x} -le 0 ];then
	while [ ${x} -le 0 ]
	do
		xte -x$DISPLAY "mousermove -5 0"
		x=`expr ${x} + 5`
	done
else
	while [ 0 -le ${x} ]
	do
		xte -x$DISPLAY "mousermove 5 0"
		x=`expr ${x} - 5`
	done
fi

xte -x$DISPLAY "mouseup 1"
