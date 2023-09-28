#!/bin/bash

# record cursor original position
eval $(xdotool getmouselocation --shell)
# move mouse to bottom right corner of the screen to show color picker panel
xdotool mousemove 1599 899
xdotool click 1
# move cursor to color-picker icon
xdotool mousemove 1496 887
# click on color-picker icon
xdotool click 1
# move cursor back to original position
xdotool mousemove $X $Y
# click on original position
xdotool click 1
# move cursor to recorded colour and highlight it
xdotool mousemove 1511 886
xdotool mousedown 1
xdotool mousemove 1570 886
xdotool mouseup 1
xdotool click 3
xdotool mousemove 1458 764
xdotool click 1
# move cursor back to original position
xdotool mousemove $X $Y
