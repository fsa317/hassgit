#!/bin/sh

CODE=`curl --write-out '%{http_code}\n' -o /dev/null --silent  https://frank.apsquared.co/states`
if [ "$CODE" -ne "200" ]
 then
  echo "Site down - $CODE"
  cp /home/homeassistant/.homeassistant/*.log /home/ubuntu/crashlogs/
  systemctl start home-assistant@homeassistant   
 fi


