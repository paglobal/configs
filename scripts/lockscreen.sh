#!/bin/bash

#if ! pgrep -x "xautolock" > /dev/null
#then
  #xautolock -locker  "xtrlock -b" &
  #sleep 2
  #xdg-screensaver lock
#else
  #sleep 1
  #xdg-screensaver lock
#fi

killall xautolock
sleep 2
xautolock -locker  "xtrlock -b" &
sleep 2
xdg-screensaver lock
