kitty &
sleep 1
xdotool key v+i+f+m+Return

sleep 1
running=false
while [ "$running" = false ]
do
  if ! pgrep -x "vifm" > /dev/null
  then
    sleep 1
    xdotool key v+i+f+m+Return
  else
    sleep 1
    running=true
  fi
done
