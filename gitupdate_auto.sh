#!/bin/sh

cd ~/hassgit
./copyfiles.sh

cd ~/hassgit
git add .
git status
git commit -m "auto update"
git push origin master
