#!/bin/sh

HASSHOME=/home/homeassistant/.homeassistant

cp $HASSHOME/*.yaml hass/
cp $HASSHOME/config/* hass/config/
cp $HASSHOME/apps/* hass/apps/

cp /etc/systemd/system/appdaemon@homeassistant.service systemd/
cp /etc/systemd/system/home-assistant@homeassistant.service systemd/

cp /etc/nginx/sites-enabled/default nginx/

cp ~/key_commands.txt .

cd ~/hassgit
git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master
