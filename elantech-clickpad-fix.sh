#!/bin/bash
### BEGIN INIT INFO
# Provides:          elantech-clickpad-fix
# Required-Start:    $remote_fs $syslog $named
# Required-Stop:     $remote_fs $syslog $named
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Clickpad fixing for right and middle button areas
# Description:       It extracts the id of the clickpad, then it enables the system to correctly recognize this clickpad and fix its right and middle click actions
### END INIT INFO

device=`xinput list "ETPS/2 Elantech Touchpad" | grep -o 'id=[0-9]\+' | egrep "[0-9]{1,}" -o`

i=0
while read label min delim max; do
	if [ $i -eq 0 ]; then
		minx=$min
		maxx=$max
	elif [ $i -eq 1 ]; then
		miny=$min
		maxy=$max
		break
	fi

	(( i++ ))
done < <(xinput list "$device" | grep Range)

middleleft=`echo \($maxx - $minx\) / 2 \* 90 / 100 + $minx | bc -l`
middleright=`echo \($maxx - $minx\) / 2 \* 110 / 100 + $minx | bc -l`
left=`echo $middleright + 1 | bc -l`
right=$maxx
height=`echo \($maxy - $miny\) | bc -l`
top=`echo $height \* 0.82 + $miny | bc -l`
bottom=`echo $height \* 2 + $miny | bc -l`

# enable the clickpad
xinput set-prop "$device" "Synaptics ClickPad" 1

# enable right and middle click (drag & drop selection) for the clickpad
xinput set-prop "$device" "Synaptics Soft Button Areas" $left $right $top $bottom $middleleft $middleright $top $bottom