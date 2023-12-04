#if ! pgrep -x "xautolock" > /dev/null
#then
  #killall xautolock
  #xautolock -locker  "xtrlock -b" &
  #sleep 2
  #systemctl suspend
#else
  #sleep 1
  #systemctl suspend
#fi

killall xautolock
sleep 2
xautolock -locker  "xtrlock -b" &
sleep 2
systemctl suspend
