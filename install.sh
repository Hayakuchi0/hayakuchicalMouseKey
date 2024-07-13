#!/bin/sh

here=`dirname ${0}`
here=`cd ${here};pwd`
cd ${here}

APP_DIR=${HOME}/.hayakuchicalMouseKey
rm -rf ${APP_DIR}
mkdir -p ${APP_DIR}
if [ $XDG_SESSION_TYPE = "wayland" ];then
	cp -r src/Wayland/mouseMove ${APP_DIR}
else
	cp -r src/X11/mouseMove ${APP_DIR}
fi

mkdir -p ${APP_DIR}/bin
cd ${APP_DIR}/bin
curl -o ydotool -L https://github.com/ReimuNotMoe/ydotool/releases/download/v1.0.4/ydotool-release-ubuntu-latest
curl -o ydotoold -L https://github.com/ReimuNotMoe/ydotool/releases/download/v1.0.4/ydotoold-release-ubuntu-latest
chmod 755 ydotool
chmod 755 ydotoold
YDOTOOLD_PATH=`pwd`/ydotoold
cd ${here}

SERVICE_DIR=${HOME}/.config/systemd/user
mkdir -p SERVICE_DIR
cp ${here}/src/ydotoold_forhmk.service ${SERVICE_DIR}
cp ${here}/src/bootYdotoold.sh ${APP_DIR}

SUDOERS_PATH=/etc/sudoers.d/hayakuchicalMouseKey
echo "need sudo because add sudoers ydotoold at ${YDOTOOLD_PATH} in ${SUDOERS_PATH}"
sudo sh -c "echo \"${USER} ALL=(root) NOPASSWD: ${YDOTOOLD_PATH}\" >> ${SUDOERS_PATH}"

cd ${here}
./scripts/gsettings.sh ${APP_DIR}
systemctl --user enable ydotoold_forhmk.service
echo "need sudo because ydotoold boot on login"
sudo loginctl enable-linger ${USER}
systemctl --user start ydotoold_forhmk.service 
