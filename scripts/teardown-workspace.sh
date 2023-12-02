# wmctrl -ic "$(wmctrl -l | grep 'Google Chrome' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Spotify Premium' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Visual Studio Code' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Gmail' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Google Keep' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Discord' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'WhatsApp Web' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Telegram Web' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Telegram' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'X - ' | grep -ohE '0x[^[:space:]]{8}')"
# wmctrl -ic "$(wmctrl -l | grep 'Firefox' | grep -ohE '0x[^[:space:]]{8}')"

processes=$(wmctrl -l)
while [ "$processes" != "" ]
do
  processes=$(wmctrl -l)
  wmctrl -ic "$(wmctrl -l | grep -ohE '0x[^[:space:]]{8}')"
done
