. ./.profile
. ./.kshrc

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5
xrandr --dpi 96

#picom --config .local/picom/picom.conf &
xwallpaper --stretch .local/pictures/wallpaper.jpg &
exec dwm
