INTERNAL="eDP-1"
DOCK="DP-2-3"

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_mode.dat" ] ; then
  monitor_mode="INTERNAL"
else
  monitor_mode=`cat /tmp/monitor_mode.dat`
fi

if [ $monitor_mode = "DOCK" ]; then
        monitor_mode="INTERNAL"
        xrandr  --output $DOCK --auto --output $INTERNAL --off

elif [ $monitor_mode = "INTERNAL" ]; then
        monitor_mode="DOCK"
        xrandr --output $INTERNAL --off --output $DOCK --auto
fi

echo "${monitor_mode}" > /tmp/monitor_mode.dat
echo "${monitor_mode}"
