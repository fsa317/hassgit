#!/bin/sh

HASSHOME=/home/homeassistant/.homeassistant

cp $HASSHOME/*.yaml hass/
cp $HASSHOME/config/* hass/config/
cp $HASSHOME/apps/* hass/apps/
cp -r $HASSHOME/www hass/
cp /etc/systemd/system/appdaemon@homeassistant.service systemd/
cp /etc/systemd/system/home-assistant@homeassistant.service systemd/

cp /etc/nginx/sites-enabled/default nginx/

cp ~/key_commands.txt .
