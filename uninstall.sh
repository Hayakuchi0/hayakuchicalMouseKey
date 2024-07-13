#!/bin/sh

here=`dirname ${0};pwd`
cd ${here}

APP_DIR=${HOME}/.hayakuchicalMouseKey

systemctl --user stop ydotoold_forhmk.service
systemctl --user disable ydotoold_forhmk.service

SUDOERS_PATH=/etc/sudoers.d/hayakuchicalMouseKey
echo "need sudo because remove ${SUDOERS_PATH}"
sudo rm -f ${SUDOERS_PATH}

SERVICE_DIR=${HOME}/.config/systemd/user
rm -f ${SERCICE_DIR}/ydotoold_forhmk.service

rm -rf ${APP_DIR}
