#!/bin/sh
SOCKET_PATH=${HOME}/.ydotool_socket
rm -f ${SOCKET_PATH}
YDOTOOLD_SOCKET_OWN_ID=`id -u`
YDOTOOLD_SOCKET_OWN_GROUP=`id -g`
sudo ${HOME}/.hayakuchicalMouseKey/bin/ydotoold --socket-path="${SOCKET_PATH}" --socket-own="${YDOTOOLD_SOCKET_OWN_ID}:${YDOTOOLD_SOCKET_OWN_GROUP}"
rm -f ${SOCKET_PATH}
