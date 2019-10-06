#!/bin/bash

sudo apt-get -y install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox fbi
sudo apt-get -y install --no-install-recommends chromium-browser
sudo cp /boot/openbox-autostart /etc/xdg/openbox/autostart
sudo cp /boot/openbox-environment /etc/xdg/openbox/environment
echo "[[ -z \$DISPLAY && \$XDG_VTNR -eq 1 ]] && startx -- -nocursor" >~/.bash_profile
sudo cp /boot/splashscreen.png /etc/
sudo cp /boot/asplashscreen /etc/init.d/asplashscreen
sudo chmod a+x /etc/init.d/asplashscreen
sudo systemctl enable asplashscreen
sudo reboot
