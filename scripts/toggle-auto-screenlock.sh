if ! pgrep -x "xautolock" > /dev/null
then
  xautolock -locker  "xtrlock -b" &
  notify-send "TOGGLE AUTO SCREENLOCK - ON" "Auto Screenlock is being turned *ON*..."
else
  killall xautolock
  notify-send "TOGGLE AUTO SCREENLOCK - OFF" "Auto Screenlock is being turned *OFF*..."
fi
