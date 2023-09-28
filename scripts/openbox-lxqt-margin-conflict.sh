#!/bin/bash

running=false
while [ "$running" = false ]
do
  if ! pgrep -x "lxqt-panel" > /dev/null
  then
    sleep 2
  else
    sleep 2
    sed -i 's/<top>44/<top>0/g' ~/.config/openbox/lxqt-rc.xml && openbox --reconfigure
    sleep 1
    sed -i 's/<top>0/<top>44/g' ~/.config/openbox/lxqt-rc.xml && openbox --reconfigure
    running=true
  fi
done
