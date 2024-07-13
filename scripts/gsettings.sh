#!/bin/sh

mouseMoveDir="${1}/mouseMove/"

keybinging='/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings'
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['${keybinding}/custom0/', '${keybinding}/custom1/', '${keybinding}/custom2/', '${keybinding}/custom3/', '${keybinding}/custom4/', '${keybinding}/custom5/', '${keybinding}/custom6/', '${keybinding}/custom7/', '${keybinding}/custom8/', '${keybinding}/custom9/', '${keybinding}/custom10/', '${keybinding}/custom11/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom0/ name 'mouseQuickUp'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom0/ command "${mouseMoveDir}quickMouse.sh 1"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom0/ binding 'KP_5'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom1/ name 'mouseUp'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom1/ command "${mouseMoveDir}moveMouse.sh 1"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom1/ binding '<Primary>KP_5'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom2/ name 'mouseQuickDown'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom2/ command "${mouseMoveDir}quickMouse.sh 2"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom2/ binding 'KP_2'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom3/ name 'mouseUp'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom3/ command "${mouseMoveDir}moveMouse.sh 2"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom3/ binding '<Primary>KP_2'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom4/ name 'mouseQuickRight'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom4/ command "${mouseMoveDir}quickMouse.sh 3"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom4/ binding 'KP_3'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom5/ name 'mouseRight'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom5/ command "${mouseMoveDir}moveMouse.sh 3"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom5/ binding '<Primary>KP_3'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom6/ name 'mouseQuickLeft'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom6/ command "${mouseMoveDir}quickMouse.sh 4"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom6/ binding 'KP_1'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom7/ name 'mouseLeft'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom7/ command "${mouseMoveDir}moveMouse.sh 4"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom7/ binding '<Primary>KP_1'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom8/ name 'click'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom8/ command "${mouseMoveDir}ClickMouse.sh 1"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom8/ binding 'KP_0'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom9/ name 'clickRight'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom9/ command "${mouseMoveDir}ClickMouse.sh 2"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom9/ binding 'KP_6'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom8/ name 'click'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom10/ name 'holdStart'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom10/ command "${mouseMoveDir}setDragLocate.sh 1"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom10/ binding 'KP_9'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom11/ name 'holdEnd'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom11/ command "${mouseMoveDir}dragMouse.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:${keybinding}/custom11/ binding 'KP_8'
