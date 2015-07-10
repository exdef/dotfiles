connectedMain=$(xrandr | grep " connected primary" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
connectedSecond=$(xrandr | grep " connected 1" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
inactiveDisplay=$(xrandr | grep " connected (" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

echo $connectedMain
echo $connectedSecond
echo $inactiveDisplay

xrandr --output $connectedSecond --off
xrandr --output $inactiveDisplay --auto --left-of $connectedMain
